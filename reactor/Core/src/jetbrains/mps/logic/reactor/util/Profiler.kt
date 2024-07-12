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

package jetbrains.mps.logic.reactor.util

import java.util.*

/**
 * @author Fedor Isakov
 */

class Profiler {

    companion object {
        private var lastTokenId = 0
    }

    private val tokenStack = LinkedList<Token>()

    init {
        tokenStack.push(Token("_", ++lastTokenId))
    }

    fun start(name: String): Token {
        val tok = Token(name, ++lastTokenId)
        tokenStack.peek().addChild(tok)
        tokenStack.push(tok)
        return tok
    }

    fun end(tok: Token? = null) {
        val pop = tokenStack.pop()
        if (tok != null && pop !== tok) throw IllegalStateException("wrong token")
        pop.end()
    }

    // name -> (duration, freq)
    fun rawProfilingData(): Map<String, DurFreq> {
        val name2duration = HashMap<String, DurFreq>(1000)
        tokenStack.peek().mergeDurations(name2duration)
        return name2duration
    }

    fun formattedData(): Map<String, String> {
        val name2data = rawProfilingData().entries.toMutableList()
        val sum = name2data.asSequence().fold(0L) { acc, e -> acc + millis(e.value.dur) }
        var toReport = (sum * 0.98).toLong()
        // sort in-pace descending
        Collections.sort(name2data, Comparator.comparingLong({it.value.dur})) 
        return name2data
            .asSequence()
            .takeWhile { (_, data) -> toReport > 0 && millis(data.dur) > 0 }
            .map { (name, data) ->
                toReport -= millis(data.dur)

                val parentName2Dur = data.parentDurs.entries.toMutableList()
                val parentsTotal = parentName2Dur.fold(0L) { acc, e -> acc + millis(e.value) }
                var parentsToReport = (parentsTotal * 0.98).toLong()

                //sort in-place descending
                Collections.sort(parentName2Dur, Comparator.comparingLong({it.value}))
                val sb = StringBuilder("[time: %1\$Ts.%1\$TLs count: %2\$d]".format(millis(data.dur), data.freq))
                parentName2Dur
                    .asSequence()
                    .takeWhile { (_, dur) -> parentsToReport > 0 && millis(dur) > 0 }
                    .forEach { (parentName, dur) ->
                        parentsToReport -= millis(dur)

                        sb.append("\n    \\-- ${parentName}")
                            .append(" [time: %1\$Ts.%1\$TLs".format(millis(dur)))
                            .append(" count: %1\$d]".format(data.parentFreqs[parentName] ?: 0)) }

                name to sb.toString()
            }.toMap()
    }

    fun millis(nanos: Long): Long = nanos / 1000000L

    fun clear() {
        tokenStack.clear()
    }

}

class Token(val name: String, val id: Int) {

    val startNano: Long = System.nanoTime()

    var endNano: Long? = null
        private set

    private val children = ArrayList<Token>()

    fun addChild(ch: Token) {
        children.add(ch)
    }

    fun end() {
        if (endNano != null) throw IllegalStateException("already ended")
        this.endNano = System.nanoTime()
    }

    private fun duration(): Long? = endNano?.minus(startNano)

    private fun ownDuration(): Long? = duration()?.minus(children.map { ch -> ch.duration() ?: 0 }.sum())

    fun mergeDurations(name2durFreq: MutableMap<String, DurFreq>) {
        for (ch in children) {
            ch.mergeDurations(name2durFreq)
        }
        for (ch in children) {
            val chDurFreq = name2durFreq.getOrPut(ch.name) { DurFreq() }
            val chDuration = ch.ownDuration()
            chDuration?.let { dur -> chDurFreq.dur += dur }
            chDurFreq.freq += 1
            chDurFreq.parentFreqs[name] = 1 + chDurFreq.parentFreqs.getOrElse(name) { 0 }
            if (chDuration != null) {
                chDurFreq.parentDurs[name] = chDuration + chDurFreq.parentDurs.getOrElse(name) { 0L }
            }
        }
    }

}

class DurFreq {
    var dur: Long = 0L
    var freq: Int = 0
    val parentFreqs: MutableMap<String, Int> = HashMap()
    val parentDurs: MutableMap<String, Long> = HashMap()
}

inline fun Profiler?.profile(name: String, proc: () -> Unit): Unit {
    val tok = this?.start(name)
    try {
        proc()
    }
    finally {
        this?.end(tok)
    }
}

inline fun <R> Profiler?.profile(name: String, function: () -> R): R {
    val tok = this?.start(name)
    try {
        return function()
    }
    finally {
        this?.end(tok)
    }
}
