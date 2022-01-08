---
author: Math 51 Fall 2021
title: |
  Problem Set 6 \
  Complex Roots and Undetermined Coefficients
date: due 2021-10-24 at 11:59 PM
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

These problems concern [@gutermanNitecki § 2.6, 2.7 ].

#. Find the general solution to the ODE
   $$x^{(4)} - x^{(2)} - 6x = 0.$$
   
   **Suggestion:** You can factor $r^4 - r^2 - 6$ by setting $u=r^2$
   and first factoring $u^2 - u - 6$.

#. Find a polynomial differential operator $A(D)$ for which
   $A(D)[y] = 0$ for the indicated functions $y = y(t)$. Choose your
   $A(D)$ to have the *smallest possible order*.

   a. $y = 3e^t - \cos(5t) + t$.
   
   b. $y = e^t\sin(2t) - 2te^t\cos(2t) + \sin(\pi t)$. 

#. Make a *simplified guess*  for a particular solution to the ODE
   $$(D−1)^2(D^2+1)(D+2)x=t^2e^{3t}+e^t−t\sin(t).$$

   Note: You aren't required to *solve for the coefficients*.

#. Solve the initial value problem
   $$(D^3−2D^2+2D−4)x=0; \quad x(0) = 0,x'(0) =4,x''(0) =12.$$

   **Suggestion:** First find the general solution. To do this, notice
   that $\lambda = 2$ is a root of the polynomial $r^3 - 2r^2 +2r -
   4$. Now use *long division of polynomials*:
   
   $$ r-2 \big \vert \overline{\,r^3 - 2r^2 + 2r - 4};$$

   this will permit you to write $r^3 - 2r^2 + 2r - 4 = (r-2)Q(r)$ for
   some quadratic polynomial $Q(r)$. After you factor $Q(r)$, you'll
   know all the roots to $r^3 - 2r^2 +2r - 4$.

#. Find the *general solution* to the ODE $$(D^3 - D^2 - 2D)x = 1 + e^{2t}.$$

#. Solve the initial value problem:
   $$(D^2 - 9)x = 9 + 12e^{-3t}; \quad x(0) = x'(0) = 0.$$

# Bibliography {.unnumbered} 

::: {#refs} 
:::
