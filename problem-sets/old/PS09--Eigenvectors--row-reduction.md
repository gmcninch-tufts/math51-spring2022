---
author: Math 51 Fall 2021
title: |
  Problem Set 9 \
  Eigenvalues, eigenvalues, and row reduction
date: due 2021-11-14 at 11:59 PM
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---
These problems concern [@gutermanNitecki §3.5 & 3.6].

#. Consider the matrix $$B = \begin{bmatrix}
   1 & -2 & 3 & 1 \\
   -1 & 1 & -2 & 0 \\
   2 & -1 & 3 & -1
   \end{bmatrix}.$$
   
   Find the general solution to the homogeneous matrix equation
   $(\clubsuit) \quad B \mathbf{x} = \mathbf{0}$.
   
   **Recall:** In order to solve the matrix equation, apply row
   operations to $B$ in order to identify the *pivot variables* (or
   *corner variables*).  Each *non-pivot variable* determines a
   corresponding solution  to $(\clubsuit)$; in this case, it is
   vector in $\mathbb{R}^4$. The general solution is a linear
   combination of these solution vectors.

#. For each of the following matrices $B$, perform row-operations on $B$ 
   to find the number of pivot-variables and the number of non-pivot
   variables involved in finding the solutions to the homogeneous
   matrix equation $B\mathbf{x} = \mathbf{0}$.
   
   a. $B = \begin{bmatrix} 2 & 2 & -2 & 0 & 0 & 0 \\ -1 & -1 & -2 & 1 & 1
      & 0 \\ 2 & 2 & 4 & -2 & -2 & 0 \end{bmatrix}$
	  
   b. $B = \begin{bmatrix} 2 & 2 & 1 \\ 1 & 1 & 2 \\ 2 & 2 & 4 \\ 
   -1 & -1 & -2 \\\end{bmatrix}$
	  

#. For each of the matrices $A$, do the following:

   - find the eigenvalues of $A$
   
   - for each eigenvalue $\lambda$, find the general solution to the
     equation $(A-\lambda \mathbf{I})\mathbf{x} = \mathbf{0}$ to find
	 the corresponding eigenvectors.
   
   a. $A = \begin{bmatrix} -3 & 1 \\ -1 & -1 \end{bmatrix}$
   
   b. $A = \begin{bmatrix} 0 & -2 & 2 \\ 1 & 3 & -2 \\ 0 & 0 & -3
      \end{bmatrix}$

#. Notice that the determinant of an *upper triangular* matrix is always the product of the 
   *diagonal entries.* Consider the upper-triangular matrix $$A =
   \begin{bmatrix} 2 & 0 & 1 & 1 \\ 0 & 3 & 0 & 1 \\ 0 & 0 & 1 & 1 \\
   0 & 0 & 0 & 0 \end{bmatrix}.$$
  
   a. Find the *eigenvalues* of $A$.
	
   b. One of the eigenvalues you found in a. should have been $\lambda
      = 0$. Find an eigenvector with eigenvalue $0$.


## Bibliography {.unnumbered} 

::: {#refs} 
:::
