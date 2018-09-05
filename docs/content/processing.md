---
layout: page
title: Constraints Processing System
menu: Processing Constraints
weight: 50
---

# Constraints Processing System

This section briefly overviews how constraints processing works. The system described here follows loosely the CHR specification, and has been in particular heavily influenced by JCHR[^jchr] implementation. The distinctive features are built-in support for logical variables, terms, and pattern matching. Alternative body branches are a deviation from the standard CHR.

### Terms and unification

Constraints processing relies heavily on the use of *terms* as data type. Abstractly speaking, terms are functions of zero or more arguments. Any opaque value captured by a term must be a POJO.

```
  f(g(), h(k()))

  p(val("foo"), q())

  node(name("List"), arg(node(name("Int"), arg())))
```
_(examples of terms)_

The unique feature of terms is that they support unification. Unification of two terms is possible with or without *variables* being used as subterms of either participant, but in the latter case the two terms must be equal.

A term variable ranges over terms. A substitution is a mapping of variables to terms. Unification searches for a substitution $\sigma$, such that for two terms being unified, $f$ and $g$, the following holds: $\sigma f = \sigma g$. For example:

```
  [X -> g()] unifies f(X, h(X)) and f(g(), h(g()))
  
  [X -> Z, Y -> g(X)] unifies f(X, g(X)) and f(Z, Y)
```

The latter unifier is the most general one, since other substitutions that also unify the two terms are all subsumed by it:

```
  [X -> g(X), Y -> g(g(X)), Z -> g(X)]
  [X -> g(g(X)), Y -> g(g(g(X))), Z -> g(g(X))]
```  
  
Unification may fail because the arity or the symbols of the two terms mismatch. Also, since *infinite terms* are not supported, unification may fail because of *occurs check*, which means a variable can’t be unified with a term, that itself or through its descendants has this variable as one of its arguments.

```
  f(X, h(X)) and f(g(), h(k())) can't be unified because g != k
  f(X, g(X)) and f(g(X), g(h()) can't be unified because of 
                                failed occurs check
```

Pattern matching is possible when variables are only used by one of the terms, which then serves as a pattern. To test if a pattern matches a given term can be implemented by a linear time algorithm, whereas full unification is slightly more complicated.

### Logical variables

Logical variables serve to identify an object that is to be determined in the future. They are *monotonic*, in the sense that once a variable is assigned a particular value, it stays assigned to that value. In addition, they implement a *union-find data structure*[^uf] a.k.a. “disjoint set”. Any free logical variable can be assigned a class by setting its “parent” field to point to the class’s representative. All logical variables belonging to the same class are treated as exactly one variable. Logical variables notify observers when they become ground and when their *parent* (class representative) changes.

```
  val X = Logical("X")
  val Y = Logical("Y")

  assertTrue(X.isFree() && y.isFree())

  X.set("foo")
  assertTrue(X.value() == "foo"))

  Y.union(X)

  assertTrue(Y.find() == X)
  assertTrue(Y.find().value() == "foo")
```
_(example of using logical variables)_

A term variable can also be a logical variable, so that when two terms are unified, the substitution already has the calculated value for that variable.

```
  val X = Logical("X")
  val t1 = term("f", var(X), term("g", var(X)))
  val t2 = term("f", term("h"), term("g", term("h")))

  assertTrue(X.isFree())

  val substitution = t1.unify(t2)

  assertTrue(substitution.isValid())
  assertTrue(X.find().value() == term("h"))
```

### Constraints and predicates

Constraints are, simply put, tuples with fixed arity and a symbol attached. In some respects constraints correspond to rows in a database table. Logically they can be understood as facts, relations, or propositions. An argument to a constraint can be a term, a logical variable, or any POJO, except another constraint.

Constraints are activated from a production’s body and stay active until there are no possible matches with any of productions’s heads. If a constraint is not discarded by a production, it is stored for future use. Stored constraints represent the program’s state.

The following figure shows the lifecycle of a constraint. The big rounded square in the middle contains the states, in which a constraint is considered “alive”: it can be either “active” or “stored”, but available for filling up vacant positions in a production’s head. A stored constraint can be reactivated if one of its arguments changes, such as when a logical variable becomes ground.

A successfully fired production, which declares one or more of constraints in its head to be “replaced”, causes these to be terminated.

![](img/constraint-lifecycle.svg)  
_(lifecycle of a constraint)_

#### Predicates

Whereas a constraint serves to embody a fact or a relation among objects simply by being a witness of such a fact or a relation, a *predicate*[^pred] helps to establish a fact or a relation, or check if one exists, by means of executing a procedure. Same is true for facts and propositions.

Predicates must implement ask/tell protocol. If a predicate is invoked from production’s guard clause, it represents a query (ask), and if it is invoked from the body, it is an assertion (tell).

***Example of a predicate***

***Example of ask/tell***

***Example of failed predicate***

### Constraint productions

Constraints program is built from productions. Each production has three parts: the part that is responsible for triggering the production, called “head”, the part that checks for pre-conditions, called “guard”, and the part that is evaluated when production is fired, which is called “body”.

#### Head

Head is a set of constraints which are all required to be alive in order for production to fire. This set is divided into “kept” part and “replaced” part, the latter containing constraints that are to be discarded as soon as the production fires.

A production is triggered when there are constraint occurrences matching all constraints specified in production’s head. These occurrences include the active constraint, plus any additional matching constraints that are currently alive, filling the other vacant slots.

There is some terminology inherited from CHR that can be useful when discussing the kinds of productions. In the following table `E` and `E'` are the set of constraints in production’s head, `C` is a conjunction of predicates serving as guard, and `G` is a conjunction of predicates and constraints in production’s body.

| “kept” set `E` | “replaced” set `E’` | Notation | Designation |
|:--|:--|:--:|:--|
| empty | non-empty | `E’ <=> C | G` | Simplification |
| non-empty | empty | `E => C | G` | Propagation |
| non-empty | non-empty | `E \ E’ <=> C | G` | Simpagation |

Essentially, a production with only “kept” constraints in its head is a “propagation”, the one with only “replaced” constraints is a “simplification”, and the one that has both “kept” and “replaced” constraints is a combination of the two.

In addition, we define a fourth kind of production, an “auto” production with an empty head. As the name implies, such production is triggered automatically on start of constraints program execution.

#### Guard

Guard is a conjunction of predicates, which are checked before a production is fired. Predicates in a guard are *queried*.

#### Body

Body is a conjunction of predicates and constraint activations. When triggered, each body clause is evaluated in order, with predicates serving as *assertions* and constraint activations producing new constraints. Each newly activated constraint is checked against any productions that can be fired, and so on.

### Triggering a production

The procedure `processActive()` accepts a constraint occurrence that has been activated and proceeds as follows until this constraint is either discarded or suspended (moved to store). This procedure calls itself recursively on every constraint activation, so there might be many active constraints at any given moment, organised into a stack, which matches exactly the call stack of `processActive()`. 

First, the procedure searches for “relevant” productions that declare a constraint in their heads matching the active constraint occurrence currently being processed. These productions form a FIFO queue, corresponding to the order of productions within a handler.

For each “relevant” production, which at least partially matches the currently active constraint occurrence, the vacant slots in production’s head are filled with matching constraints from the store, which were previously suspended. Once a full match with production’s head is established, the guard is checked.

A production together with a set of constraints matching the ones declared by its head, one of which must be the active constraint, is considered to have been triggered after the guard check returns true. Otherwise this production is skipped. 

After a production is triggered, first the constraints marked by production’s head as *replaced* are deactivated, and the logical variables defined by patterns are assigned appropriate values by asserting equality through *equals* predicate. Then the constraints and predicates defined in production’s body are activated one-by-one. Every activation of a constraint is a recursive call to `processActive()`. 

If after having processed all items in production’s body the constraint occurrence currently being processed is still “alive”, meaning it has not being discarded during one of the recursive calls to this procedure, the process of matching and triggering productions continues with the next production from the queue.

When there are no more productions that can be matched, or the active constraint has been discarded, the procedure `processActive()` finishes. If, when the procedure is finished the active constraint is still “alive”, it is suspended and moved to the store. 

***Alternative body***

#### Example of executing a program

Consider the following example of the Euclid algorithm taken from the CHR book[^chr]:

```
gcd(0) <=> true
gcd(N) \ gcd(M) <=> 0 < N, N =< M | gcd(M - N)
```

To illustrate the idea of using *stored* constraints to fill vacant slots when matching a production, let’s see what happens when this program is evaluated with 4 and 6 as arguments to `gcd/1` constraint. 

| Constraints store | Active constraint | Match | Result |
|:--|:--|:--|:--|
| `{}` | `gcd(4)` | no productions matched | suspend `gcd(4)` |

On activating `gcd(4)` there are no matching productions, so the constraint is suspended.

| Constraints store | Active constraint | Match | Result |
|:--|:--|:--|:--|
| `{gcd(4)}` | `gcd(6)` | `gcd(6) \ gcd(4)` | guard condition fails |
| `{gcd(4)}` | `gcd(6)` | `gcd(4) \ gcd(6)` | discard `gcd(6)`, activate `gcd(2)` |

Notice how both combinations of `gcd(4)` and `gcd(6)` constraints are tested. In general, if there are $n$ usages of constraint `foo` in a given production’s head, there will be $n!$ potential matches to be evaluated, so that all permutations are covered.   

The last activation above is a recursive call to `processActive()`, so the cycle repeats. The active constraint has been deactivated, but contents of the store is unchanged.

| Constraints store | Active constraint | Match | Result |
|:--|:--|:--|:--|
| `{gcd(4)}` | `gcd(2)` | `gcd(2) \ gcd(4)` | discard `gcd(4)`, activate `gcd(0)` |
| `{}` | `gcd(0)` | `gcd(0)` | discard `gcd(0)` |

There are no more productions to match for `gcd(2)` as the active constraint, so it is suspended. But the constraint `gcd(6)` has been already discarded, so there are no more active constraints and the process stops. Here is the full trace of this program execution. 

| Constraints store | Active constraint | Match | Result |
|:--|:--|:--|:--|
| `{}` | `gcd(4)` | no productions matched | suspend `gcd(4)` |
| `{gcd(4)}` | `gcd(6)` | `gcd(6) \ gcd(4)` | guard condition fails |
| `{gcd(4)}` | `gcd(6)` | `gcd(4) \ gcd(6)` | discard `gcd(6)`, activate `gcd(2)` |
| `{gcd(4)}` | `gcd(2)` | `gcd(2) \ gcd(4)` | discard `gcd(4)`, activate `gcd(0)` |
| `{}` | `gcd(0)` | `gcd(0)` | discard `gcd(0)` |
| `{}` | `gcd(2)` | no productions matched | suspend `gcd(2)` |

After the program has finished, the constraint store consists of only one constraint `gcd(2)`, which is the *GCD* of 4 and 6.

## Semantics of constraints program

The paper by Betz and Frühwirth[^lls] gives an excellent treatise on semantics of CHR using *linear logic*. Since this constraints processing system is based on CHR, this semantics is valid for it also.

Linear logic abandons boolean values and replaces them with consumable resources. Consequently, it introduces its own set of connectives, from which we are interested only in the following: $!,\otimes,\multimap$. The *multiplicative conjunction* $\otimes$ combines two or more resources that are all available at the same time. The symbol $!$ (*of course*) marks a resource that can’t be exhausted. And instead of implication $\rightarrow$ one uses $\multimap$ symbol, the meaning of which is a transformation of one resource to another. The formula $A \multimap B$ is read: “consuming $A$, produce $B$ ”, that is given a resource $A$, we can assume $B$, but $A$ can no longer be used.

Simplification is represented by a proposition stating that from valid guard condition $C$, which can be reused, we can imply the following: given the set of constraints $E$ matching the production’s left-hand side, we can find such substitution $\sigma$, such that we can now assume the set of constraints produced from production’s body: $\sigma G$. All free variables in this proposition are universally quantified and the proposition itself can be reused infinitely.

\\[  (E \Leftrightarrow C | G)^L :=
         !\forall((!C^L) \multimap
             (E^L \multimap \exists\bar{y}G^L)) \\]

Propagation is different from simplification in that the set of constraints $E$, which triggered the production, is made available together with the constraints produced by the body, so the constraints in $E$ are not “consumed”.

\\[  (E \Rightarrow C | G)^L :=
         !\forall((!C^L) \multimap
             (E^L \multimap E^L\otimes\exists\bar{y}G^L)) \\]


[^jchr]: K.U.Leuven JCHR System [https://dtai.cs.kuleuven.be/CHR/JCHR/](https://dtai.cs.kuleuven.be/CHR/JCHR/)
[^uf]: [https://en.wikipedia.org/wiki/Disjoint-set_data_structure](https://en.wikipedia.org/wiki/Disjoint-set_data_structure)
[^pred]: a.k.a. “built-in constraints” in CHR literature
[^chr]: Constraint Handling Rules [http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html](http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html)
[^lls]: Betz, H. and Frühwirth, T., 2005, October. A linear-logic semantics for constraint handling rules. In International Conference on Principles and Practice of Constraint Programming (pp. 137-151). Springer, Berlin, Heidelberg.
