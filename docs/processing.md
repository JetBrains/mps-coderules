## Constraints processing system

![](img/errorDialog.png) **TODO Discuss how constraints processing works (abstractly)**

> Discuss semantics of constraints processing.   
> Loosely follows CHR semantics.  
> Influenced heavily by JCHR[^jchr].  

### Terms and unification

Constraints processing relies heavily on the use of terms as data type. Abstractly speaking, terms are functions of 0 or more arguments. Any opaque value captured by a term must be a POJO.  

```
  f(g(), h(k()))
  
  p(val("foo"), q())
  
  node(name("List"), arg(node(name("Int"), arg())))
```

> (examples of terms)

A term variable ranges over terms. A substitution is a mapping of variables to terms. Unification searches for a substitution $\sigma$, such that for two terms being unified, $f$ and $g$, the following holds: $\sigma f = \sigma g$.

```
  [X -> g()] unifies f(X, h(X)) and f(g(), h(g()))
 
  f(X, h(X)) and f(g(), h(k())) can't be unified
```

### Logical variables

Logical variables serve to identify an object that is to be determined in the future. They are *monotonic*, in the sense that once a variable is assigned, it stays assigned to that value. In addition, they implement a *union-find data structure*[^uf]. Logical variables notify observers when they become ground and when their *parent* (class representative) changes. 

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
 
> (example of using logical variables)
 
Combining logical variables and terms gives a very powerful instrument. A term variable can also be a logical variable, so that when two terms are unified, the substitution has the calculated value for this variable.

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

![](img/errorDialog.png) **TODO**





### Constraint production (rule)

![](img/errorDialog.png) **TODO**

[^jchr]: https://dtai.cs.kuleuven.be/CHR/JCHR/
[^uf]: https://en.wikipedia.org/wiki/Disjoint-set_data_structure