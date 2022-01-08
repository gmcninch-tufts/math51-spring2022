---
author: Math 51 Fall 2021
title: |
  Problem Set 4 \
  Linear ODES and the Wronskian
date: due 2021-10-01 at 11:59 PM
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

These problems concern [@gutermanNitecki § 2.2, 2.3 ].

#. For each of the following ODEs, answer the following questions:
   - is the ODE  linear? 
   - if the ODE is linear, write a linear differential operator $L$
     and use it to rewrite the ODE in the form $Lx = E(t)$.
   - is ODE *homogeneous*?
   
   a. $\dfrac{d^5x}{dt^5} + t^2\dfrac{dx}{dt} = te^t$.
   
   
   b. $\dfrac{d^2x}{dt^2} = x \dfrac{dx}{dt} + t$.
   
   c. $\dfrac{d^3x}{dt^3} + \sin(t) \dfrac{dx}{dt} = t^2 x$.
   
   d. $\dfrac{d^3x}{dt^3} + e^t \dfrac{d^2x}{dt^2} + tx = e^t.$

#. Calculate and simplify the determinant of the following matrix:

   $$\begin{bmatrix}
    e^t & \sin(t) & \cos(t) \\
	e^t & \cos(t) & -\sin(t) \\
	e^t & -\sin(t) & -\cos(t) 
   \end{bmatrix}$$

#. Consider the differential equation $Lx = 0$ where
   $L = D^3 - 4D$.
   
   a. Check that each of $h_1(t) = 1$, $h_2(t) = e^{2t}$ and $h_2(t) =
      e^{-2t}$ are solutions to this ODE.
   
   b. Use the Wronskian test to confirm that $h_1,h_2,h_3$ generate
      the general solution.

   c. Indicate the system of linear equations that you would need to
      solve in order to find $c_1,c_2,c_3$ such that
	  
	  $$x(t) = c_1 h_1(t) + c_2 h_2(t) + c_3 h_3(t)$$
	  
	  is a solution to the initial value problem $Lx = 0, x(0) = 1, x'(0) = 1, x''(0) = 1$.

      *Don't solve this system of equations*.

#. Find the solution to the initial value problem
   $$D^2 x = \sin(2t), x(\pi) = 1, x'(\pi) = 0.$$

#. Let $L = D^2 - 3D + 2$.  

   a. Check that $h_1(t) = e^{2t}$ and $h_2(t) = e^t$ are both
      solutions to the ODE $Lx = 0$.
    

   b. Use the *Wronskian test* to show that 
   
      $$x(t) = c_1h_1(t) + c_2h_2(t)$$
	  
	  is the *general solution* to $Lx = 0$.
	  
   c. Note that $L[t] = 2t - 3$.
      Thus $p(t) = t$ is a solution to the ODE
	  $$(\clubsuit) \quad L x = 2t - 3.$$
	  Find the *general solution* to the ODE $(\clubsuit)$.


# Bibliography {.unnumbered} 

::: {#refs}
:::
