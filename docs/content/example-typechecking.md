---
layout: page
title: Typechecking BaseLanguage
menu: Typechecking BL
parent: examples
weight: 500
---

# Typechecking BaseLanguage

Short explanation of the architecture of BL-specific type system built with *code rules*. 

- types
    - term table for types
        - classifier type
        - type var type
        - capture type
        - array/vararity type
        - upper/lower bound type
        - wildcard type
        - primitive type: int, bool, etc.
        - void and null
    - macro table
        - classifier type
        - type var type
            - bounds
        - parameterised types
        - types with value
- Query
    - Typecheck
        - checkall, recoverall
    - ConvertsTo
        - convertsTo()
- Typechecking
    - Constant values
        - string
        - integer, long, char, …
    - expression
        - dotexpression, dot operation
        - method call
        - equals/assignment/+assignment
        - 
        - ???
    - method declaration
    - type relations
        - boxing
        - capture
        - coerce
        - conversion
        - primitive subtyping
        - subclassing/promote
    - type parameter
        - containment, hasbound
    - type annotations
        - classifier type
        - type parameters: type var, bound type, wildcard
        - 
    
