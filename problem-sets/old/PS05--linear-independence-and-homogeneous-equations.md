---
author: Math 51 Fall 2021
title: |
  Problem Set 5 \
  Linear Independence and Homogeneous Equations
date: due 2021-10-10 at 11:59 PM
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

These problems concern [@gutermanNitecki § 2.4, 2.5 ].


#. Decide whether the  indicated functions are linearly independent on the interval $(-\infty,\infty)$.
   If the functions are linearly independent, show that this is the
   case using the definition, or using the Wronskian test. To show
   that the functions $f_1(t),f_2(t),\dots,f_n(t)$ are linearly
   dependent, you need to give explicit values $c_1,c_2,\cdots,c_n$
   for which at least one $c_i$ is non-zero and such that $0 = c_1
   h_1(t) + c_2 h_2(t) + \cdots + c_n h_n(t)$ for every $t$.

   a. $h_1(t) = 1, \quad h_2(t) = t-1, \quad h_3(t) = (t-1)^2$.

   b. $h_1(t) = \sin^2(t), \quad h_2(t) = \cos^2(t), \quad h_3(t) = \cos(2t)$
   
   c. $h_1(t) = t^5, \quad h_2(t) = |t^5|$.
   
   d. $h_1(t) = e^t, \quad h_2(t) = e^{t+1}, \quad h_3(t) = 1.$
   
#. Suppose that $h_1(t), h_2(t), h_3(t)$ are linearly dependent. Show that
   $h_1'(t),h_2'(t),h_3'(t)$ are linearly dependent, as well.
   
   You will need to use the *definition* of linear dependence to make
   this argument.
   
#. Find the general solution of each of the following ODEs:

   a. $(D^2-2)(D+3)^2D x = 0$

   b. $(D^2 - 4)^2x=0$.
   
   c. $\dfrac{d^2x}{dt^2} - 2\dfrac{dx}{dt} - 4x = 0$.



#. Solve the initial value problem $$(D+2)^2Dx = 0; \quad x(0) = x'(0)=  1, \quad 
   x''(0) = 0.$$

#. Use the exponential shift formula (see the reminder below) to compute
   the function $Lf$ in each case:
   
   a. $L = D^2  + 3D - 2$, $f(t) = e^{2t}$.
   
   b. $L = D^2 + D - 1$, $f(t) = e^t\sin(t)$

### Exponential shift formula {.unnumbered}

  Recall: the *exponential shift formula* shows that for a polynomial
  $P(r)$, application of the corresponding differential operator
  $P(D)$ to the product $e^{\lambda t}y$ for a function $y$ yields
	  
  $$P(D) e^{\lambda t}y = e^{\lambda t}P(D+\lambda)y$$


# Bibliography {.unnumbered} 

::: {#refs} 
:::
