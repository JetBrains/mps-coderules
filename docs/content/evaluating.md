---
layout: page
title: Evaluating Code Rules
weight: 40
---

# Evaluating Code Rules

***Two stage process***

## Aspects

***Aspects***

## Applying rule templates

The first stage of evaluating code rules is applying handlers. Handlers are collected from corresponding aspects of all languages imported into the model.

As rules are applied to source model nodes, they produce constraint productions generated from templates. The order of productions is kept as defined by handlers, with handlers from extension languages having higher priority.

As well as generating constraint productions, the rules are allowed to report messages to be displayed at source locations.

Generated productions constitute the constraints program, which is then executed.

## Running constraints program

In the second stage the constraints program is run. To begin execution, a query is selected, which contains the list of constraints to be activated. Query can be viewed as a regular production, which is triggered  unconditionally right after all headless productions (marked as «on start») have fired.

***Order of productions firing***

Order of productions fired:
 - on start
 - query

While constraints program is run, it is allowed to report feedback, such as assign calculated types or report problems, using special predicates.

***Feedback predicates example***

Failures during evaluation are caught with the help of alternative body branches, where those are provided. An uncaught failure terminates program execution and is reported to the user.

## Activation trace view

***Activation trace view***
