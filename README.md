# MPS CodeRules

An experimental feature of [JetBrains MPS](https://jetbrains.com/mps), *Coderules* is collection of languages that allow to utilize logical programming approach for solving typechecking and related problems.

[JetBrains MPS](https://www.jetbrains.com/mps/) is a project developed by [JetBrains](http://www.jetbrains.com/?fromFooter).

## Documentation

The [documentation](http://jetbrains.github.io/mps-coderules/) is available online.  

## Installation

1. Download the two plugins from [this](https://teamcity.jetbrains.com/viewType.html?buildTypeId=MPS_20211_Distribution_MpsCodeRules&state=successful) build configuration (see "artifacts" of the last successful build):

- `jetbrains.mps.coderules-211-*.zip` (Coderules and related languages and accessory solutions)
- `jetbrains.mps.core-types-211-*.zip` (Type definitions for core MPS languages)

2. Install both plugins by choosing "Install Plugin from Disk.." option from "Manage..." menu of Plugins page in the preferences.
3. Restart MPS.

## Status
| TeamCity | TeamCity EAP |
|:--|:--|
| [![](http://teamcity.jetbrains.com/app/rest/builds/buildType(id:MPS_20211_Distribution_MpsCodeRules)/statusIcon)](https://teamcity.jetbrains.com/viewType.html?buildTypeId=MPS_20211_Distribution_MpsCodeRules) | [![](http://teamcity.jetbrains.com/app/rest/builds/buildType(id:MPS_20212_Distribution_MpsCodeRules)/statusIcon)](https://teamcity.jetbrains.com/viewType.html?buildTypeId=MPS_20212_Distribution_MpsCodeRules) |

The status of this project is **pre-release**. Don’t rely on any of the language features or the API to be stable. The purpose of this project is to show the new technology and collect early feedback.

## Overview

This project is the result of ongoing research done within MPS team in the area of code analysis using constraints handling, in particular [CHR](http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html).
                                                                     
Analysis of source model with CodeRules can be described as a two-phase process.

1. Collecting rule tables and applying rule templates.
2. Processing constraint rules collected in the first stage.

In the first phase, languages used by the model being analysed and surveyed for the appropriate CodeRules aspect model, which is types in case of type checking. *Coderules* allow for extensions to be provided by derived languages. Extensions have higher priority, so it’s easy to override the built-in behaviour.

The outcome of this phase is a constraint rules program, which is a collection of rule tables, which in turn represent lists of constraint rules. This “program” however, exists in memory only as it does not have any textual representation.

In the second phase the constraints program that was created in phase one is evaluated. The semantics of constraints processing is compatible with regular Java semantics.

## Samples

- [Type checking](samples/mpscore) for core MPS languages.
- [Type checking of lambda calculus](samples/lambdacalc) shows the implementation of standard type checking algorithm.
- [Proof validation](samples/fitch) using Fitch system demonstrates how logical inference can be done.

## Sources 

The source code can be opened with the last release of JetBrains MPS. See INSTALL.txt for information on how to set up the project.

The author can be reached by email `fedor.isakov`@`jetbrains.com` or by [Twitter](https://twitter.com/fisakov).

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
