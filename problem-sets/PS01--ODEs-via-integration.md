---
author: Math 51 Fall 2021
title: |
  Problem Set 1 \
  ODEs via integration 
date: due 2021-09-17 at 5:00 PM
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
   of comprehension. Given that no assignments will be proctored and
   that there are many online tools available, a correct answer
   without work shown does little to demonstrate understanding and may
   receive little to no credit. In short: Show your work!

2. Use your words! 

   Many problems in this course can be answered purely in math
   terms. While that may at times be sufficient, it is often helpful
   to use words between steps and to use words to justify choices made
   in solving a problem. (In the future we will post solutions which
   may serve as examples in this regard.)

3. Neatness of work will be included in homework grades. 

   It is important that the graders can clearly read the work. If work
   cannot be read or easily followed, then the grader may not be
   convinced of complete understanding of the material and points may
   be lost.


# Problems 

  These problems cover [@gutermanNitecki § 1.1, 1.2].

1. Find all values of the constant $k$ for which the given functions $x =
   \phi(t)$ is a solution of the given differential equation:

   a.  $x = t^k , t > 0; \quad 4 t^2 \cdot x \cdot x'' - 4t \cdot x \cdot x'  + 3x^2 = 0$.

   b.  $x = kte^{3t}; \quad x'' − 3x' = e^{3t}$.


2. (adapted from [@gutermanNitecki §1.1 exercise  24 and 1.2 exercise 22]).

   A tanker carrying $150,000$ liters of oil runs aground off the
   coast of Alaska. Water pours in the tanker at one end at a rate of
   $1000$ liters per hour while the polluted water-oil mixture pours
   out at the other end, also at a rate of $1000$ liters per hours.

   We wish to describe the number of liters $x(t)$ of oil in the
   tanker at time $t$. Of course, $x(0) = 150000$.

   a. Explain why the percentage of oil in the tanker at time $t \ge
      0$ is given by the fraction $\dfrac{x(t)}{150000}$.

   b. Use the answer to a. to set up a differential equation to
      predict the amount $x = x(t)$ of oil in the tanker at time
      $t$. Explain how you arrived at your formulation.

   c. Solve the differential equation found in part b. How much oil
      remains in the tanker after 5 days?

3. Find the general solution of the following o.d.e.:

   $$\dfrac{dx}{dt} = \left( x \cdot t \right )^2 e^t.$$
   
4. Find the particular solution of the following o.d.e satisfying the
   indicated condition. Explicitly confirm your answer by plugging it
   into the equation.

   $$t^2 x' = x^2 + 1, \quad x(1) = 0.$$
   
5. Find the particular solution of the following o.d.e satisfying the
   indicated condition.
   
   $$\dfrac{d^2x}{dt^2} = t\cos(t), \quad x(0) = x(\pi) = 0.$$

# Bibliography {.unnumbered}

:::{#refs}
:::
