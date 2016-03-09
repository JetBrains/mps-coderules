Unification
===========

This small package contains a Java implementation of a "near linear" time syntactic unification algorithm.<sup><a href="#uni">1</a></sup>

In order to make use of the API one must implement two interfaces:

    Term
    Var
    
These are used by the algorithm to analyze the syntax graph. 

The results are provided in the form of variable bindings. On successful unification, the algorithm returns the solution in a triangular form. 

License
-------

Copyright 2014 JetBrains s.r.o.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

> Written with [StackEdit](https://stackedit.io/).

  <a anchor="uni">1</a>: Baader, Franz, and Wayne Snyder. "Unification Theory." Handbook of automated reasoning 1 (2001): 445-532.
