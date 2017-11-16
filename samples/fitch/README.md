This project demonstrates the use of constraint rules to validate proofs in [propositional logic](http://logic.stanford.edu/intrologic/glossary/propositional_logic.html). The proof system is [Fitch](http://logic.stanford.edu/intrologic/glossary/fitch_system.html).

This project is developed with [JetBrains MPS](https://www.jetbrains.com/mps/) using the [plugin](https://github.com/fisakov/constraints-typechecking) that provides an experimental feature: *type checking with constraint rules*.

### Instructions

1. Install the latest version of [JetBrains MPS](https://www.jetbrains.com/mps/download).
2. Download the type checking plugin from [this](https://github.com/fisakov/constraints-typechecking) project (see downloads for the latest release)
3. Install the plugin to your local drive (example for macOS): 

    `unzip typechecking-0.2.zip -d ~/Library/Application\ Support/MPS2017.2/`

4. Clone this repository and open the project with MPS
5. Execute 'Rebuild Project'

### Propositional logic language

The language enables to write boolean expressions and consist of propositional constants and the following logical operations: conjunction (And), disjunction (Or), negation (Not), implication (If), and biconditional (Iff). The following table summarises the operations and symbols that are used to represent them.

| Name | Logical operator | Symbol |
|:--|:--|:--|
| Conjunction | And | & |
| Disjunction | Or | \| |
| Negation | Not | ~ |
| Implication | If | => |
| Biconditional | Iff | <=> |

An example of sentence in propositional logic can be any of the following: 
````
p
q
(p & q)
p => q
(~p | q)
````

### Proof language 

Proofs in propositional logic are built from reasonings and subproofs. A reasoning always have a sentence serving as conclusion, and zero, one, or more bases (premises) that refer other reasonings. A subproof has a similar structure, with the exception that premises here always come in form of assumptions. Here is the list of proposition types: 

| Proposition | Number of bases | Usage |
|:--|:--|:--|
| Premise | 0 | Given as proof’s input |
| Assumption | 0 | Starts a subproof |
| Subproof | 0 | Enables to enter judgements that all share an assumption |
| Reiteration | 1 | Reinvokes a premise or an assumption available in the scope |
| Judgement | (depends on the rule) | Invokes an inference rule |

The rules of inference are defined by the used [system](http://logic.stanford.edu/intrologic/glossary/fitch_system.html) and consist of ten rules: 

| Inference rule | Symbol| Number of bases of a judgement |
|:--|:--|:--|
| And Introduction | &I | 2 |
| And Elimination | &E | 1 |
| Or Introduction | \|I | 1 |
| Or Elimination | \|E | 3 |
| Negation Introduction | ~I | 2 |
| Negation Elimination | ~E | 1 |
| Implication Introduction | =>I | 1 (subproof) |
| Implication Elimination | =>E | 2 |
| Biconditional Introduction | <=>I | 2 |
| Biconditional Elimination | <=>E | 1 |

And Introduction, And Elimination, Or Introduction, Or Elimination, Negation Introduction, Negation Elimination, Implication Introduction, Implication Elimination, Biconditional Introduction, Biconditional Elimination.

Here is a sample proof in propositional logic.

![An example of proof in Fitch system](img/sample-proof.png)

Here is a sample of an inference rule written in the language of constraint rules processing.

![An example of inference rule](img/sample-rule.png)

### Inner workings

Rule templates are applied to each of the reasoning nodes and produce a constraint rules program, that is then evaluated. First the automatic rules are triggered, which activate constraint «conclusion» binding reasoning to the propositional term corresponding to the sentence contained in the reasoning. 

Constraint «valid» signifies the validity of a reasoning. Premise, Assumption and Reiteration are valid automatically.

Activated constraints «conclusion» and «valid» trigger the rest of the constraint rule, which correspond to inference rules. 

The rule input is matched against «conclusion» constraints corresponding to reasonings from rule’s premises and conclusions, unifying matching terms denoted with same logical variable. If rule succeeds, a constraint «valid» is activated for the analysed judgement. 

The proof’s goal is unified with the last **top-level** reasoning. If the last reasoning is marked valid, so is the goal.

### Type checking

All reasonings are checked in the second stage. Reasonings that don’t have «valid» constraint are marked with error. 

There is only one type «OK». Only the goal gets assigned a type in case it matches the last top-level term in the proof.
