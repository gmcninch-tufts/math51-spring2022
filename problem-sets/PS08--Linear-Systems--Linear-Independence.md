---
author: Math 51 Fall 2021
title: |
  Problem Set 8 \
  Properties of Linear Systems & Linear Independence
date: due 2021-11-07 at 11:59 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---
These problems concern [@gutermanNitecki §3.3 & 3.4].

1. Consider the the following matrices $A$ and lists of vector-valued
   functions $\mathbf{h_i}$. In each case, answer the following questions:
   
   - Which of the functions $\mathbf{h_i}$ are *solutions* to the
     homogeneous equation $D\mathbf{x} = A \mathbf{x}$? Be sure to
     indicate how you reach your conclusion.
	 
   - Consider the functions that are solutions. Do they generate the
     general solution to $D\mathbf{x} = A \mathbf{x}$? Why or why not?

   a. $A = \begin{bmatrix} -3 & 8 \\ -3 & 7 \end{bmatrix}; \quad \mathbf{h_1} =
      \begin{bmatrix} 
	  2e^t \\ e^t 
	  \end{bmatrix}, 
	  \quad \mathbf{h_2} =
      \begin{bmatrix} 
	  2e^t - 4e^{3t} \\
	  e^t - 3e^{3t}	  
	  \end{bmatrix},
	  \quad \mathbf{h_3} =
	  e^t
      \begin{bmatrix} 
	  4  \\
	  3 
	  \end{bmatrix}.$
   
   b. $A = \begin{bmatrix} 
      0 & 1 & 0 \\
	  -2 & 2 & 0 \\
	  0 & 0 & -2
	  \end{bmatrix};$
	  
	  $\mathbf{h_1} =
      e^t \begin{bmatrix} 
	  \cos(t) + \sin(t) \\ 
	  2\cos(t) \\ 0
	  \end{bmatrix}, \quad  \mathbf{h_2} =  
      e^t\begin{bmatrix} 
	  2\cos(t) + 2\sin(t) \\ 
	  4\cos(t) \\ e^{-3t}	\end{bmatrix}, \quad \mathbf{h_3} =
      \begin{bmatrix} 0 \\ 0 \\ e^{-2t} \end{bmatrix}.$

2. Let $$A = \begin{bmatrix} 0 & -1 \\ 4 & 0 \end{bmatrix}, \quad
   \mathbf{E} = \begin{bmatrix} 0 \\ -5e^t \end{bmatrix}.$$ The
   formulas $$(\clubsuit) \quad \left \{ \begin{matrix*}[l] x_1 = &
   c_1 \cos(2t) + c_2 \sin(2t) + e^t \\ x_2 = & -2c_2 \cos(2t) + 2c_1
   \sin(2t) - e^t \end{matrix*} \right .$$ describe a collection of
   solutions to the nonhomogeneous system $D \mathbf{x} = A
   \mathbf{x} + \mathbf{E}$.
   
   a. Write the collection $(\clubsuit)$ of solutions in the form
      $\mathbf{x} = c_1 \mathbf{h_1} + c_2 \mathbf{h_2} + \mathbf{p}$
      where $\mathbf{h_1}$ and $\mathbf{h_2}$ are solutions to the
      homogeneous system $D\mathbf{x} = A\mathbf{x}$.
	  
   b. Decide whether the collection $(\clubsuit)$ is complete.
   
3. Check each of the following lists of vectors for linear independence. 

   a. $\mathbf{v_1} = \begin{bmatrix}
   1 \\ 0 \\ 1 \\ 1 \end{bmatrix}, \quad
   \mathbf{v_2} = \begin{bmatrix} 
   1 \\ 0 \\ 0 \\ 3\end{bmatrix}, \quad
   \mathbf{v_3} = \begin{bmatrix} 
   1 \\ 1 \\ 0 \\ 0
   \end{bmatrix}.$
   
   b. $\mathbf{v_1} = \begin{bmatrix}
   1 \\ 1 \\ -2 \\ 2 \end{bmatrix}, \quad
   \mathbf{v_2} = \begin{bmatrix} 
   1 \\ 0 \\ 2 \\ 0 \end{bmatrix}, \quad
   \mathbf{v_3} = \begin{bmatrix} 
   -1 \\ 2 \\ -6 \\ 4  \end{bmatrix}.$

4. Write the vector-valued function

   $$\mathbf{x} = \begin{bmatrix}
   1-3c_1 + 2tc_2  \\
   c_2\cos(t) + c_3 - 1\\
   c_1\sin(t) -c_2/t + 5c_3 + e^t
   \end{bmatrix}$$

   in the form
   $$c_1 \mathbf{f_1} + c_2 \mathbf{f_2} + c_3 \mathbf{f_3} + \mathbf{p}$$
   for vector-valued functions $\mathbf{f_i}$ and $\mathbf{p}$.

# Bibliography {.unnumbered} 

::: {#refs} 
:::
