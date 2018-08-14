---
layout: page
title: Constraints Reactor
parent: content/processing.md
weight: 55
---
# Constraints Reactor

 ![](img/errorDialog.png) **TODO details of constraints processing implementation**

Constraints reactor is a small library written in Kotlin and Java, which implements the extended semantics of constraints processing. Its main features are:
    
- native support for terms and unification
- observable logical variables
- fast lookup of matching production from constraint’s arguments
- Rete-like algorithm for finding potential matches
    
## Implementation notes

Unification is implemented according to a «near-constant time» algorithm[^uni]. 

A trie[^trie] (a prefix tree) on flattened terms is used for indexing productions by value. 

Persistent structures used for implementing internal state, which are useful for tracking and restoring the state of the constraints program.

## Open questions

### Nested logical variables

Logical variables serving as constraint arguments trigger reactivation of such constraints on any change, such as value bound or parent changed. Might be a good idea to also trigger reactivation on changed variable contained in a term, which serves as a constraint argument.

### Restoring the state of logical variables

One of the extensions supported by this implementation is the *partial rollback*, which allows to declare alternative branches in a production’s body. The implementation is able to restore the state of constraints that is valid for the frame corresponding activation of the body, except for the state of logical variables that may have been changed. This, too, might be worth implementing.

[^uni]: Baader, Franz, and Wayne Snyder. "Unification Theory." Handbook of automated reasoning 1 (2001): 445-532.
[^trie]: Alan Robinson and Andrei Voronkov (Eds.). 2001. Handbook of Automated Reasoning. Elsevier Sci. Pub. B. V., Amsterdam, The Netherlands, The Netherlands. Chapter 26.