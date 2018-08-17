# TODO Language 

## Intro
- [ ] templates are usual for MPS
- [ ] applicable to concept/+subconcepts
- [ ] standalone
- [ ] can serve as «checking rule»
- [ ] produce productions to be evaluated

## Handler  
- [x] create handler, optionally extend another handler
- [x] declare constraints
- [ ] define rule template
    - [x] for concept, standalone
    - [x] applicability condition
    - [ ] what purpose does the body serve
        - [ ] **reporting errors**
        - [ ] **_require_ statement**
        - [ ] **what features are available in a rule**
- [ ] introduce constraint production
    - [x] declare logical variables
    - [x] on start
    - [ ] on … defining *head* 
        - [x] keep / replace (~) 
        - [x] pattern matching
        - [x] the '@' syntax
    - [ ] predicates vs constraints
        - [ ] **special predicates «expand» and «call»**
        - [x] calling arbitrary Java code (eval)
    - [ ] guard (when)
        - [x] what operations are available in the guard
    - [ ] body
        - [x] what operations are available in the body
        - [ ] **using code templates** `%% … %%`
    - [ ] **alternative body**

## Query
- [x] Purpose of a query
- [x] Query kind
- [x] Parameters
- [x] Executed block

## Macro table
 - [x] applicable to a node of specific concept
     - [x] macro is not applied automatically
 - [x] macro parameters
     - [x] parameter initialiser
 - [ ] how macro can be called
     - [x] **special predicates «expand» and «call»**
 - [x] What is the meaning of macro body
 - [ ] referring logical variables 
     - [x] «macroLogical» expression
     - [ ] **$-wrapper for an expression**
 - [ ] **«substitution from context»**
     - [ ] context parameters
     - [ ] substitutions
     - [ ] context parameters
     - [ ] specifying parameters using «with» statement

## Term table
- [x] purpose of this root
- [ ] what is a term
    - [x] what are features
    - [x] what are getters
    - [x] extending another term
- [ ] terms representing types
- [ ] using terms
    - [ ] constructing new terms
        - [ ] specify subtterms
        - [ ] specify values
    - [ ] using terms as patterns
    - [ ] **copy operation**!
