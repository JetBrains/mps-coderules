# Constraints Reactor

An engine for evaluating constraint rules. 

Written in Kotlin and Java.

[![Build Status](https://travis-ci.org/fisakov/conreactor.svg?branch=master)](https://travis-ci.org/fisakov/conreactor)

This is an implementation of the [Constraint Handling Rules](http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html) semantics with custom extensions, influenced by [JCHR](https://dtai.cs.kuleuven.be/CHR/JCHR/). 

The main features are built-in support for **terms** as the data structure, including terms **unification**, and **logical variables**.

The use of terms as constraint parameters enables to implement optimizations for handling multi-head rules. Also, this implementation relies heavily on term unification when matching rules.
   
Logical variables enable to pass parameters to constraints as indirect references, which may be assigned later. Assigning a value to an unbound logical variable reactivates the constraint in which it serves as a parameter. Two logical variables may be joined to be treated as one.    

NOTE: this implementation does not include support for parsing the CHR syntax. 


## License

Copyright 2014-2017 JetBrains s.r.o.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
