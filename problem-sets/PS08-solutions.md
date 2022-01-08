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

      :::{.solution}
      \color{red}  
      **Solution:**
   
      $\mathbf{h_1}$ and $\mathbf{h_2}$ are solutions while
      $\mathbf{h_3}$ is *not* a solution.
   
      Indeed, let's check.
	  
	  - $D \mathbf{h_1} = \begin{bmatrix} 2e^t \\ e^t \end{bmatrix}$
	    and $A \mathbf{h_1} = \begin{bmatrix} -3 & 8 \\ -3 & 7
	    \end{bmatrix} \begin{bmatrix} 2e^t \\ e^t \end{bmatrix} =
	    \begin{bmatrix} -3 \cdot 2e^t + 8 \cdot e^t \\ -3 \cdot 2e^t +
	    7 \cdot e^t \end{bmatrix} = \begin{bmatrix} 2\cdot e^t \\ e^t
	    \end{bmatrix}$

	  - $D \mathbf{h_2} = D\begin{bmatrix} 2e^t - 4e^{3t} \\ e^t -
        3e^{3t} \end{bmatrix} = \begin{bmatrix} 2e^t - 12e^{3t} \\ e^t -
        9e^{3t} \end{bmatrix}$ and $A \mathbf{h_2} = \begin{bmatrix} -3
        & 8 \\ -3 & 7 \end{bmatrix} \begin{bmatrix} 2e^t - 4e^{3t} \\ e^t - 3e^{3t}
        \end{bmatrix}=
		\begin{bmatrix} -3 \cdot (2e^t - 4e^{3t}) + 8 \cdot (e^t - 3e^{3t}) \\ -3 \cdot (2e^t - 4e^{3t}) + 7 \cdot (e^t - 3e^{3t})
        \end{bmatrix}
		= \begin{bmatrix}
		2e^t - 12e^{3t} \\ e^t -
        9e^{3t}
		\end{bmatrix}$

      Thus $D\mathbf{h_1} = A \mathbf{h_1}$ and $D\mathbf{h_2} = A \mathbf{h_2}$
	  so that $\mathbf{h_1}$ and $\mathbf{h_2}$ are solutions.

      - $D \mathbf{h_3} = D 	  
        \begin{bmatrix} 4e^t \\ 3e^t \end{bmatrix} = \begin{bmatrix}
	    4e^t \\ 3e^t \end{bmatrix} = e^t\begin{bmatrix}
	    4 \\ 3 \end{bmatrix}$ and $A \mathbf{h_3} =
	    e^t\begin{bmatrix} -3 & 8 \\ -3 & 7 \end{bmatrix}
	    \begin{bmatrix} 4 \\ 3 \end{bmatrix} = e^t \begin{bmatrix} -3
	    \cdot 4 + 8 \cdot 3 \\ -3 \cdot 4 + 7 \cdot 3 \end{bmatrix} =
	    e^t \begin{bmatrix} 12 \\ -9 \end{bmatrix}$

    
	  Since  $D\mathbf{h_3} \ne A \mathbf{h_3}$, $\mathbf{h_3}$ is not a solution.
	  
	  Finally, we claim that $\mathbf{h_1}$ and $\mathbf{h_2}$
	  generate the general solution to $D\mathbf{x} = A \mathbf{x}$.
	  For this, we use the Wronskian test. The Wronskian matrix $W$
	  has columns $\mathbf{h_1}$ and $\mathbf{h_2}$; i.e.
	  
	  $$W = \begin{bmatrix}
	  2e^t & 2e^t - 4e^{3t} \\
	  e^t & e^t - 3e^{3t}
	  \end{bmatrix}.$$
	  Evaluating the matrix at $t=0$ gives
	  $W \vert_{t=0} = 
	  \begin{bmatrix}
	  2 & -2 \\
	  1 & -2
	  \end{bmatrix}$
	  
	  Now
	  $$\det W \vert_{t=0} = -4 - (-2) = -2.$$
	  
	  Since this determinant is non-0, the general solution is given by
	  $\mathbf{x} = c_1 \mathbf{h_1} + c_2 \mathbf{h_2}$.
	  
      -----
   
      \color{black}
      :::


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

      :::{.solution}
      \color{red}  
      **Solution:**
   
      A direct check confirms that $\mathbf{h_i}$ is a solution for $1 \le i \le 3$.
	  To see that whether they generate the general solution, consider
	  the vectors
	  $$\mathbf{v_i} = \mathbf{h_i}(0).$$
	  
	  Thus
	  $$\mathbf{v_1} = \begin{bmatrix} 1 \\ 2 \\ 0\end{bmatrix}
	  \quad 
	  \mathbf{v_2} = \begin{bmatrix} 2 \\ 4 \\ 1\end{bmatrix}
	  \quad
	  \mathbf{v_3} = \begin{bmatrix} 0 \\ 0 \\ 1\end{bmatrix}
	  $$

      We now compute the determinant of the matrix whose columns are
      the vectors $\mathbf{v_i}$:

	  $$\det
	  \begin{bmatrix}
	  1 & 2 & 0 \\
	  2 & 4 & 0 \\
	  0 & 1 & 1
	  \end{bmatrix} = \det \begin{bmatrix}
	  1 & 2 \\
	  2 & 4
	  \end{bmatrix} = 0$$

      This shows that $\mathbf{v_1},\mathbf{v_2},\mathbf{v_3}$ are
	  linearly dependent, and thus $\mathbf{h_1},\mathbf{h_2}$ and
	  $\mathbf{h_3}$ do *not* generate the general solution to $D
	  \mathbf{x} =A \mathbf{x}$.

      -----
   
      \color{black}
      :::


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

      :::{.solution}
      \color{red}  
      **Solution:**
   
      $\mathbf{x} = c_1 \begin{bmatrix}
	  \cos(2t) \\ \sin(2t)
	  \end{bmatrix} + c_2 \begin{bmatrix}
	  \sin(2t) \\ -2\cos(2t)
	  \end{bmatrix} +  \begin{bmatrix}
	  e^t \\ e^{-t}
	  \end{bmatrix}$
   
      -----
   
      \color{black}
      :::


   b. Decide whether the collection $(\clubsuit)$ is complete.

      :::{.solution}
      \color{red}  
      **Solution:**
   
      The indicated solution will be *complete* provided that
	  $\mathbf{h_1}$ and $\mathbf{h_2}$ generate the general solution
	  to the homogeneous equation $D \mathbf{x} = A \mathbf{x}$.
   
      To decide this, we consider the Wronskian matrix
	  $W$ whose columns are $\mathbf{h_1}$ and $\mathbf{h_2}$; thus
	  $$W = \begin{bmatrix}
	  \cos(2t) & \sin(2t) \\ \sin(2t) & -2 \cos(2t)
	  \end{bmatrix}$$
   
      We compute the determinant after evaluation at $t=0$:
	  $$\det W \vert_{t=0} = \det
	  \begin{bmatrix}
	  1 & 0 \\ 0 & -2
	  \end{bmatrix} = -2.$$
   
      Since this determinant is non-zero, $\mathbf{h_1}$ and
	  $\mathbf{h_2}$ generate the general solution to the homogeneous
	  equation $D \mathbf{x} = A \mathbf{x}$, and this confirms that
	  $(\clubsuit)$ is *complete* (since $\mathbf{p}$ is a *particular
	  solution*).
	  
      -----
   
      \color{black}
      :::


3. Check each of the following lists of vectors for linear independence. 

   a. $\mathbf{v_1} = \begin{bmatrix} 1 \\ 0 \\ 1 \\ 1 \end{bmatrix},
      \quad \mathbf{v_2} = \begin{bmatrix} 1 \\ 0 \\ 0 \\
      3\end{bmatrix}, \quad \mathbf{v_3} = \begin{bmatrix} 1 \\ 1 \\ 0
      \\ 0 \end{bmatrix}.$
   
      :::{.solution}
      \color{red}  
      **Solution:**
   
      Suppose that $c_1,c_2,c_3$ are scalars and that
	  $$\begin{bmatrix} 0 \\ 0 \\ 0 \\ 0 \end{bmatrix}
	  = c_1 \begin{bmatrix} 1 \\ 0 \\ 1 \\ 1 \end{bmatrix}
	  + c_2 \begin{bmatrix} 1 \\ 0 \\ 0 \\
      3\end{bmatrix}
	  + c_3\begin{bmatrix} 1 \\ 1 \\ 0 \\ 0 \end{bmatrix} =
      \begin{bmatrix} c_1 + c_2 + c_3 \\ c_3 \\ c_1 \\ c_1 + 3c_2
      \end{bmatrix} $$ Examination of the 2nd and 3rd entries shows
      that $c_1 = c_3 = 0$.  Then examination of the 1st (or 4th)
      entry shows that $c_2 = 0$.
	  
	  Since all $c_i$ must be zero, we have confirmed that the vectors
      are *linearly independent*.
   
      -----
   
      \color{black}
      :::
   
   
   b. $\mathbf{v_1} = \begin{bmatrix} 1 \\ 1 \\ -2 \\ 2 \end{bmatrix},
      \quad \mathbf{v_2} = \begin{bmatrix} 1 \\ 0 \\ 2 \\ 0
      \end{bmatrix}, \quad \mathbf{v_3} = \begin{bmatrix} -1 \\ 2 \\
      -6 \\ 4 \end{bmatrix}.$

      :::{.solution}
      \color{red}  
      **Solution:**

      Suppose that $c_1,c_2,c_3$ are scalars and that
	  $$\begin{bmatrix} 0 \\ 0 \\ 0 \\ 0 \end{bmatrix}
	  = c_1 \begin{bmatrix} 1 \\ 1 \\ -2 \\ 2 \end{bmatrix} + 
      c_2 \begin{bmatrix} 1 \\ 0 \\ 2 \\ 0 \end{bmatrix} + 
	  c_3 \begin{bmatrix} -1 \\ 2 \\
      -6 \\ 4 \end{bmatrix}
	  = \begin{bmatrix}
	  1 & 1 & -1 \\
	  1 & 0 & 2 \\
	  -2 & 2 & -6 \\
	  2 & 0 & 4
	  \end{bmatrix} \cdot \begin{bmatrix}c_1 \\ c_2 \\ c_3 \end{bmatrix}$$
   
      If $A = \begin{bmatrix}
	  1 & 1 & -1 \\
	  1 & 0 & 2 \\
	  -2 & 2 & -6 \\
	  2 & 0 & 4
	  \end{bmatrix}$ then $\mathbf{c} = \begin{bmatrix}c_1 \\ c_2 \\ c_3 \end{bmatrix}$
	  is a solution to the homogeneous matrix equation $A \mathbf{x}= \mathbf{0}$.
   
      We have row equivalences
	  $$A \sim 
	  \begin{bmatrix}
	  1 & 1 & -1 \\
	  1 & 0 & 2 \\
	  1 & -1 & 3 \\
	  1 & 0 & 2
	  \end{bmatrix} \sim 
	  \begin{bmatrix}
	  1 & 1 & -1 \\
	  1 & -1 & 3 \\
	  1 & 0 & 2 \\
	  0 & 0 & 0 
	  \end{bmatrix}	 \sim 
	  \begin{bmatrix}
	  1 & 1 & -1 \\
	  0 & -2 & 4 \\
	  0 & -1 & 3 \\
	  0 & 0 & 0 
	  \end{bmatrix}	 \sim 
	  \begin{bmatrix}
	  1 & 1 & -1 \\
	  0 & 1 & 2 \\
	  0 & 1 & -3 \\
	  0 & 0 & 0 
	  \end{bmatrix} \sim 
	  \begin{bmatrix}
	  1 & 1 & -1 \\
	  0 & 1 & 2 \\
	  0 & 0 & -5 \\
	  0 & 0 & 0 
	  \end{bmatrix}$$
	  
	  In particular, there are *no* free variables, so the only
	  solution is $\mathbf{c} = \mathbf{0}$. This means that $c_1 =
	  c_2 = c_3 =0$ and we conclude that the vectors are linearly
	  independent.
   
      -----
   
      \color{black}
      :::


4. Write the vector-valued function

   $$\mathbf{x} = \begin{bmatrix}
   1-3c_1 + 2tc_2  \\
   c_2\cos(t) + c_3 - 1\\
   c_1\sin(t) -c_2/t + 5c_3 + e^t
   \end{bmatrix}$$

   in the form
   $$c_1 \mathbf{f_1} + c_2 \mathbf{f_2} + c_3 \mathbf{f_3} + \mathbf{p}$$
   for vector-valued functions $\mathbf{f_i}$ and $\mathbf{p}$.

   :::{.solution}
   \color{red}  
   **Solution:**
   
   $$\mathbf{x} = c_1 \begin{bmatrix} -3 \\ 0  \\ \sin(t) \end{bmatrix} +
   c_2 \begin{bmatrix} 2t \\ \cos(t) \\ -1/t \\ \end{bmatrix} +
   c_3 \begin{bmatrix} 0 \\ 1 \\ 5 \end{bmatrix}
   + \begin{bmatrix} 1 \\ -1 \\ e^t \end{bmatrix}$$
   
   -----
   
   \color{black}
   :::


# Bibliography {.unnumbered} 

::: {#refs} 
:::
