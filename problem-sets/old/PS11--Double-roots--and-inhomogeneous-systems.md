---
author: Math 51 Fall 2021
title: |
  Problem Set 11 \
  Double roots and inhomogeneous systems
date: due 2021-12-5 at 11:59 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---
These problems concern [@gutermanNitecki §3.9 & 3.11].

#. The matrix $A = \begin{bmatrix} 1 & -1 \\ 1 & 3 \end{bmatrix}$
   has eigenvalue $\lambda = 2$ with multiplicity 2, but $A$ has only one independent
   eigenvector $\mathbf{v} = \begin{bmatrix} 1 \\ -1 \end{bmatrix}$.
   Find the general solution to $D \mathbf{x} = A \mathbf{x}$.
   
#. Let $A = \begin{bmatrix}
   2 & 0 & 1 \\
   -1 & 2 & 2 \\
   -1 & 4 & 0 \end{bmatrix}$.
   The characteristic polynomial of $A$ is $(\lambda-3)^2 \cdot (\lambda+2)$.
   
   Note that $$A-3\mathbf{I_3} = \begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix} \quad \text{and} \quad
   (A-3\mathbf{I_3})^2 = 
    \begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix} \cdot
    \begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix} = 
   \begin{bmatrix}
   0 & 4 & -4 \\
   0 & 9 & -9 \\
   0 & -16 & 16 
   \end{bmatrix}.$$

   Find the general solution to the system $D \mathbf{x} = A \mathbf{x}$.
   
   As a suggestion, you might proceed using the following steps:

   -  Explain why there is only one linearly independent eigenvector
      for $\lambda = 3$, and find such an eigenvector.
	  
   -  Find the general solution to $(A-3\mathbf{I_3})^2 \mathbf{x} =
      \mathbf{0}$ -- i.e. find the *generalized $3$-eigenvectors*.
   
   -  Find a generalized $3$-eigenvector $\mathbf{v}$ which is not
      a $3$-eigenvector.  
	  
   -  Check that $\mathbf{v}_1 = (A - 3\mathbf{I_3})\mathbf{v}$ is a
      $3$-eigenvector and that $\mathbf{v}$ and $\mathbf{v}_1$ are
      linearly independent.
	  
   -  Find solutions $\mathbf{h}_1(t)$ and $\mathbf{h}_2(t)$ to 
      $D \mathbf{x} = A \mathbf{x}$ with the property
	  that $\mathbf{h}_1(0) = \mathbf{v}$ and
	  $\mathbf{h}_2(0) = \mathbf{v}_1$.
	  
   -  Now find the general solution to $A \mathbf{x} = D \mathbf{x}$
      by using $\mathbf{h}_1(t)$ and $\mathbf{h}_2(t)$ together with a
      solution corresponding to the eigenvalue $\lambda = -2$.

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
