# Code Rules


## Introduction

This project is an attempt to bring logic programming to JetBrains MPS[^[https://jetbrains.com/mps](https://jetbrains.com/mps)] to facilitate tasks related to source code (model) analysis, and which require logical inference of some kind to operate. Examples include type checking and control flow (data flow). 

Type system in MPS is traditionally defined with help of type checking rules, in particular inference rules, which allow to make logical statements about types, such as «*is a*» or «*is a subtype of*», enabling the internal engine to infer the specific type based on a collection of such statements, referred to as type equations and inequalities.

```
typeOf(assignment.right) :<=: typeof(assignment.left)
```

Albeit brief and concise, this notation leaves many questions unanswered when it comes to how exactly the system of equations and inequalities is processed. In other words, type inference is — for the most part — left up to the internal engine to decide. This limits the options for the author of type system to control how exactly subtyping is defined, and what happens with type parameters when computing sub- or supertype. Java, for instance, has several kinds of «conversions» with clearly defined rules controlling how types are transformed and what types are compatible in certain situations. All of this has to be emulated with «strong» and «weak» subtyping in MPS.  

Another example is the all too well known *when_concrete*, which is basically a suspended block that gets executed when the type, that serves as its parameter, is computed. Sometimes this never happens during type inference, which results in numerous «*when concrete is never concrete*» warnings, leaving the user wondering what went wrong. This, however, is very much a necessary evil, since there are no other possibilities to hook into the engine in order to spy on types, and knowing the exact form of a type is sometimes required for further inference. 

Consider how the type of a method call is calculated: the details aside, in essence *when_concrete* has to be applied to the type of each argument. Then we should either turn to inequalities and rely on the inference engine, or analyse the type structure and run closing computation when the *last* unknown type is finalised. 

```
foreach arg in methodCall.arguments {
  when_concrete (typeof(arg) as A) {
    // analyse the type of arg, such as extract its parameters, etc
    // when all argument types are known, infer the type of call
  }
}
```

Code rules may have a solution to these and other issues. The core idea is to employ a **production system** to process facts and relations, collectively known as constraints, with the user being in full control of what productions to generate for given source code (model). With the ability to use logical variables to represent unknowns, and with support for term algebra and unification, it is pretty straightforward to define the core of type inference or similar framework without having to rely on opaque implementation and pre-defined relations. 

The following is the list of features made available to users of MPS with *code rules* plugin.  

A language `jetbrains.mps.lang.coderules` containing concept definitions for building rules that serve as production templates, and as regular «checking» rules. The templates may be concept-specific or standalone in order to provide constraints that are invariant for every invocation.

An extension of CHR[^Constraint Handling Rules [http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html](http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html)] semantics allowing the use of unification in production head with automatic binding of logical variables on successful match. This extension also supports limited backtracking, as well as calling arbitrary Java code. Representing the inference in the form of logical productions helps achieve extensibility, as productions defined by extension languages can be easily blended in. 

A framework for evaluating a constraints program, enabling reporting of problems from the production body, as well as a façade interface for accessing the results of the program evaluation. The UI also includes a tracing tool for providing insights into how constraints are handled. 

Finally, an embedded engine capable of processing constraints, which accepts a list of productions, an initial active constraint, and, optionally, a store of inactive constraints, and yields an updated store after all matched productions have been fired.

## Overview

Analysis of source code (model) with *code rules* can be described as a two-phase process. 

In the first phase, the languages used by the model being analysed and their prototypes (meaning the languages that are being *extended*, but not used directly) are surveyed for the appropriate code rules aspect model, which is «types» in case of type checking, for example. The contents of code rules aspect model is a contribution of this particular language. All templates are applied to the source code, with templates coming from extension languages having higher priority. 

The outcome of this phase is a constraints program, which is a collection of handlers, which in turn represent lists of productions. This «program», however, exists in memory only, it does not have textual representation. Aside from generating productions, the rules can also process the model normally, reporting errors as usual. 

This phase runs in «read action», therefore blocking potential writes, which means the editor may become unresponsive if a write action is requested. Ideally the rules should finish quickly and postpone all heavy load to the next phase, which can be run in the background, as the access to `SModel` is no longer necessary. 

The second phase is evaluation of the constraints program that was created in phase one. The evaluation starts with a query, which serves as an entry point to the program. For example, type system defines `TYPECHECK` and `CONVERT` queries, aimed at running type checking and testing if a type can be converted to another type, correspondingly. Queries are declared in the same aspect model. 

```
query ConvertsTo 
parameter: node<> from, node<> to 
kind: TypecheckingQueryKind.CONVERT 
    
    on <term A, B> start 
    activate 
      A := expand from, B := expand to, convertsTo(A, B)
```

In the above example the query defines two logical variables (A and B) of type `term`, which serve to represent types internally. First, both query parameters `to` and `from` are *expanded*, meaning that their `SNode` representations are converted to terms, and then the constraint `convertsTo(A, B)` is activated, kicking off the process of evaluating the program. In case productions triggered by `convertsTo()` constraint all evaluate to true, the query is deemed successful, and if there is at least one production that evaluates to false, the query fails accordingly. 

One nice feature of using code rules is the ability to abstract away from type structure defined by the language. For example, one may decide to represent all primitive types as a term `primitive(kind=<specific kind>)`. Terms can also incorporate values, so creating an inference rule which checks if a particular constant fits the given type, be it an `int` or a `char`, is trivial.  

Having an internal representation for types also means, that if type system is required to represent types as instances of `SNode` to the user, this has to be addressed by the query design. For instance, a type checking query may consist of two constraints: 

```
on start 
  activate 
    checkAll(), recoverAll()
```

Here, the first constraint `checkAll()` fires type checking, whereas the second `recoverAll()` is responsible for restoring terms to `SNode` instances and reporting them back to the user. Joining the two constraints with a conjunction establishes the order in which these are evaluated. 

An of course, if something can go wrong, it will. In case type inference is unsuccessful, the second stage has no chance of being evaluated. To account for that, a partial backtracking was added to the language of production templates, which helps recover from certain failures.

```
on start 
  activate 
    checkAll()
  else
    recoverAll()
```

Here, `recoverAll()` constraint is moved out to an «*alternative branch*» of production body, which allows it to be activated even if there was an error while processing the main branch.

To illustrate how automatic binding of logical variables work, consider the following example. The constraint `typeOf()` associates a type with a location in source code, and `convertsTo()` ensures its 1st argument can be converted to the 2nd, which must both be types. 

```
assignmentExpression matching AssignmentExpression ae <with subconcepts> <always apply> 
{ 
    on <term LType, RType> 
      typeOf(@ae.lValue, LType), typeOf(@ae.rValue, RType) 
    activate 
      convertsTo(RType, LType) 
}
```

The production is triggered when both locations referred to by `ae.lValue` and `ae.rValue` have their types assigned, as both `typeOf()` constraints must be present for a match to be successful. Once production’s head is matched, both logical variables `LType` and `RType` become bound to whatever was the 2nd argument of first and second `typeOf()` constraint, respectively.

It’s important to note, that although on successful match both `lValue` and `rValue` have types, it’s not guaranteed that these types are *ground*. A type may be represented by a free logical variable, or a term containing free variables. Another very important thing to notice is that a logical variable enjoys full privileges of being an argument to a constraint. Which means, if in the above example both variables are free, and `LType = RType`, then both locations will have essentially the *same* type (in the sense of «same instance»), not just matching types.

The following example illustrates the use of *pattern matching* in production’s head. Here the first argument to constraint `convertsTo()` in the head is a logical variable with pattern expression. In this case the production will only be triggered if the active constraint’s first argument is not a free variable, and it matches the pattern. 

```
converts_captureOf_upperBound <no input> <always apply> 
{ 
    on <term Capture, UBnd, To> 
      ~convertsTo(Capture = captureOfType(ubound: UBnd), To) 
    activate 
      convertsTo(UBnd, To) 
}
```


## Code rules language

![](img/errorDialog.png) **TODO This section should teach how to use the language**


### Root concepts

| Concept         | Description |
|:-- |:-- |
| *Handler*     | contains rule templates and constraint declarations |
| *MacroTable*  | defines how terms are constructed |
| *Query*       | entry point to the constraints program |
| *DataFormTable*[^this concept is defined in another language, `jetbrains.mps.logic`]  | defines terms, the data structure that is used in unification |

### Rule templates

### Handler

- Handler  
    - [x] create handler, optionally extend another handler
    - [x] declare constraints
    - [ ] define rule template
        - [ ] for concept, standalone
        - [ ] applicability condition
        - [ ] **what features are available in a rule**
    - [ ] introduce constraint production
        - [ ] declare logical variables
        - [ ] on start
        - [ ] on … defining *head* 
            - [ ] keep / replace (~) 
            - [ ] pattern matching
            - [ ] the '@' syntax
        - [ ] predicates vs constraints
            - [ ] special predicates «expand» and «call»
            - [ ] calling arbitrary Java code
        - [ ] guard (when)
            - [ ] what operations are available in the guard
        - [ ] body
            - [ ] what operations are available in the body
            - [ ] using code templates `%% … %%`
        - [ ] alternative body

*Handler* serves two purposes: it declares the constraints that can be used in the *head* of productions in this handler and its extensions, and it  also declares *rule templates*, which are, simply put, procedures applicable to specific concept and (optionally) its subconcepts. 

The aim of rule templates is again twofold: firstly, they may serve as regular «checking» rules, and also, most importantly, they contribute constraint productions. These are created with a DSL that allows mixing of productions and Java code, and can also use template fragments (thus «rule templates»).

The following example is from the experimental *control flow* aspect for baseLanguage. It demonstrates how a production is constructed using a template. A template is enclosed into a pair of `%% … %%` symbols and yields constraints wrapped into special `<% … %>` brackets. In this particular case `write()` constraint is optional and is only added to the body of the production in case the condition is satisfied (a location is written to, only if the local variable has an initialiser). 

```
write_localVarDecl matching LocalVariableDeclaration lvd <with subconcepts> <always apply> 
{ 
    on start 
    activate 
      %% 
        <% loc(@lvd) %> 
        if (lvd.initializer.isNotNull) { 
          <% write(@lvd, @lvd) %> 
        } 
      %% 
}
```

A handler is a concept in language `jetbrains.mps.lang.coderules`.

```
handler CheckAll extends TypeOf   
 
  checkAll() / 0 

  << … >>     
```

Keyword `extends` allows to specify another handler, which is extended by this one. All constraint productions generated by rules in this handler will have higher priority. This enables to override the original handler’s behaviour.

Only declared constraints are allowed to be used in the heads of productions in rule templates. Handler should declare one or more constraints, unless it only uses the constraints from handlers being extended. Constraint declaration consists of   name and arity, which together constitute a *constraint symbol*. Constraint’s arity is fixed.

Rule templates can specify applicable concept, either exactly or including its subconcepts. One can also declare *standalone* templates, which are triggered automatically on every invocation. 

```
checkLocalVariable matching VariableDeclaration lvd <with subconcepts> 
apply if { lvd.initializer.isNotNull; } 
{ 
    on <term VariableType, InizrType> 
      typeOf(@lvd, VariableType), typeOf(@lvd.initializer, InizrType) 
    activate 
      convertsTo(InizrType, VariableType) 
}
```

> Rule template matching concept instances with condition block


```
hasBound_captureOf <no input> <always apply> 
{ 
    on <term CapOfType, CapUBnd, Bnd> 
      ~hasBound(CapOfType = captureOfType(ubound: CapUBnd), Bnd) 
    activate 
      convertsTo(CapUBnd, Bnd) 
}
```

> Standalone rule template without input

The contents of a rule template is a block of code that gets executed when the template is applied to the source model. If the input is specified, the declared parameter is available in the body.

![](img/errorDialog.png) **TODO what other features are available aside from constraint productions?**

Constraint productions can be created at any place within the body of a rule template. A production has three main parts called head, guard, and body. The head defines what constraint trigger this production, and it can only contain constraints defined by the handler or one of the handlers it extends. The body can contain any visible constraints, as well as *predicates*. A production must include either the body or the head, no production can omit both. The guard is optional, and it can only contain predicates. 

#### Query

- Query
    - [ ] Query kind
    - [ ] Parameters
    - [ ] Executed block

#### Macro table

 - Macro table
     - [ ] applicable to a node of specific concept
         - [ ] macro is not applied automatically
     - [ ] what means «expand» and «call»
     - [ ] macro parameters
         - initializer
     - [ ] how macro can be called
     - [ ] referring logical variables 
         - [ ] «macroLogical» expression
         - [ ] $-wrapper for an expression
     - [ ] «substitution from context»
         - [ ] substitutions
         - [ ] context parameters
         - [ ] specifying parameters using «with» statement

#### Term table

- Term table
    - [ ] what is a term
        - [ ] what are features
        - [ ] what are getters
    - [ ] terms representing types
    - [ ] using terms
        - [ ] constructing new terms
            - [ ] specify subtterms
            - [ ] specify values
        - [ ] using terms as patterns


#### Constraints processing system

 ![](img/errorDialog.png) **TODO Discuss how constraints processing works (abstractly)**

- [ ] Terms
    - [ ] abstract data structure
    - [ ] keeping arbitrary POJO
    - [ ] unification
- [ ] Logical variables
    - [ ] range of logical var
    - [ ] Terms with logical vars
    - [ ] unification binds logicals
- [ ] Constraint
    - What is a constraint. 
    - [ ] Constraint arguments.
        - [ ] POJO
        - [ ] Term
        - [ ] Logical vars
- [ ] Constraint production (constraint rule)
    - [ ] kept constraints vs. replaced constraints
        - [ ] constraint store
        - [ ] constraint lifecycle
    - [ ] condition for firing a production
    - [ ] automatic binding of logicals on firing
    - [ ] guard condition
    - [ ] predicates
        - [ ] arbitrary java code
    - [ ] body
        - [ ] alternate body


## Evaluating constraints program
 
 ![](img/errorDialog.png) ** TODO executing constraints processing from MPS **
 
## Reactor

 ![](img/errorDialog.png) ** TODO details of constraints processing implementation **


