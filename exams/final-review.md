---
author: Math 51 Fall 2021 -- Z. Nitecki and G. McNinch
title: |
  Review material for the Final Exam
date: 2021-12-17
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

# Overview

The final exam in the course is *not cumulative*, though of course the
latter material probably relies in part on material learned in the
first half of the course.

The Final will cover course material from the following sections of
[@gutermanNitecki]:

- §2.6 constant coeff linear ODES: Complex Roots
- §2.7 inhomogeneous linear ODEs: undetermined coefficients
- §2.8 inhomogeneous linear ODEs: Variation of Parameters, 
- §3.2 linear systems and matrices
- §3.3 linear systems of ODEs
- §3.4 Linear Independence 
- §3.5 Eigenvalues, Eigenvectors
- §3.6 Row Reduction
- §3.7 Homogeneous Linear Systems: Real eigenvalues
- §3.8 Homogeneous Linear Systems: Complex eigenvalues 
- §3.9 Homogeneous Linear Systems: Double Roots
- §3.10 In-homogeneous Linear Systems (variation of parameters)
- §5.2, §5.3 The Laplace Transform 

# Problems

1. Solve the initial value problem $(D^2 - 6D + 10)x = 0$, $x(0) = x'(0) = 1$.

2. Consider the linear ODE $(D^2 - 4)x = e^{2t} + e^{3t}.$

   a. Find a *simplified guess* for a particular solution $p(t)$ for
   the ODE.
   
   b. Use the method of *undetermined coefficients* to find $p(t)$.

3. Use the method of *variation of parameters* to find the
   general solution to the linear ODE  $$(D^2 + 4)x = \dfrac{1}{\sin(2t)}.$$

4. Consider the linear ODE $(\diamondsuit) \qquad (D^3 + D)x = e^t.$

   a. Find a matrix $A$ for which $$(\heartsuit) \qquad D\vec x =
      A\vec x + \begin{bmatrix} 0 \\ 0 \\ e^t \end{bmatrix}$$ is an
      *equivalent linear system* to $(\diamondsuit)$.

   b. If $u(t)$ is a solution to $(\diamondsuit)$, explain why 
      $\vec v(t) = \begin{bmatrix} u(t) \\ u'(t) \\ u''(t)
      \end{bmatrix}$ is a solution to $(\heartsuit)$.

5. Find the *real* and *imaginary* parts of the vector
   $(\cos(t) + i\sin(t)) \cdot \begin{bmatrix} 2+i\\ 1 \\ i
   \end{bmatrix}$ for any value of $t$.

6. Consider the matrix $A =
   \begin{bmatrix}
   2 & 5 \\
   1 & -2
   \end{bmatrix}$

   a. Find solutions $\vec h_1(t)$ and $\vec h_2(t)$ that generate the
     *general solution* to the linear system $D \vec x = A \vec x$.
	 
   b. Suppose that $\vec E(t)$ is a vector valued function, and that
     we wish to find a particular solution to the inhomogeneous system
     $$D \vec x = A \vec x + \vec E(t)$$ of the form $\vec p(t) =
     c_1(t)\vec h_1(t) + c_2(t)\vec h_2(t)$ where the $\vec h_i(t)$
     are the solutions you found in (c), and $c_1(t)$ and $c_2(t)$ are
     "unknown functions". What matrix equation must you solve in order
     to find the *derivatives* $c_1'(t)$ and $c_2'(t)$? 

7. Let $A= \begin{bmatrix} 2 & 2 & 1 \\ 0 & 2 & 0 \\ 0 & 0 & -1
   \end{bmatrix}.$
	
   a. Find the characteristic polynomial and show that eigenvalues of
      $A$ are $\lambda = 2,-1$.
	
   b. Find two linearly independent generalized eigenvectors for
      $\lambda = 2$. Note that there are not 2 linearly independent
      *eigenvectors* for $\lambda = 2$.
	
   c. Find the general solution to the linear
      system $D\vec x = A\vec x$.  

8. Let $B =
   \begin{bmatrix} 1 & -1 & 0 & 1 & 1 \\ 0 & 2 & -1 & 2 & 0 \\ 0 & 0 &
   0 & 1 & 3 \\ 0 & 0 & 0 & 0 & 0 \\ \end{bmatrix}$
    
   a. Find all solutions to the matrix equation $B \vec v = \vec 0$.
   
   b. Let $\vec b_1,\dots,\vec b_5$ denote the *columns* of the
      matrix $B$.  Thus the $\vec b_i$ are vectors in
      $\mathbf{R}^4$. Are these vectors linearly independent? Why or
      why not?
	  
9. Find the solution $\vec h(t)$ to the homogeneous system
   $$D \vec x = 
   \begin{bmatrix}
    3 & -2 & 1 \\
    1 & 0 & 1 \\
    0 & 0 & 2 \\
   \end{bmatrix}
   \vec x$$
   which satisfies $\vec h(0) =
   \begin{bmatrix}
   0 \\ 1 \\ 0
   \end{bmatrix}.$ What is $\vec h(1)$?

10. Suppose that the $3 \times 3$ matrix $A$ has eigenvalues $2$ and $1 \pm 3i$, 
    that $\mathbf{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix}$
    is an eigenvector for $\lambda  = 2$, and that $\mathbf{w} = \begin{bmatrix} u_1 +
    w_1 i \\ u_2 + w_2 i \\ u_3 + w_3 i \end{bmatrix}$ is an
    eigenvector for $\lambda = 1+3i$.
   
    Describe three real solutions to the homogeneous system of linear
    ODES $D \mathbf{x} = A \mathbf{x}$ with linearly independent
    initial vectors.

11. Find the *inverse Laplace transform*
    $\mathscr{L}^{-1}\left[\dfrac{1+2s}{(s^2 + 9)s^2}\right].$

12. Consider the initial value problem $(D^2 + D)x = e^{3t}; \quad x(0) = 0, x'(0) = 0$.

    a. Find an expression for the Laplace transform $\mathscr{L}[x]$ as
       a function of the variable $s$.
   
    b. Use your answer to (a) to find the solution $x = x(t)$ for the
    given initial value problem.


## Bibliography {.unnumbered}

:::{#refs} 

:::

