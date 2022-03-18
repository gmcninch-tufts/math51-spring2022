---
author: George McNinch - Math 51 Fall 2021
title: |
  Recitation handout
  Eigenvectors and solutions to systems of ODEs
date: 2022-03-18
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=20mm,bottom=20mm,left=20mm,right=20mm]{geometry}
---

#. Consider the matrices

   $$A = \begin{bmatrix} 2 & 0 & 1\\ 1 & 2 & 1\\ -1 &
   0 & 1 \end{bmatrix}
   \quad \text{and}\quad B = \begin{bmatrix} 2&1&-1\\ 0&2&0\\ 1&1&1
   \end{bmatrix}$$
   
   a. Find the eigenvalues of $A$ and of $B$.
   
      \vfil
	  
   b. Describe how to obtain matrix $B$ from matrix $A$. 

      \vfil

   c. How are the eigenvalues of $A$ and $B$ related?

      \vfil
   
#. Find four linearly independent  eigenvectors for the following matrix:
   $$A = \begin{bmatrix}
   1&0&0&0\\
   0&2&0&0\\
   0&0&3&0\\
   0&0&0&4
   \end{bmatrix}$$

   \vfil
   \newpage

#. The eigenvalues of the following matrix $A = \begin{bmatrix}
   1&1&1\\0&2&0\\0&0&1\end{bmatrix}$ are 1 and 2. The vector
   $\mathbf{v} = \begin{bmatrix} 1\\0\\0
   \end{bmatrix}$ is an eigenvector for $\lambda = 1$ and $\mathbf{w} = \begin{bmatrix}
   1\\1\\0
   \end{bmatrix}$ is an eigenvector for $\lambda = 2$.

   a. The eigenvalue $\lambda = 1$ has multiplicity 2. However, show that in this case,
      there are \emph{not} two linearly independent eigenvectors for $\lambda = 1$.

      \vfil

   b. Let $\mathbf{h}_1(t) = e^t\mathbf{v}$ and $\mathbf{h}_2(t)=e^{2t}\mathbf{w}$. Explain why, for
      any $c_1,c_2$, the vector-valued function $\mathbf{x}(t) =
	  c_1\mathbf{h}_1(t)+c_2\mathbf{h}_2(t)$ is a solution to $D \mathbf{x} = A
	  \mathbf{x}$, but this is
	  not the \emph{general} solution.  

      \vfil
	  
   c. Let $\mathbf{x}(t)$ be a solution to $D\mathbf{x}=A\mathbf{x}$ with
      $\mathbf{x}(0)=\begin{bmatrix} 1\\-1\\0 \end{bmatrix}$. Find scalars
      $c_1,c_2$ such that $\mathbf{x}(t) = c_1\mathbf{h}_1(t)+c_2\mathbf{h}_2(t)$.

      \vfil
	  
   d. Let $\mathbf{x}(t)$ be a solution to $D\mathbf{x}=A\mathbf{x}$
      with $\mathbf{x}(0)=\begin{bmatrix} 0\\2\\1 \end{bmatrix}$. Show
      that there are no scalars $c_1,c_2$ for which $\mathbf{x}(t) =
      c_1\mathbf{h}_1(t)+c_2\mathbf{h}_2(t)$.

      \vfil

   \newpage

#. Solve the initial value problem 
   $$ D\mathbf{x} = \begin{bmatrix} 2&-1\\ 3&1
   \end{bmatrix}\mathbf{x}; \quad \text{where} \quad \mathbf{x}(0)=\begin{bmatrix} 1\\ 1 \end{bmatrix} $$
