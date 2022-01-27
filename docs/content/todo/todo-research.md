# Areas of possible research

### Overall performance of Reactor constraints processing library

There are a few points that are critical for performance of Reactor library. 

1. [x] Indexing of productions by constraint symbol and arguments;
2. [x] Dealing with factorial expansion when searching for a match;
3. [x] Matching of constraint occurrence with production’s constraint;
4. [x] Unification.

### Properties of user-defined typesystem

What properties can be asserted of a constraints production system?

1. How to check if the production system is decidable, what productions are questionable and/or conflicting. 
2. How to check if constraints program is terminating, what assertions can be made about a constraints program execution time. 

### Missing features that may affect constraints processing 

A few features are not implemented, need to understand their impact on the semantics of constraints processing. 

1. Logical variables as indirect arguments to a constraint should reactivate the constraint on update (value/parent).
2. The state of logical variables is not restored on frame dropping, which is what happens on switching to alternative body.

Implementing these features must not affect the performance. 


