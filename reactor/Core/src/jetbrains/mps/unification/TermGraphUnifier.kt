/*
 * Copyright 2014-2017 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.mps.unification

import gnu.trove.list.array.TIntArrayList
import gnu.trove.map.hash.TIntIntHashMap
import gnu.trove.map.hash.TIntObjectHashMap
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.unification.Substitution.FailureCause.CYCLE_DETECTED
import jetbrains.mps.unification.Substitution.FailureCause.SYMBOL_CLASH
import jetbrains.mps.unification.Term.Kind.*
import jetbrains.mps.unification.Unification.SuccessfulSubstitution
import jetbrains.mps.unification.Unification.failedSubstitution
import java.util.*


/**
 * This is an implementation of the "near linear" algorithm for solving syntactic unification
 * as described in the paper linked below and also in the textbook of the same author.<sup>1</sup> <sup>2</sup>
 *
 * No recursive terms are allowed as a solution, meaning the "occurs check" for variables
 * is performed on the input. Variables can also be passed by reference without altering the
 * intuitive behaviour of the algorithm.
 *
 * The "REF" terms are an extension of the term algebra used in [1]. For the purposes of this algorithm, the "REF"
 * terms are treated as pre-bound variables.
 *
 * If successful, the returned {@link Substitution} contains
 * the variable bindings.
 * <p/>
 * The variables are sorted using {@link java.lang.Comparable} to ensure uniqueness of bindings
 * whereas the substituted term is also a variable.
 * <p/>
 * <blockquote>
 *     1. <i>Baader, Franz, and Wayne Snyder. "Unification Theory." Handbook of automated reasoning 1 (2001): 445-532.</i>
 *     2. <i>Baader, Franz, and Tobias Nipkow. Term rewriting and all that. Cambridge University Press, 1999.</i>
 * </blockquote>
 *
 * @author Fedor Isakov
 */

typealias IntList = TIntArrayList
typealias IntIntHashMap = TIntIntHashMap
typealias IntAnyHashMap<V> = TIntObjectHashMap<V>

class TermGraphUnifier(private val wrapper: TermWrapper = TermWrapper.ID,
                       private val trivialBindings: Boolean = false) {

    constructor(trivialBindings: Boolean) : this(TermWrapper.ID, trivialBindings) {}

    companion object {
        val EMPTY_LIST = TIntArrayList.wrap(kotlin.IntArray(0))
    }

    fun unify(a: Term, b: Term): Substitution {
        return if (unifClosure(toInt(a), toInt(b))) {
            findSolution(a, Unification.EMPTY_SUBSTITUTION)

        } else {
            failedSubstitution(failureCause, *failureDetails)
        }
    }

    private fun findSolution(term: Term, defSubs: Substitution) : Substitution {
        var subs = defSubs

        // use the "shortcut" solution for terms that have not been internalized,
        // meaning such terms have not gone through a unification, thus have not
        // been assigned either class or schema
        if (!isInternalized(term)) {
            if (term.`is`(FUN)) {
                for (c in term.arguments()) {
                    subs = findSolution(c, subs)
                    if (!subs.isSuccessful) break
                }
            } else {
                // VAR or REF has to be processed recursively to account for
                // possible cycles
                toInt(term)
            }
        }
        
        if (isInternalized(term)) {
            val (_, z) = findSchema(toInt(term))
            val vars = intVars[find(z)]

            if (isAcyclic(z)) { return defSubs } // not part of a cycle
            if (isVisited(z)) { return failedSubstitution(CYCLE_DETECTED) } // there exists a cycle

            if (origin[z].`is`(FUN)) {
                setVisited(z)
                for (c in origin[z].arguments()) {
                    subs = findSolution(c, subs)
                    if (!subs.isSuccessful) break
                }
                clearVisited(z)
            }

            if (subs.isSuccessful) {
                setAcyclic(z)

                // avoid unnecessary instatiation
                val success = if (subs is SuccessfulSubstitution) subs as SuccessfulSubstitution
                else SuccessfulSubstitution(subs)

                if (vars != null) {
                    for (v in vars) {
                        if (trivialBindings || v != z) {
                            // Keep the order of variables within a binding
                            if (origin[z].`is`(VAR) && origin[z].compareTo(origin[v]) < 0) {
                                success.addBinding(fromInner(z), fromInner(v))

                            } else {
                                success.addBinding(fromInner(v), fromInner(z))
                            }
                        }
                    }
                }

                subs = success
            }
        }

        return subs
    }


    private fun unifClosure(a: Int, b: Int): Boolean {
        if (find(a) == find(b)) { return true }

        val (s, zs) = findSchema(a)
        val (t, zt) = findSchema(b)

        // a VAR always matches another term
        if (origin[zs].`is`(VAR) || origin[zt].`is`(VAR)) {
            union(s, t)
            return true
        }

        if (origin[zs].`is`(FUN) && origin[zt].`is`(FUN)) {
            if (!origin[zs].symbol().eq(origin[zt].symbol())) {
                this.failureCause = SYMBOL_CLASH
                this.failureDetails = arrayOf(origin[zs].symbol(), origin[zt].symbol())
                return false
            }
            // union REF terms only if they are the same term
            if (origin[s].`is`(REF) == origin[t].`is`(REF)) {
                union(s, t)
            }

            val zsit = origin[zs].arguments().iterator()
            val ztit = origin[zt].arguments().iterator()
            while (zsit.hasNext() && ztit.hasNext()) {
                if (!unifClosure(toInt(zsit.next()), toInt(ztit.next()))) {
                    return false // arguments mismatch
                }
            }

            // fail if different arguments count
            return zsit.hasNext() == ztit.hasNext()

        }  else {
            // something's wrong with the input
            throw IllegalStateException("invalid input")
        }
    }

    private fun union(a: Int, b: Int): Int {
        var s = find(a)
        var t = find(b)

        if (s == t) { return s }

        val ssize = size(s)
        val tsize = size(t)

        // keep the order: the smaller class gets inserted under the bigger one
        if (ssize < tsize) {
            val tmp  = t
            t = s
            s = tmp

        } else if (ssize == tsize && origin[s].`is`(VAR) && origin[t].`is`(VAR)) {
            // ensure proper order of variables in the substitution
            if (origin[t].compareTo(origin[s]) < 0) {
                val tmp  = t
                t = s
                s = tmp
            }
        }

        setSize(s, ssize + tsize)
        prependVars(s, intVars[t])
        setKlass(t, s)

        // copy the schema
        val zs = schema(s)
        val zt = schema(t)
        if (origin[zs].`is`(REF)) {
            setSchema(s, zt)

        } else if (origin[zs].`is`(VAR) && (origin[zt].`is`(FUN))) {
            setSchema(s, zt)
        }

        return s
    }


    private fun find(t: Int): Int  {
        var repr = klass(t)
        if (repr == t) { return repr }

        if (repr != klass(repr)) {
            // find representative and compress paths
            while (repr != klass(repr)) {
                val tmp = repr
                repr = klass(repr)
                setKlass(tmp, repr)
            }
        }

        return repr
    }

    private fun prependVars(t: Int, vars: TIntArrayList?) {
        if (vars?.isEmpty ?: true) { return }

        val newVars = IntList(intVars[t] ?: EMPTY_LIST)
        newVars.addAll(vars)
        intVars.put (t, newVars)
    }


    private fun findSchema(s: Int): Pair<Int, Int> {
        var t = find(s)
        var zt = schema(t)
        while (origin[zt].`is`(REF)) {
            t = union(t, getRef(zt))
            zt = schema(t)
        }
        return t to zt
    }

    private fun getRef(zs: Int): Int =
        if (origin[zs].`is`(REF))
            toInt(origin[zs].get())
        else
            zs

    private fun toInt(term: Term): Int {
        val key = intKey(term)
        return if (terms.containsKey(key)) {
            terms[key]

        } else {
            val wrapped = wrapper.wrap(term)
            val next = origin.size
            origin.add(wrapped)
            terms.put(key, next)
            initData(next)
            if (wrapped.`is`(VAR)) {
                intVars.put(next, IntList(intArrayOf(next)))
            }

            next
        }
    }

    private fun isInternalized(term: Term): Boolean = terms.containsKey(intKey(term))

    private fun intKey(term: Term) =
        // Variables with matching symbols are all treated as a single term.
        System.identityHashCode(if (term.`is`(VAR)) idSymbol(term.symbol()) else term)

    private fun fromInner(t: Int): Term {
        return wrapper.unwrap(origin[t])
    }

    private fun idSymbol(symbol: Any): Any =
        when (symbol) {
            is String       -> symbol.intern()
            is Logical<*>   -> symbol.findRoot()
            else            -> symbol
        }

    private fun Any?.eq (that: Any?): Boolean {
        return if (this == null) that == null else this.equals(that)
    }

    private fun initData(nextId: Int) {
        // initialize internal structures
        intSchema.add(nextId)
        intClass.add(nextId)
        intSize.add(1)
        intAcyclic.add(0)
        intVisited.add(0)
    }

    private fun schema(t: Int): Int = intSchema[t]

    private fun setSchema(t: Int, schema: Int) { intSchema[t] = schema }

    private fun klass(t: Int): Int = intClass[t]

    private fun setKlass(t: Int, klass: Int) { intClass[t] = klass }

    private fun size(t: Int): Int = intSize[t]

    private fun setSize(t: Int, size: Int) { intSize[t] = size }

    private fun isAcyclic(t: Int): Boolean = (intAcyclic[t]) != 0

    private fun setAcyclic(t: Int) { intAcyclic[t] = 1 }

    private fun isVisited(t: Int): Boolean = intVisited[t] != 0

    private fun setVisited(t: Int) { intVisited[t] = 1 }

    private fun clearVisited(t: Int) { intVisited[t] = 0 }

    private var failureCause: Substitution.FailureCause = Substitution.FailureCause.UKNOWN
    private var failureDetails = emptyArray<Any?>()

    private val origin = ArrayList<Term>()
    private val terms = IntIntHashMap()
    private val intVars = IntAnyHashMap<IntList?>()
    private val intClass = IntList()
    private val intSchema = IntList()
    private val intSize = IntList()
    private val intAcyclic = IntList()
    private val intVisited = IntList()
}

