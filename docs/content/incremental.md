---
layout: page
title: Incremental Algorithm
menu: false
---

# Incremental Algorithm

*Author: Grigorii Kirgizov (gkirgizov at gmail.com)*


### Primary Notions

The task of incremental algorithm is to recompute relevant constraint occurrences, that represent node types (as `typeOf`) or some other property of the node (as in definite assignment analysis). To recompute them it's enough to recompute rules that produced them. Algorithm assumes that whenever the node changes, its type can change and so must be recomputed. At engine level node change maps to the corresponding rule update. Rule update leads to recomputation of the rule and all its dependent occurrences.


#### Algorithm Input & Output

The input of incremental algorithm is the set of changed rules: added, removed, and updated. An update rule is reduced to a removed and added rule. Additionally, algorithm requires knowledge of some underlying typesystems rules to factor out irrelevant details of typesystems rules and operate only on relevant rules. That's where notions of *principal rules* & *principal occurrences* are introduced. They are specified by *Incremental Specification* that carries this static information about the typesystem and is passed to the engine from MPS.

The main output of the algorithm is, of course, occurrences representing types, and another is program feedback, delivered thrugh separate channel. There's also output required for incremental pruning of old types and old feedback. Crucial point is that only the engine has complete information over program state. That's why only the engine is able to reliably determine which old output (types & feedback) becomes invalid. That's the purpose behind collecting and returning *invalid feedback* & *invalid rule tags* as part of program evaluation result.

*Invalid feedback* is a set of keys uniquely identifying feedbacks. Currently it's represented as identity of a Rule match, because feedback is uniquely identified by a specific match where it was produced. So if match is invalidated by incremental algorithm, then its feedback should be cleared too.
*Invalid rule tags* serve as keys for identifying nodes with invalid types. Rule tag includes node identity, so there's correspondance from rules to nodes. Algorithm assumes, that if some of the rules for a node was invalidated, then the node type must be cleared too.


#### Principal Constraints & Principal Rules

Coderules programs for typechecking have a more restricted structure than general-purpose Coderules programs (as Coderules allows Turing-complete programs). Incremental algorithm strongly relies on this, as incremental execution of general-purpose program is a hard problem. To make it explicit, algorithm introduces notions of *principal rules* & *principal constraints/occurrences*. *Principal* are heuristic definitions of rules & constraints relevant for incremental algorithm.

**Principal constraints** are those that include *node* as one of the arguments, e.g. `typeOf(x, IntType)` where `x` is a node of type `int`. They usually represent important facts about nodes, such as type or some other property, crucial for typechecking (or another static analysis). Notion of *principal constraints* also includes constraints with zero or one arguments activated at the start of the program in query rules, e.g. `checkAll/0`, `importDecls/0` or `recoverAll/1` for BL. The restrictiton on a number of arguments as a heuristic: constraints that have 2 or more arguments usually represent some relations between types and are not used at program start (as `convertsTo/2` is used in some queries, but shouldn't be evaluated incrementally). In contrast, zero-argument constraints are usually used to start the program, while single-argument constraints in queries can be used for passing some additional input to the program (such as with `recoverAll/1`).

**Principal rules** are simply rules that operate on principal constraints: activate or match on them. But there's one restrriction: to be considered *principal* the rule head can match *only* on principal constraints (or have empty head).

Why they are introduced in this way?

For following discussion it's useful to note that typechecking program consists of:
* Rules that somehow compute or check node types. Usually they're node-specific (with not-null origin).
* General-purpose rules that compute some relations between types (e.g. `convertsTo` in BL types) or some other helper procedures. Usually such rules have null origin and match on non-principal occurrences.
Principal rules are defined in such way so to subsume the first category and exclude the second.

Typechecking program evaluation commonly proceeds in the following order:
1. initial principal constraints are activated (like `main/0` or `checkAll/0`);
2. some principal rule matches on principal constraints;
3. it computes or checks some relations on types by activating the general-purpose rules (such as for `covertsTo/2` relation);
4. after this it produces computed or checked type in the form of principal constraint.
Steps 2-4 then repeat for another node.

From this outline we can see that general-purpose rules are *always* called as a consequence of *some principal rule*. It so happens that processing of these general-purpose rules contains most of the logic that's hard or impossible to execute incrementally (e.g. they freely discard constraints, implement recursive algorithms, heavily employ unification of logical terms, which is monotonic and hard for incrementality, etc). So if we factor out the always consequent calls to auxiliary general-purpose constraints & rules, we can mucch more clearly see the simpler structure behind typechecking, determined precisely by principal rules and dependencies between them. That's the purpose behind introducing notion of principal constraints & rules. Incremental algorithm factors out all complex and, in a sense, irrelevant implementation details, and operates on the granularity of principal rules & constraints.


#### Notes for Typesystem Designer

* Principal constraints must include node in their signature; not wrap it inside terms.

    If a `typeOf(Node: node<>, Type: term)` constraint would be `typeOf(wrap(Node): term, Type: term)` then `typeOf` won't be recognized as principal and incremental typechecking will probably fail.

* Any class that can be used as an argument of principal constraint *must have stable hash*, meaning it shouldn't change on changes irrelevant for type rule.

    This contract follows from the way how program diff is computed. Finding program difference strongly relies on computing *rule hash* that's aimed at capturing *relevant* changes to a Rule. Main example of relevant changes is a change to origin node, that is used in constraint arguments of Rule Template. Then, clearly, Rule must be regenerated and its results can change, influencing typechecking. On the other hand, Rule hash shouldn't change on irrelevant changes to its RuleBuilder. For example, if some helper class is used as principal constraint argument, it must avoid default identity hashcode implementation.


### Data Structures

There're 2 core data structures that are manipulated by incremental algorithm: Journal & Dispatcher. There's also a notion of Justified entity that implements CHR justfications required for dependency tracking.


#### Justifications & Justified Entities

The prerequisite of any incremental algorithm is the ability to track the type dependencies through rules and constraints. For this the core CHR semantics is extended with *justifications* ([JCHR](https://arxiv.org/abs/1706.07946)), which allow to query, whether a constraint occurrence depends (directly or transitively) on a rule match and vice versa.

An entity that carries justifications is called a *Justified* entity. Each Justified entity provides an *evidence*, which is essentially a logical id, not guaranteed to be unique. Occurrences, Occurrence Chunks & Match Chunks are Justified entities. Justifications of Match Chunk is simply a union of justifications of its head occurrences. Each new Chunk acquires new Evidence, so principal Justified entities have unique logical ids in the scope of one Journal, passed and updated between sequence of incremental sessions.


#### Incremental Sessions

Incrermental session involves addition & removal of some set of rules and outputs an incremental update. It consists from:
* Set of new occurrences (e.g. types of new nodes or recomputed types).
* Set of invalid occurrences (e.g. types of removed nodes or old versions of updated types).
* Set of secondary invalid outputs (new and invalid program feedback).

Journal is one of the main data structures preserved between incremental sessions. Incremental session starts with a Journal state from previous session. If there's no Journal from previous session, then Journal is initially empty and incremental algorithm needs to take no steps, so evaluation initially proceeds non-incrementally.


#### Journal & Chunks

*Journal* is the main data structure which incremental algorithm operates on. It represents the evaluation log of the program with irrelevant details omitted. It is a list of the so-called *Chunks*. **Chunk** is defined as data structure that corresponds to a match of principal rule or an activation of principal occurrence. Both of those can be commonly called as *principal events*.

All activations of non-principal occurrences that happen between principal events are logged inside the Chunk, while all matches of non-principal rules are omitted from Journal. They're logged for the purposes of having complete information about occurrence store and program logical state (i.e. state of logical variables used as occurrence args). Chunk is *Justified* entity, so Journal properly tracks dependencies between principal rules and principal occurrences.

It's useful to distinguish Chunks from different sessions, so the Chunks from previous session are called *old*, while those added during the current session are called *new*. 

To optimize updates to Journal during traversal it's implemented as a linked list. But certain operations require unrestricted access to old parts of the Journal, so *Journal Index* is introduced to provide it. It is built once at the beginning of the session and so augments advantages of the linked Journal, allowing constant time access to old Chunks.


#### Journal Cursor & Notion of Time

Journal is operated mainly through *cursor*, that provides traversal, addition and removal of Chunks. Journal logging of match & activation events, which is essentially addition of Chunks, happens at the cursor too.

Cursor introduces several crucial for the algorithm notions. Currernt position of the cursor in Journal defines *current time*. The preceding part of the Journal is then called *past* and all Chunks in it are correspondingly called *past Chunks*. Similarly, the Journal part after the cursor is called *future* with *future Chunks*. Cursor manipulates state of occurrences, so that it corresponds to the *current time*. Future occurrences are always not alive and not stored (`occurrence is future => !occurrence.alive & !occurrence.stored`), while the state of the past occurrences is such as if the program was evaluated up to the cursor.

Incremental algorithm assumes that evaluation order of rules is important, and so adheres to it while modifying Journal. In more formal terms, it is assumed that typechecking programs are not *confluent* even on the level of principal rules & constraints. Notion of *confluence* is defined in formal CHR semantics and means that evaluation order of the rules is irrelevant for the program result.

A trivial example of non-confluence of principal occurrences is activation order of `checkAll` and `recoverAll`, where `checkAll` can only be activated before `recoverAll` to yield any program results at all. Implemented typesystems (e.g. BL) also have enough non-trivial examples of non-confluent principal rules, where a rule can rely on the fact that some other rules have already been tried or applied, so their order can't be changed. That's why the notion of *current time*, *past* & *future*, and ordered traverse of Journal are crucial for the correct results of the algorithm.


#### Dispatcher and Incrementality

Journal's awareness of ordered nature of evaluation becomes important when we consider Dispatcher. Dispatcher is *timeless* in a sense that it's not aware of the program state at the particular point in Journal time. Dispatcher state changes monotonically and it can't be directly manipulated by the algorithm. It's controlled indirectly through the state of occurrences: `occurrence.alive & occurrence.stored`.

So, Journal & Dispatcher represent two sides of Coderules processing: Dispatcher includes timeless cumulative information of matching algorithm, while Journal includes everything concerned with current time and evaluation order.

Incremental algorithm changes how Dispatcher state is maintained.
* *Old deactivated occurrences can again enter activated state in next incremental session.* In normal processing occurrence's *deactivated* state is terminal (except the case of *reactivation* through logicals). With incremental processing activation of a principal occurrence can be *continued*.
* *Principal occurrences are not contracted when a match discards them.* In normal processing after occurrence is contracted (by `DispatcherFront.contract`), it can no longer lead to new matches. With incremental processing that's no longer true, because following incremental sessions can continue their activation, so Dispatcher must keep them to allow new matches.
* *Dispatcher state must be cleared from data related to invalid occurrences and matches.* In normal processing Dispatcher state is dropped after the session, so there's no need to somehow clear it. With incremental processing Dispatcher state is preserved between sessions. So a number of methods is introduced to clear it from invalid occurrences and matches. Clearing is handled by *Invalidation Stage* described further.


### Incremental Processing

Incremental algorithm is in some sense independent from normal processing. The relate in the following way:
* Normal processing logs principal events at Journal cursor position.
* Incremental algorithm receives data from normal processing at certain points (as defined by `ProcessingStrategy` interface).
* Incremental algorithm redirects control flow to normal processing for continuing rule matching when it finished operations with current cursor position.


#### Journal Invariants

Incremental algorithm introduces several core invariants to simplify its own logic and reasoning about its correctness. Invariants are based on the notion of *current time*:
* Past-invariant: past Chunks are always valid, but can be *new*.
* Future-invariant: future Chunks can be invalid, but are always *old*.
In other words, while algorithm goes through the Journal with cursor, it expects to see only non-updated old Chunks and must leave behind valid and updated past, possibly with some new added Chunks.

Any incremental operation on the Journal (logging, cursor position change, Chunk additions and removals) must preserve these invariants. It simplifies extensions to the algorithm (e.g. addition of a new Stage), because existing Stages rely primarily on these invariants.


#### Incremental Stages Overview

Incremental algorithm consists of a number of stages. While Journal is traversed, all stages are applied on each Chunk in certain order. Journal modification happens in the main processing loop, while Stages operate only on the current cursor position and Journal Index in a read-only manner.

Each stage has specific role:
* **Invalidation Stage** — invalidates Chunks that corresponds to removed rules or depend on them.
* **Addition Stage** — enables matches of completely new added rules at proper points.
* **Postpone Matches Stage** — postpones so-called *future* matches during normal processing.
* **Continue Occurrences Stage** — continues occurrence activations; serves as a bridge back to normal processing.
* **Rewind Stage** — resets cursor backwards in time in non-incremental cases.

The main distinction between incremental processing and normal processing is that the former evaluates Coderules program in the condition when there's some future that depends on present and so can become invalid. *Invalidation*, *Postpone Matches*, and *Rewind* Stages then handle various notions of invalid future, from which *Invalidation*is the main case. Their future-cleaning role is also why they need to receive additional information back from normal processing (arrows `A`, `B`, and `C` on the diagram below).

*Invalidation Stage* also handles clearing Dispatcher state from invalid occurrences and matches.

*Invalidation Stage*, together with *Addition* and *Continue* Stages are the core of the algorithm and they do most of the work. *Postpone Matches* and *Rewind* Stages are extensions to the core algorithm. Their functionality preserves Journal invariants, doesn't interfere with the core Stages and builds on top of them, so they can be understood separately.


#### Algorithm Outline

Incremental algorithm proceeds in the following way.

While there're unprocessed Chunks:
* Incremental processing operates on Chunk at cursor:
    * *Rewind Stage* resets cursor if it previously received matches that can't be handled incrementally. Rewind is applied before any other Stage because it affects cursor position.
    * *Invalidation Stage* invalidates current Chunk if it corresponds to one of the removed rules or if it's one of their dependencies (according to justifications). Invalidation of a rule match also requires to continue evaluation of its discarded head occurrences. Such occurrences, which discard was cancelled, are redirected to *Continue Stage*.
    * *Postpone Matches Stage* returns matches that were postponed until *current time* and redirects them to *Addition Stage*.
    * *Addition Stage* checks if one of the added rules could be activated at the cursor and redirects activation to *Continue Stage*.
    * *Continue Stage* continues activation of candidate occurrences received from *Invalidation Stage* & *Addition Stage*. For this it passes control flow to normal processing. It can continue only *old* occurrences.
* During normal processing logging continues at the current cursor position & several Stages can receive additional information:
    * *Invalidation Stage* receives more invalid Chunks that arise from new matches which discard *old* occurrences. Such occurrences can be used in Journal future, and so they must be invalidated (data flow marked `A` on the scheme below). Examples of such cases can be found in tests `TestIncrementalProgram.substructuralTS_*`, and the linked issue for this functionality is (MPSCR-65)[https://youtrack.jetbrains.com/issue/MPSCR-65].
    * *Postpone Matches Stage* receives and postpones matches returned by Dispatcher that must happen in future.
    * *Rewind Stage* receives matches that must be reevaluated due to unrecoverable changes to logical variables.
* When normal processing finishes activation of all continued occurrences, cursor is advanced and loop repeats.


#### Stages Data Flow
```
    *Incremental Processing*               *Normal Processing*
                                         (represented partially)

            Rewind     ----+   <------------   offer match
                           |        (C)
                           |
                           |
    +-----  Invalidate  <--+   <------------   process match
    |                               (A)
    |
    |
    |       Postpone   ----+   <------------   new matches
    |                      |        (B)
    |                      |
    |                      |
    |  +--  Addition  <----+
    |  |
    |  |
    |  |
    +--+->  Continue   -------------------->   activate
                             occurrences

```

### Incremental Algorithm Extensions

#### Postpone Matches Stage

*Postpone Matches Stage* is an extension that bridges the gap between timeless Dispatcher and time-aware incremental processing. It's required only because Dispatcher is not time-aware and can return matches on occurrences that logically have not yet been activated according to the *current time*. That is, their activation is in future (relative to *current time*), but Dispatcher isn't aware of that and anyway returns matches involving them.

On the call to `DispatchingFront.matches` for active occurrence future matches are filtered out and postponed until suitable point (marked `B` on the data flow scheme). *Postpone Stage* redirects the task of finding the suitable point ot *Addition Stage*.

Example program with such case can be found in extension test: `TestIncrementalProgram.futureMatchInDueTime`.


#### Rewind Stage

*Rewind Stage* is the latest algorithm extension and is aimed at more complex cases where logical variables and unification is involved. Unification is monotonic, so the state of logical variables can't be reset. That's why instead of resetting the logical variables themselves, the algorithm resets their source — the Chunks where these variables were created. By keeping track of some additional infomation through the machinery of logical observers, the Stage is able to determine these source Chunks and then reset the Journal cursor to their position.

To fuller understand the role of *Rewind Stage* it's useful to highlight an important difference between checking & inferring types. In commonly used typesystems types are declared and the declarations precede type usages. So usages of a typed node don't influence its type and need to be only checked or determined in a straightforward manner (such as type of a method call is completely determined by method declaration and argument types). In contrast, with type inference node usages influence its type. And that's crucial — it effectively reverses the direction of typing dependencies.

Coming back to our system, reverse dependencies lead to situations when incremental modifications in *current time* can render *past* Journal invalid. So, it breaks *past-invariant* of the Journal. The solution to this is to:
1. Detect such situations.
2. Determine Journal position where *past-invariant* will be again satisfied.
3. Reset Journal cursor to this position.

Determining proper point in Journal requires some way of tracking reverse dependencies. The difficulty is that current design of justifications doesn't allow to explicitly state reverse dependencies. They flow in one way, and it could be non-trivial to guarantee their acyclicity otherwise. Moreover, as inference is intimately connected with unification of logical terms and variables, reverse dependencies would require at least including logical vars into Justified machinery in some way. Done naively, it will, probably, introduce too much overhead. So, another way is required.

###### 1. Detection

Algorithm assumes that only principal occurrences matter for the algorithm. From this follows that only logical variables contained in principal occurrences matter. So we can consider only state of such logicals.

Current system has a way so subscribe on changes to logical variable state. Rewind Stage uses it and introduces its own logical observers. When a principal occurrence is first activated, incremental processing adds `LogicalObserver` on *free* logicals contained in its arguments. It's important to note, that most often (in the case of type checking, not inference) principal occurrences are created with already bound logical variables. In other words, `typeOf(x, Type)` is activated only after `Type` is already known. In these common cases no observers will be created.

Let's call such free logical used in a principal occurrence — **principal logical**, and its parent occurrence — **source occurrence**.

Then during the program evaluation 2 scenarios are possible:
* principal logical is never unified or bound — it's ok, we have nothing to do;
* principal logical is unified or bound — then the observer is triggered and marks its *source occurrence* as **volatile occurrence**.

*Volatile* here means approximately following: that the occurrence has been non-incrementally modified, and so on any match the occurrence state must be reset. Matches involving volatile occurrences in head we will also call *volatile*.

###### 2. Finding Source

So, *volatile match* can be easily detected. For this Rewind Stage checks on *each new match* whether it contains *volatile occurrences*. Then the *source* of a volatile match will be one of these occurrences, the earliest one. Earliest in a sense of a point in time where it was activated. Then Journal can be reset to that past point, where *source occurrence* was activated. It's found with a help of Journal Index.

###### 3. Journal Reset

Because unification is monotonic, the only way to reverse it is to find the initial point where logical was created. By reevaluating program from this point we can guarantee that unification effects are reversed.

When Journal is reset to past, *future-invariant* can be violated. That's why after reset all *new* Chunks in *future* must be invalidated. Incremental evaluation effectively tries again everything that happended between *curent time* and the reset position.

It can seem that this logic of going back and forth in time can lead to infinite recursion, but that's not the case. Rewind can happen only for *old* occurrences, and as it's reevaluated, after rewind it's substituted by a *new* occurrence. So after each rewind there're at least by one *old* Chunk less in the Journal. So number of *old* Chunks strictly decreases and this clearly can't go on indefinitely.

###### Rewind Stage Summary

So, to sum up the logic:
1. Principal occurrence is activated.
2. Observer triggered => occurrence is marked volatile.
3. (In next incremental session) processing encounters volatile match (marked `C` on data flow scheme).
4. Its source occurrence is determined.
5. Cursor is reset to its point of activation, while:
    * all consequences of its *old* activation are invalidated;
    * all *new* Chunks are invalidated.
6. This occurrence is activated anew with fresh logicals.

Such cases arise when type inference is involved, that utilizes unification in a non-trivial way. It's used in *BL closures* typesystem and in *lambdacalc*. Simpler examples of involved cases can be found in extension tests: `TestIncrementalProgram.inference_*`.



#### Non Implemented Extensions

* Incremental handling of *reactivation* due to unification of logical variables isn't implemented. *Rewind Stage* handles some of the cases (or maybe most), but its coverage isn't tested.

