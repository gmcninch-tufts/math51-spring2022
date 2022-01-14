---
author: Math 51 Fall 2021
title: |
  Problem Set 12 \
  The Laplace Transform
date: due 2021-12-12 at 11:59 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---

These problems concern [@gutermanNitecki, §5.2 & 5.3].

#. For each of the following functions, calculate the Laplace transform 
   $F(s) = \mathscr{L}[f(t)]$ using the fact that $\mathscr{L}$ is
   linear and using the basic formulas for $\mathscr{L}$.

   a. $f(t) = 3t - e^{-4t} - 5 \cos(6t)$
   b. $f(t) = e^{2t+3}$
   c. $f(t) = (t+2)^2$

#. For each of the following functions, calculate the inverse Laplace transform
   $f(t) = \mathscr{L}^{-1}[F(s)]$ using the fact that $\mathscr{L}^{-1}$ is linear
   and using the basic formulas for $\mathscr{L}^{-1}$.
   
   a. $F(s) = \dfrac{1}{3s+1}$
   b. $F(s) = \dfrac{3}{s^2 + 4} + \dfrac{20}{s^4} + \dfrac{s}{s^2 + 1}$.

#. Recall that the *First Differentiation Formula* says for a function $x = x(t)$ that

   $$\mathscr{L}[D^kx] = s^k \mathscr{L}[x(t)] - s^{k-1}x(0) -
   s^{k-2}x'(0) - \cdots - s x^{(k-2)}(0) - x^{(k-1)}(0).$$

   Use this formula to find an expression for the Laplace Transform
   $\mathscr{L}[x]$ where $x$ is a solution for each of the following initial-value
   problems. Note that your answer should be a *function of $s$*.
   
   a. $(D-1)x = e^{3t}, \quad x(0) = 3$.
   b. $(D^2 - 1)x = e^{2t}, \quad x(0) = 0, x'(0) = 1$.
   c. $(D^2 + 1)x = \cos(3t), \quad x(0) = 0, x'(0) = 3$.

#. Use a partial fractions decomposition of $F(s) = \dfrac{s+4}{s^2 + 4s + 3}$ to compute
   $\mathscr{L}^{-1}[F(s)]$.

#. Use the Laplace transform to solve the initial-value problem
   $$(D^2+4)x = t, \quad x(0) = -1, x'(0) = 0.$$
   
   **Hint:** Recall when doing partial fractions decomposition that
   when the denominator has a multiple root, you should consider
   expressions as follows:
   
   $$\dfrac{1}{(s-a)^m(s-b)} = \dfrac{A_1}{s-a} +
   \dfrac{A_2}{(s-a)^2} + \cdots + \dfrac{A_m}{(s-a)^m} +
   \dfrac{B}{s-b}$$

   And similarly if $s^2 + b^2$ is an *irreducible quadratic*, you
   should try to write $$\dfrac{1}{(s-a)^m(s^2+ b^2)} =
   \dfrac{A_1}{s-a} + \dfrac{A_2}{(s-a)^2} + \cdots +
   \dfrac{A_m}{(s-a)^m} + \dfrac{Bs + C}{s^2 + b^2}$$

   Here $A_1,A_2,\dots,A_m,B,C$ are constants that you must *find*.
   See [@gutermanNitecki, sec. 5.3 p. 430-431]

## Bibliography {.unnumbered} 

::: {#refs} 
:::
