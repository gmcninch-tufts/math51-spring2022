---
author: Math 51 Spring 2022
title: |
  Review material for Midterm 1
date: exam date 2022-02-14
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

The midterm will cover course material from the following sections of [@gutermanNitecki]:

- Introduction to differential equations §1.1
- Separation of variables §1.2
- First–order linear ODEs §1.3
- Existence & Uniqueness Theorem §1.6
- Linear differential equations §2.2
- Homogeneous linear ODEs & the Wronskian §2.3
- Linear independence of functions §2.4
- const coeff linear ODES (Real Roots) §2.5

This is the material covered in the lectures; you
can find the corresponding lecture notes on [Canvas](http://canvas.tufts.edu)

You should review the *problem sets* PS1, PS2, PS3, PS4.

## Here are some further review problems: {.unnumbered}


#. (multiple-choice) Which of the following represents a *linear* ODE?

   a. $x\cdot x'' + x + 1 = \sin(t)$
   
   b. $t\cdot x'' + x^2 + 1 = \sin(t)$
   
   c. $t^2\cdot x'' + (t+1) \cdot x + 1 = \sin(t)$
   
   d. $(D^2 + D + t)x^2 = \sin(t)$
  

#. (multiple-choice) Consider the *Wronskian* $W(t) = W(f_1,f_2,f_3)(t)$ of
   the functions $$f_1(t) = 1, \qquad f_2(t) = 1+t \qquad \text{and}
   \qquad f_3(t) = \ln(1+t).$$ Which of the following statements is
   *most correct*?

   a. The Wronskian is given by $W(t) = -1/(1+t)^2$; since $W(1)
      = -1/4$ is *non-zero*, the functions are linearly independent on
      the interval $(-1,\infty)$.
   
   b. Since $W(1) = 0$, the functions are linearly dependent on $(-1,\infty)$.
   
   c. Since $W(t)$ is not defined on $(-\infty,\infty)$, the Wronskian
      test doesn't apply.
   
   d. None of the above.

#. (multiple-choice) Let $P(D)$ be a differential operator of order $4$, and
   suppose that $h_1(t),h_2(t),h_3(t),h_4(t)$ are *solutions* to the
   homogeneous equation $$(\heartsuit) \quad P(D)x = 0.$$ Suppose that
   $$h_1(t) + h_2(t) + h_3(t) + h_4(t) = 0$$
   for every $t$, $-\infty < t < \infty$.
   
   Which of the following statements is most correct?
   
   a. The general solution to $(\heartsuit)$ is given by $$x(t) = c_1
      h_1(t) + c_2 h_2(t) + c_3 h_3(t) + c_4 h_4(t).$$

   b. The functions $h_1(t),h_2(t),h_3(t),h_4(t)$ are *linearly dependent*.

   c. A *particular solution* to $(\heartsuit)$ has the form
      $$q(t) = \int h_1(t)dt.$$

   d. For some values of $k_1,k_2$ and $k_3$, the expression $q(t) =
      k_1 h_1(t) + k_2 h_2(t) + k_3 h_3(t)$ provides a particular
      solution to the ODE $$P(D)x = e^t.$$


#. Consider the ODE $\dfrac{dx}{dt} = x^2\cos(t)$.

    a. Find the general solution to this ODE.
   
    b. Find a solution $x$ satisfying $x(0) = 1$. 
   
    c. What is the largest interval containing $t_0 = 0$ on which this
      solution is defined?

#. Consider the differential equation
   $$(\clubsuit) \quad (t+2)\dfrac{dx}{dt} + 2x = t+1.$$
   
   a. Find the largest interval containing $t_0 = 0$ on which this
      equation is *normal.*
	  
   b. Find the general solution to $(\clubsuit)$.

#. Consider the ODE $\dfrac{dx}{dt} = \dfrac{x}{t} + 1$ for $t>0$.
	
   a. Find the general solution $x(t)$ to this ODE.
  
   b. find the particular solution of the ODE for which  $x(1) = 0$.

#. For what value(s) of $\alpha$ is the determinant
    $$\det \begin{bmatrix} 1 &\alpha &1 \\ 1 &1 &0 \\ 0 &1 &\alpha \\
    \end{bmatrix}$$ equal to 0?

#. Consider the system of linear equations
   \begin{align*}
   u_1 + 2 u_2 + 3 u_3 &= -1,\\
   3u_1 + 2 u_2 + 1 u_3 &= -1,\\
   5 u_1 - 2 u_2 + 2 u_3 &= -1.
   \end{align*}
   
   The coefficient matrix has
   $$\det\begin{bmatrix}
   1 & 2 & 3 \\
   3 & 2 & 1 \\ 5 & -2 & 2 
   \end{bmatrix} = -48$$
   Use *Cramer's Rule* to give a  formula for $u_3$ in terms of
   determinants.  Do not evaluate the determinants.


#. Consider a 3rd order linear ODE which is normal on $(-\infty,\infty)$
   and suppose that $x_1$ and $x_2$ are solutions.
   Which of the following statements is *most correct*?

   a. If $x_1(0) = x_2(0)$ and $x_1(1) = x_2(1)$, then $x_1 = x_2$.
   
   b. If $x_1(0) = x_2(0)$, $x_1'(0) = x_2'(0)$ and $x_1''(0) = x_2''(0)$, then
    $x_1 = x_2$.

   c. If $x_1(0)>0$ then it is also true that $x_2(0)>0$.

#. Indicate which of the following ODEs is normal on the interval $(0,2\pi)$.

   a. $\dfrac{1}{t}\dfrac{d^3x}{dt^3} + \sin(t)\dfrac{dx}{dt} = \cos(t).$
   
   b. $D^2 x + \cos(t) Dx = \ln(t-1)$
   
   c. $(t+1)D^5 x + x = \dfrac{1}{\cos(t/8)}$

#. Consider the functions $$h_1(t) = -1 + 7t + 8t^2, \qquad
   h_2(t) = 1 + 2t + t^2, \qquad h_3(t) = -1 + t + 2t^2.$$
 
   a. Find constants $a,b$ so that $h_1(t) = a \cdot h_2(t) + b
      \cdot h_3(t)$.
      
 	  **Hint:** Equate coefficients of powers of $t$.
	  
   b. Are the functions $h_1(t),h_2(t),h_3(t)$ linearly dependent?
      (What does your answer to (a) tell you about linear dependence?)

#. A particular solution to the equation
   $$(\clubsuit)\qquad (D^2-16)x = e^{4t}$$ is $p(t) =
   \dfrac{1}{8}\cdot t\cdot e^{4t} + e^{-4t}$.  Find the general
   solution.

#. Use the exponential shift formula
   $$P(D)[e^{\lambda t}y] = e^{\lambda t}P(D+\lambda)[y]$$ to compute
   the function $P(D)[f]$ in each of the following cases:
   
   a. $P(D) = D^2 +D -6$ and $f = t^2 e^{2t}$.
   
   b. $P(D) = D^2 + 3$ and $f = e^t \cos(3t)$.

   c. $P(D) = (D+3)(D-1)^2$ and $f  t^2 e^t$.

#. Find the general solution to the differential equation
   $$(t+1)x' = \dfrac{x}{t-1}, \quad t>1.$$

#. Solve the initial value problem
   $$(\clubsuit) \quad 2\dfrac{dx}{dt} - x = t \cdot e^t; \quad x(0) = 1$$ 
   

   
#. Solve the initial value problem
   $$4x'' + 4x' -3x = 0; \quad x(0) = 0, \quad x'(0) = 1.$$
   


## Bibliography {.unnumbered}

:::{#refs}
:::
