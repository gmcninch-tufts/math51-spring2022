---
author: Math 51 Fall 2021 -- Z. Nitecki and G. McNinch
title: |
  Review material for Midterm 
date: 2021-10-20
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
- Graphing Solutions §1.7
- Linear differential equations §2.2
- Homogeneous linear ODEs & the Wronskian §2.3
- Linear independence of functions §2.4
- const coeff linear ODES (Real Roots) §2.5


This is the material covered in the first lectures (weeks 1 - 4); you
can find the corresponding lecture notes on [Canvas](http://canvas.tufts.edu)

You should review *problem sets* PS2, PS3, PS4, PS5 as well as the
*recitation worksheets*.

**Note:** The first version of this review material contained two
problems that won't actually be tested until the final exam. I've
removed them now.

## Here are some further review problems: {.unnumbered}

1. Consider the ODE $\dfrac{dx}{dt} = x^2\cos(t)$.

    a. Find the general solution to this ODE.
   
    b. Find a solution $x$ satisfying $x(0) = 1$. 
   
    c. What is the largest interval containing $t_0 = 0$ on which this
      solution is defined?

2. Find the general solution to the ODE $e^{-t}x' + 2t = 0.$

3. Consider the differential equation
   $$(\clubsuit) \quad (t+2)\dfrac{dx}{dt} + 2x = t+1.$$
   
   a. Find the largest interval containing $t_0 = 0$ on which this
      equation is *normal.*
	  
   b. Find the general solution to $(\clubsuit)$.

4. Consider the ODE $\dfrac{dx}{dt} = \dfrac{x}{t} + 1$ for $t>0$.
	
   a. Find the general solution $x(t)$ to this ODE.
  
   b. find the particular solution of the ODE for which  $x(1) = 0$.

5. For what value(s) of $\alpha$ is the determinant
    $$\det \begin{bmatrix} 1 &\alpha &1 \\ 1 &1 &0 \\ 0 &1 &\alpha \\
    \end{bmatrix}$$ equal to 0?

6. Let $h_1(t),h_2(t),h_3(t)$ be functions and *make the assumption that*
   $$\det
   \begin{bmatrix}
   h_1(0) & h_2(0) & h_3(0) \\
   h_1'(0) & h_2'(0) & h_3'(0) \\
   h_1''(0) & h_2''(0) &h_3''(0)
   \end{bmatrix} = 1.$$
	
   :::{.comment}
   \color{red}
   Earlier version of this review had a typo in the 3rd row of this matrix.
   \color{black}
   :::
	
	For any numbers $\alpha,\beta,\gamma$, Cramer's Rule thus guarantees that the
	system of equations
    $$\left\{\begin{matrix}
      h_1(0) c_1  &+&  h_2(0)c_2  &+& h_3(0) c_3 &=& \alpha \\
      h_1'(0)c_1 &+& h_2'(0)c_2 &+& h_3'(0) c_3 &=&\beta \\
      h_1''(0)c_1 &+& h_2''(0)c_2 &+& h_3''(0) c_3 &=&\gamma
    \end{matrix}\right. $$
	has a solution $c_1,c_2,c_3$. Which of the following statements is most correct?

    a. The function $h(t) = c_1h_1(t) + c_2h_2(t) + c_3h_3(t)$ satisfies the
       "initial conditions" $h(0) = \alpha$, $h'(0) = \beta$ and  $h''(0) = \gamma$.
	   
    b. The function $h_1(t)$ itself satisfies the conditions $h_1(0) =
       \alpha$, $h_1'(0) = \beta$, $h_1''(0) = \gamma$.
	   
    c. For any linear combination $h(t) = a_1h_1(t) + a_2h_2(t) = a_3h_3(t)$,
       the equality $h(0) = h'(0)$ holds.
	   
    d. The functions $h_1(t)$, $h_2(t)$, $h_3(t)$ are *linearly dependent.*


7. ~~Find the general solution to: $x''  - 3x = t\cdot e^{3t + 1}.$~~

   :::{.comment}
   \color{red}
   This problem should have been omitted, because it is related to
   [@gutermanNitecki,§2.7] This material *will* be on the course Final exam, though.
   
   \color{black}
   :::


8. Consider a 3rd order linear ODE which is normal on $(-\infty,\infty)$
   and suppose that $x_1$ and $x_2$ are solutions.
   Which of the following statements is *most correct*?

   a. If $x_1(0) = x_2(0)$ and $x_1(1) = x_2(1)$, then $x_1 = x_2$.
   
   b. If $x_1(0) = x_2(0)$, $x_1'(0) = x_2'(0)$ and $x_1''(0) = x_2''(0)$, then
    $x_1 = x_2$.

   c. If $x_1(0)>0$ then it is also true that $x_2(0)>0$.

9. Indicate which of the following ODEs is normal on the interval $(0,2\pi)$.

   a. $\dfrac{1}{t}\dfrac{d^3x}{dt^3} + \sin(t)\dfrac{dx}{dt} = \cos(t).$
   
   b. $D^2 x + \cos(t) Dx = \ln(t-1)$
   
   c. $(t+1)D^5 x + x = \dfrac{1}{\cos(t/8)}$

10. Consider the system of equations
    $\left \{ \begin{matrix} x + y + z &=& a \\ 2y - z &=& b \\ y + 2z
       &=& c.  \end{matrix} \right .$

    a. Compute $\det
       \begin{bmatrix}
         1 & 1 & 1 \\
         0 & 2 & -1 \\
         0 & 1 & 2
       \end{bmatrix}$
      
    b. Use your answer to (a) to decide whether or not the system has a
       solution for all values of $a,b,c$.


11. Consider the functions $$h_1(t) = -1 + 7t + 8t^2, \qquad
     h_2(t) = 1 + 2t + t^2, \qquad h_3(t) = -1 + t + 2t^2.$$
 
    a. Find constants $a,b$ so that $h_1(t) = a \cdot h_2(t) + b
       \cdot h_3(t)$.
      
 	  **Hint:** Equate coefficients of powers of $t$.
	  
    b. Are the functions $h_1(t),h_2(t),h_3(t)$ linearly dependent?
       (What does your answer to (a) tell you about linear dependence?)

12. Consider the differential operator $P(D) = D^3 - D^2 - 4D + 4$.

    a. Observe that $r=1$ is a solution to the equation $r^3 - r^2
       - 4r + 4 = 0$.  Find the other two solutions.
 	  
    b. Use your answer to (a) to find the general solution to the ODE
       $(D^3 - D^2 - 4D + 4)x = 0.$

13.. A particular solution to the equation
    $$(\clubsuit)\qquad (D^2-16)x = e^{4t}$$
    is $p(t) = \dfrac{1}{8}\cdot t\cdot e^{4t} + e^{-4t}$.
    Find the general solution.

14. Use the *exponential shift* rule to help you compute $L[t^2e^t]$
    when $L = (D+3)(D-1)^2$.


## Bibliography {.unnumbered}

:::{#refs}
:::
