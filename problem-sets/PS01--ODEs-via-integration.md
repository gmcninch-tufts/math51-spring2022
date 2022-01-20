---
author: Math 51 Fall 2021
title: |
  Problem Set 1 \
  ODEs via integration 
date: due 2022-01-23 at 5:00 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

# Reminders on the rubric:

1. A correct answer does not guarantee credit. 

   Your goal in answering a problem should be to convince the grader
   of comprehension. In short: Show your work!

2. Use your words! 

   Many problems in this course can be answered purely in math
   terms. While that may at times be sufficient, it is often helpful
   to use words between steps and to use words to justify choices made
   in solving a problem. 

3. Legibility of work is important.

   It is important that the graders can clearly read the work. If work
   cannot be read or easily followed, then the grader may not be
   convinced of complete understanding of the material and points may
   be lost.


# Problems 

  These problems relate to material of [@gutermanNitecki § 1.1].  In
  these exercises, you may use that the general solution to an ODE of
  the form $$x' = kx$$ -- where $k$ is a constant -- is given by $x(t)
  = x_0 e^{kt}$ for a constant $x_0$.

1. Find all values of the constant $k$ for which the given function $x =
   \phi(t)$ is a solution of the indicated differential equation:

   a.  $x = t^k , t > 0; \quad t^2 \cdot x \cdot x'' - 2t \cdot x \cdot x'  - 10x^2 = 0$.

   b.  $x = kte^{3t}; \quad x'' − 3x' = e^{3t}$.


2. (adapted from [@gutermanNitecki §1.1 exercise  24 and 1.2 exercise 22]).

   A tanker carrying $200,000$ liters of oil runs aground off the
   coast of Alaska. Water pours in the tanker at one end at a rate of
   $1500$ liters per hour while the polluted water-oil mixture pours
   out at the other end, also at a rate of $1500$ liters per hour.

   We wish to describe the number of liters $x(t)$ of oil in the
   tanker at time $t$. Of course, $x(0) = 200000$.

   a. Explain why the percentage of oil in the tanker at time $t \ge
      0$ is given by the fraction $\dfrac{x(t)}{200000}$.

   b. Use the answer to a. to set up a differential equation to
      predict the amount $x = x(t)$ of oil in the tanker at time
      $t$. Explain how you arrived at your formulation.

   c. Solve the differential equation found in part b. How much oil
      remains in the tanker after 5 days?

3. *Radioactive decay* The atoms of a radioactive substance tend to
   decompose into atoms of a more stable substance at a rate
   proportional to the number $x = x(t)$ of unstable atoms
   present. Suppose that time $t$ is measured in seconds, and that the
   half-life of a certain compound is $10^4$ seconds. In other words,
   if $x_0 = x(0)$ then $x(10^4) = 0.5 x_0$.  Find a differential
   equation for $x(t)$.

4. For each of the following ODES, find the general solution, and find
   the particular solution satisfying the given initial conditions.

   a. $\dfrac{d^2 x}{dt^2} = t-1; \quad x(0) = 1, x'(0) = 2.$

   b. $x'' = \dfrac{-1}{(t+1)^2}, t>-1; \quad x(0) = 2, x'(0) = 3.$

# Bibliography {.unnumbered}

:::{#refs}
:::
