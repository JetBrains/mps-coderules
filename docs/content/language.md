---
layout: page
title: CodeRules Language
weight: 200
id: language
permalink: :basename
---

## CodeRules Language

The language `jetbrains.mps.lang.coderules` defines the core concepts listed below.

#### Constraint rules

[Constraint rules](constraintrules) are the basic constructs that enable the use of logic programming with constraints and predicates combined into logical clauses.

#### Rule templates

Defined in a [rule table](ruletable) root, these are the fundamental building blocks of CodeRules program. These are either static or concept-specific rules that get applied to appropriate nodes in the source model and are able to use the constraint rules to implement their logic.

#### Macros

Macros extend the expressiveness of constraint rules with the ability to refactor away fragments of a rule’s body. Macros are provided by [macro table](macrotable).

#### Queries

With help of [queries](querytable) one builds integration of CodeRules into the language aspect. Typechecking aspect provides query kinds that correspond to actual use cases implemented by type checker. 

#### Terms

One important feature of CodeRules is the ability to abstract away from type structure defined by the language. For example, one may decide to represent all primitive types of BaseLanguage as a term `primitive(kind=<specific kind>)`. 

[Term table](termtable) contains declarations of *terms* which are used as internal representation of types.

***Lists***

### Language Aspect

Code rules are defined in tables, which are root concepts of language `jetbrains.mps.lang.coderules`. Rule tables and other related roots should be created in a language’s aspect model corresponding to the specific kind of analysis performed. The language `jetbrains.mps.lang.typechecking` declares the aspect `types`.

### Root concepts

The following table contains root concepts that belong to CodeRules language structure.

| Concept         | Description |
|:-- |:-- |
| [*Rule Table*](ruletable)     | contains rules and constraint declarations |
| [*Term Table*](termtable)  | defines terms, the data structure that is used in unification |
| [*Macro Table*](macrotable)  | facilitates the reuse of body template fragments |
| [*Query Table*](querytable)  | collection of entry points to the constraints program |
