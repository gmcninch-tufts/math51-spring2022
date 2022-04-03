---
author: Math 51 Spring 2022
title: |
  Review material for Midterm 2
date: exam date 2022-04-11
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
---

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


6. Let $A= \begin{bmatrix} 2 & 2 & 1 \\ 0 & 2 & 0 \\ 0 & 0 & -1
   \end{bmatrix}.$
	
   a. Find the characteristic polynomial and show that eigenvalues of
      $A$ are $\lambda = 2,-1$.
	
   b. Find two linearly independent generalized eigenvectors for
      $\lambda = 2$. Note that there are not 2 linearly independent
      *eigenvectors* for $\lambda = 2$.
	
   c. Find the general solution to the linear
      system $D\vec x = A\vec x$.  

7. Let $B =
   \begin{bmatrix} 1 & -1 & 0 & 1 & 1 \\ 0 & 2 & -1 & 2 & 0 \\ 0 & 0 &
   0 & 1 & 3 \\ 0 & 0 & 0 & 0 & 0 \\ \end{bmatrix}$
    
   a. Find all solutions to the matrix equation $B \vec v = \vec 0$.
   
   b. Let $\vec b_1,\dots,\vec b_5$ denote the *columns* of the
      matrix $B$.  Thus the $\vec b_i$ are vectors in
      $\mathbf{R}^4$. Are these vectors linearly independent? Why or
      why not?
	  
8. Find the solution $\vec h(t)$ to the homogeneous system
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

9.  Suppose that the $3 \times 3$ matrix $A$ has eigenvalues $2$ and $1 \pm 3i$, 
    that $\mathbf{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix}$
    is an eigenvector for $\lambda  = 2$, and that $\mathbf{w} = \begin{bmatrix} u_1 +
    w_1 i \\ u_2 + w_2 i \\ u_3 + w_3 i \end{bmatrix}$ is an
    eigenvector for $\lambda = 1+3i$.
   
    Describe three real solutions to the homogeneous system of linear
    ODES $D \mathbf{x} = A \mathbf{x}$ with linearly independent
    initial vectors.



## Bibliography {.unnumbered}

:::{#refs} 

:::

