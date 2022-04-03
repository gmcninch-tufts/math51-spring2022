---
author: Math 51 Spring 2022
title: |
  Problem Set 11 \
  Non-homogeneous systems
date: 2022-04-04 -- because of Midterm 2, this assignment won't be collected
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---
These problems concern [@gutermanNitecki §3.11].


#. The matrix $A = \begin{bmatrix} 1 & 1 \\ 3 & 1 \end{bmatrix}$
   has eigenvalues $\lambda = 1 + \sqrt{3}$, $\mu = 1 - \sqrt{3}$, and
   the general solution to $D \mathbf{x} = A \mathbf{x}$ is given by
   $$\mathbf{x}(t) = c_1 e^{\lambda t} \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix}
   + c_2 e^{\mu t} \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix}.$$



   a. Find the general solution to the inhomogeneous equation $D
      \mathbf{x} = A \mathbf{x} + \begin{bmatrix} 1 \\ 1
      \end{bmatrix}$.

   b. Solve the initial value problem $D
      \mathbf{x} = A \mathbf{x} + \begin{bmatrix} 1 \\ 1
      \end{bmatrix}; \quad \mathbf{x}(0) = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$.

#. The matrix $A = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ has
   characteristic polynomial $\lambda^2 - 2\lambda$, and thus
   has eigenvalues $\lambda = 0,2$.

   The general solution to $(H) \quad D \mathbf{x} = A \mathbf{x}$ is given by
   $$\mathbf{x} = c_1 \begin{bmatrix} -1 \\ 1 \end{bmatrix}
   + c_2 e^{2t} \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$

   Find the general solution to the inhomogeneous equation $D
   \mathbf{x} = A\mathbf{x} + \begin{bmatrix} 0 \\ t \end{bmatrix}$.

## Bibliography {.unnumbered} 

::: {#refs} 
:::
