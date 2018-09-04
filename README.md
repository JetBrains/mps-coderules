# MPS Code Rules

An experimental feature of [JetBrains MPS](https://jetbrains.com/mps). Code rules allow to create various code analyses employing constraints handling. The examples are provided, including type checking and control flow analysis of code written using MPS’s baseLanguage.

## Documentation

**NEW!** The documentation [website](http://jetbrains.github.io/mps-coderules/) is available.  

## Status

[![Build Status](https://travis-ci.org/JetBrains/mps-coderules.svg?branch=master)](https://travis-ci.org/JetBrains/mps-coderules)

The status of this project is **pre-release**. Don’t rely on any of the language features or the API to be stable. The purpose of this project is to show the new technology and collect early feedback.

Latest release can be found [here](https://github.com/jetbrains/mps-coderules/releases).

The author can be reached by email `fedor.isakov` (AT) `jetbrains.com` or by [Twitter](https://twitter.com/fisakov).

[JetBrains MPS](https://www.jetbrains.com/mps/) is a project developed by [JetBrains](http://www.jetbrains.com/?fromFooter) and is available via [web](https://www.jetbrains.com/mps/) and [Twitter](http://twitter.com/jetbrains_mps).

## Overview

This project is the result of ongoing research done within MPS team in the area of code analysis using constraints handling, in particular [CHR](http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html).

Code rules serve as templates that produce constraint rules. Both transformation to constraint rules and evaluating is done in-memory at the time analysis is launched. Constraint rules are processed by the embedded [engine](reactor).

Samples included with this project demonstrate how *coderules* can be used for solving concrete tasks connected with source code analysis.

- [Type checking of lambda calculus](samples/lambdacalc) shows the implementation of standard type checking algorithm.
- [Proof validation](samples/fitch) using Fitch system demonstrates how logical inference can be done.
- [Type checking and control flow analysis](samples/mpscore) for core MPS languages.

*Coderules* allow for extensions to be provided by derived languages. Extensions have higher priority, so it’s easy to override the built-in behaviour.

The semantics of constraints handling is compatible with regular Java semantics, so *coderules* can be safely embedded into the user code. There also exists support for launching arbitrary code from when processing constraints.

Parallel or background execution of *coderules* is possible thanks to the reactive extensions, in particular rxjava, which is used by the implementation.

See [implementation notes](coderules/README.md) for more information.

## Dependencies

The source code can be opened with the latest version of JetBrains MPS. The plugin that is created with the build script is also compatible with the same version of MPS.

## Project structure

- **reactor** - contains the implementation of constraint processing engine
- **coderules** - implementation and tests
- **samples** - sample projects using *coderules*

## Installation

See [INSTALL.txt](INSTALL.txt).

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
