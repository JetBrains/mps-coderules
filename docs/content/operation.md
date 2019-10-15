---
layout: page
title: Reactor Operation
parent: content/processing.md
weight: 56
---
# Reactor Operation

This section provides an in-depth look into the inner operations of constraints processing. 

## Definitions

Program is defined as an ordered set of rules $P = \lbrace r_n \rbrace$. Every rule is defined as a tuple $\langle H^+, H^-, G, B \rangle$, with $H^+$ and $H^-$ corresponding to kept and discarded parts of rule’s head, respectively; $G$ is a conjunction of predicates constituting rule’s guard; $B$ being a conjunction of constraints and predicates defined in rule’s body.

Predicates are simply defined as boolean-valued functions of k parameters when viewed as guard conditions, and in this sense we _ask_ the predicate if the condition it represents is satisfied. When invoked from rule’s body a predicate serves as an assertion, and we _tell_ it to make a statement, which can have side-effects, and can also raise an exception if the statement is not compatible with the predicate’s inner logic.

Constraints are — for the purposes of this description — tagged k-tuples, with  elements that are called constraint arguments, any of which can be either a meta variable or a plain old Java object (POJO). Constraint occurrences are k-tuples also, and are produced from constraints by means of replacing its arguments via a substitution.

Occurrence store — set of constraint occurrences that are “alive”: $O = \lbrace c_i \rbrace$. The store represents the state of program evaluation, along with active occurrences stack and a set of free variables — occurrence arguments.
    
Active occurrence is a constraint occurrence that is currently being processed, this operation is discussed in details further. Active occurrences build a stack with the most recently introduced occurrence on top of it: $K = [c^{\star}_1,\dots,c^{\star}_m]$.
    
Logical variables — monotonically assignable, unifiable references to arbitrary objects, depicted as $x_i$ (free) and $\tilde{x}_j$ (ground, assigned a value). 

One particular kind of predicate plays an important role in processing of constraints, specifically unification predicate, which causes matching logical variables to be united (joined). Therefore a subset of all logical variables which are free and also serve as an argument to one or more constraint occurrences $V_a$ is treated specially, namely assignment of a value to such a variable, or joining of such a variable with another, implies that the constraint occurrence(s) having it as an argument must be re-activated and re-evaluated. 

Dispatcher is an auxiliary object that is used internally while doing constraints activation and deactivation and doesn’t really constitute a part of processing state, but it helps to understand how relevant rule matches are found incrementally. Dispatcher accepts activated/deactivated occurrence events and incrementally builds a “match front” of all (partially) matched rules. This is done so as to avoid having to do a lot of repetitive work to find a correct match.

At every moment a state of program evaluation is described by a tuple $S = \langle O, K, V_a \rangle$. Initially all sets are empty, the evaluation is started by convention by introducing a new constraint occurrence $c_0 = \mathtt{main/0}$, which yields the following configuration $S_0 = \langle \lbrace c_0 \rbrace, [c_0], \emptyset\rangle$.

State transitions are functions that make modifications to one or several features of a state and produce a new state: $T(S) = S^\prime= S[O \mapsto O^\prime, K \mapsto K^\prime, V_a \mapsto {V_a}^\prime]$

## Basic operations

The operations necessary for transitioning between states are described in terms of following procedures: $\mathtt{ask}$, $\mathtt{tell}$, $\mathtt{new}$, and $\mathtt{findMatch}$. The former two concern only predicates — $\mathtt{ask}$ inquires if the predicate is satisfied, whereas $\mathtt{tell}$ asserts the predicate. In case $\mathtt{tell}$ invokes a non-satisfiable predicate, such as $\mathtt{false}$, an exception is raised. 

Procedure $\mathtt{new}$ creates a new occurrence $c^\gamma( \bar{a} )$ from constraint $C^\gamma( \bar{A} )$, where $\bar{a} = \bar{A}\sigma$. In more details, given a k-size constraint $C^\gamma( A_1 \dots A_k )$ with arguments being either objects or meta-variables $X_i$, a substitution $\sigma = [a_1/A_1 \dots a_n/A_k ]$, we define a new occurrence $c^\gamma( a_1 \dots a_k )$ as a k-tuple tagged with the same symbol $\gamma$ as the source constraint. For constraint arguments that are invariable, $a_i = A_i$; every meta-variable $X_j$ corresponds a fresh logical variable $x_j$, so that substitution $\sigma = [\forall j.x_j/X_j]$ is non-trivial only for meta-variables. In case the context already contains a substitution for $X_j$, which must be  a logical variable, that variable is united with $x_j$. Set $O$ is replaced with $O^\prime = O \cup \lbrace c^\star \rbrace$.

Procedure $\mathtt{findMatch}$ is described in details further. It begins with a new active occurrence $c^\star$ being introduced as a result of previous match or as the initial parameter to program evaluation, or $c^\star$ can also be re-activated as discussed further. The following is repeated for every activated constraint occurrence.

A program rule $r = \langle H^+, H^-, G, B \rangle$ is selected such that there exists substitution $\theta$, and we can select $m-1$ distinct occurrences $c_i \gets O$, so that $\langle c_1 \dots (c^*) \dots c_{m-1} \rangle$ are matching $\langle C_1\theta … C_m\theta \rangle$, where $C_j \in H^+ \cup H^-$, and $m = \vert H^+ \vert + \vert H^- \vert$. It is important to note that substitution $\theta$ must respect the values provided in rule’s head as patterns. 

The rule is selected deterministically, as all rules in the program are always ordered, and the first matching rule is selected. This selection can’t be changed, the choice is committed.

Next, all predicates in $G$ are tested to be satisfiable through applying procedure $\mathtt{ask}$ to each of them in turn, while observing substitution $\theta$. Finally, if the guard is satisfied, rule $r$ is triggered. 

The triggered rule first results in all occurrences that matched constraints from set $H^-$ to be discarded. Set $O$ is replaced with $O^\prime = O \setminus \bigcup\limits_{i}\lbrace c^-_i \rbrace$. Then all constraints and predicates from rule’s body are evaluated in turn, while keeping substitution $\theta$ as the context. For every predicate, procedure $\mathtt{tell}$ is executed, and for every constraint procedure $\mathtt{findMath}$ is executed recursively with a newly introduced constraint occurrence. 

The process just described is repeated with active occurrence $c^\star$ as long as it is not discarded, until no further matches are possible. In the latter case occurrence $c^\star$ is stored and is no longer considered active, set $O$ becomes $O^\prime = O \cup \lbrace c^\star \rbrace$. This condition also causes recursive procedure $\mathtt{findMatch}$ to terminate. 

As mentioned above, unification predicate can have a side effect which alters the state of some logical variable(s) $x \in V_a$. As all constraint occurrences are observers of their arguments, a change in logical variable’s state causes all alive occurrences that have it as one of their arguments to be re-activated. A re-activated occurrence is processed immediately, exactly as if it has been newly introduced. 

### Summary of findMatch 

We provide here a compact representation of $\mathtt{findMatch}$ procedure in pseudo-code that combines everything that has been said before. 

$\text{Procedure }\mathtt{findMatch} \text{ is invoked with active occurrence } c^\star$:

$$\begin{array}{llllll}\\\
(1) &
\text{begin} & \text{replace }O\text{ with }O^\prime = O \cup \lbrace c^\star \rbrace \\\
\\\
(2) &
\text{while} &
c^\star \text{ is active and } c^\star \in O \\\
& \quad \text{for each} &
\text{rule }r \gets P
\text{, }\quad r = \langle H^+, H^-, G, B \rangle
\text{, }\quad m = \vert H^+ \vert + \vert H^- \vert\\\
\\\
(3) &
\qquad\text{if} & 
\text{exists substitution }\theta
\text{ and set } \lbrace c_1 \dots c_{m-1} \mid c_i \gets O \rbrace \text{ such that} \\\
& & \quad\hat{c} \cong \hat{C}\theta\text{,} \\\
& & \text{where} \\\
& & \quad\hat{c} = \langle c_1 \dots (c^\star) \dots c_m \rangle \\\
& & \quad\hat{C} = \langle C_1 \dots C_m \rangle, \quad C_i \gets H^+ \cup H^- \\\
\\\
(4) &
\qquad\quad\text{do} & \text{check all } p_i \gets G\\\
& \qquad\qquad\text{if} & \bigcup\limits_{i} {p_i}\theta \vdash
\begin{cases}
 false & \quad \text{skip } r \text{, select another rule}\\\
 \\\
 true & \quad \text{continue to the next step}
\end{cases} \text{ ,}\\\
 & & \text{applying }\mathtt{ask} \text{ procedure to each } p_i \\\
& \qquad\qquad\text{end if} \\
\\\
(5) &
\qquad\quad\text{do} & \text{discard all }
c_j \cong C_j^- \text{ from }\hat{c}\text{,} \\\
& & \text{where} \\\ 
& & \quad C_j^- \gets H^- \\\
& & 
\text{replace } O \text{ with } O^\prime = O \setminus \bigcup\limits_{j} \lbrace c_j \rbrace \\\
\\\
(6) &
\qquad\quad\text{for each} & 
\text{conjunct }b_i \gets B\\\
 & \qquad\qquad\text{when} & b_i\text{ is }
\begin{cases}
predicate & 
\text{apply }\mathtt{tell}\text{ procedure to } b_i\\\
\\\
& \text{apply }\mathtt{new}\text{ procedure to } b_i \text{,} \\\
constraint & 
\text{invoke }\mathtt{findMatch}\text{ recursively}
\end{cases} \\\
 & \qquad\quad\text{end for each} \\\
\\\
(3) & \qquad\text{end if} \\\
\\\
(2) & \quad \text{end for each} \\\
\\\
& \quad \text{if} &
c^\star \text{ is discarded} \\\
& \qquad \text{do} & \text{deactivate } c^\star 
\\\
& \quad \text{end if} \\\
\\\
 & \text{end while} \\\
\\\
(1) &
\text{end}\\\
\end{array}$$

## Extended operations

### Alternative body branches

***Alternative body branches***

### Disjunctions in rule’s body

***Disjunction-semantics***

### Incremental program evaluation

***Incremental evaluation***

