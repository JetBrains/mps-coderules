---
layout: page
title: Typechecking Simply Typed Lambda Calculus
menu: Typechecking STLC
parent: examples
weight: 550
github-path: /tree/master/samples/lambdacalc
---

# Typechecking STLC

Simply Typed Lambda Calculus is a famous example found in almost every textbook on type checking. This sample demonstrates how a classical type checking algorithm (Hindley-Milner[^hm]) designed specifically for this language can be implemented using code rules. This sample has also been demonstrated in an article[^tclc] published online.

For purposes of keeping this sample small, we keep the language confined to boolean values. Aside of boolean constants `true` and `false`, the mandatory lambda abstraction and application, `let-in` expression, and `if-then-else`, we have in addition defined `fix` operator to support recursion.

The dataform table contains obvious declarations for the only primitive type `bool`, the functional `fun` type, and universal type `forall`. The macros table responsible for constructing dataform instances is trivial.

```
DataForm Table terms 
  
Bool ( 
  <no features> 
) 
  
Fun ( 
  child arg  
  child res 
) 
  
Forall ( 
  child type 
)
```

There is only one query of kind `TYPECHECK`, which launches types recovery. All the type checking is done by the automatic productions «on start». 

Handlers are separated into types recovery, operations with universal type, and the rest, which is assigning types to expressions. Type checking follows the program’s syntactic structure.

```
typeOf_LamVarBind matching LamVarBind lvb <with subconcepts> <always apply> 
{ 
    on <term T> start 
    activate 
      %% 
        // T is free 
        <% typeOf(@lvb.var, T) %> 
      %% 
}
```

A variable introduced by lambda abstraction is assigned a type, which is a fresh  logical variable.

```
typeOf_Lam matching Lam lam <with subconcepts> <always apply> 
{ 
    on <term T, term A, R> 
      typeOf(@lam.binding.var, A), typeOf(@lam.expr, R) 
    activate 
      T := call Fun<>, T = Fun(arg: A res: R), typeOf(@lam, T) 
}
```

A lambda expression is assigned a function type. This rule is a direct translation of the theoretic rule for lambda abstraction. 

```
typeoOf_App matching App app <with subconcepts> <always apply> 
{ 
    on <term F, A, term FA, FR, FI, AI, string E> 
      typeOf(@app.fun, F), typeOf(@app.arg, A) 
    activate 
      inst(FI, F), FI = Fun(arg: FA res: FR), inst(AI, A), FA = AI, typeOf(@app, FR) 
    else 
      eval(app.report error(String.format("cannot unify '%s' and '%s'", valueOf(FA), valueOf(A)))) 
}
```

Similarly, the type of an application expression is pretty much follows the standard textbook form with a notable addition of the `else` branch: this is the way errors are caught in case unification fails. Here, `inst` constraint ensures a universal type is unwrapped and the inner type dataform is copied, so that all free variables in the resulting type are fresh.

```
typeOf_IfThenElse matching IfThenElse ite <with subconcepts> <always apply> 
{ 
    on <term C, P, N> 
      typeOf(@ite.cond, C), typeOf(@ite.pos, P), typeOf(@ite.neg, N) 
    activate 
      C = Bool(), P = N, typeOf(@ite, P) 
    else 
      eval(ite.report error("mismatched type")) 
}
```

The type checking for `if-then-else` ensures that the types of both branches unify, and assigns the resulting unified type to the whole expression.

```
typeOf_Fix matching Fix fix <with subconcepts> <always apply> 
{ 
    on <term F, A> start 
    activate 
      F = Forall(type: Fun(arg: Fun(arg: A res: A) res: A)), typeOf(@fix, F) 
}
```

Finally, the `fix` operator, which represents general recursion, is given the type `forall.(a -> a) -> a`. 

A separate handler is dedicated to producing and instantiating universal type instances, which are represented by `Forall()` dataform. 

```
gen <no input> <always apply> 
{ 
    on <term G, T> 
      ~gen(G, T) 
    when 
      isFree(G) 
    activate 
      G = Forall(type: T) 
}
```

This production assigns the output parameter `G` a new type universal type wrapping the `T` parameter. 

```
inst_forall <no input> <always apply> 
{ 
    on <term I, G, T, term C> 
      ~inst(I, G = Forall(type: T)) 
    when 
      isFree(I) 
    activate 
      C == copyOf(T), I = C 
}
```

The constraint `inst` is responsible for unwrapping (instantiating) an universal type. Here the `copyOf()` is a call to internal API, which makes a copy of the term passed as parameter, ensuring all logical variables within it are replaced with fresh ones.  

The handler `recover` is responsible for translating the calculated types to `SNode` form and is pretty straightforward. 

```
recover_var <no input> <always apply> 
{ 
    on <node<> Node, term Var, string Name> 
      ~recover(Node, Var), 
      varname(Var, Name) 
    when 
      isFree(Var) 
    activate 
      Node == `<$( VarType Names.asName(Name) )$>` 
}
```

The constraint `varname` is used to track the names of type variables, so that the resulting types have the form `t1`, `t2`, and so on.

```
recover_var_assign <no input> <always apply> 
{ 
    on <node<> Node, term Var, string Name> 
      ~recover(Node, Var) 
    when 
      isFree(Var) 
    activate 
      Name == `Names.nextIndex()`, varname(Var, Name), Node == `<$( VarType Names.asName(Name) )$>` 
}
```

The above production ensures all free logical variables representing type variables are assigned unique name.

[^hm]: See for example: Cardelli, Luca. "Basic polymorphic typechecking." Science of computer programming 8.2 (1987): 147-172.
[^tclc]: Type Checking Lambda Calculus: https://github.com/fisakov/typechecking-lambdacalc
