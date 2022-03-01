---
author: Math 51 Fall 2021
title: |
  Problem Set 7 -- **Solutions** \
  Linear Systems of ODES; independence
date: due Monday 2022-03-07 at 11:59 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
  \usepackage{mathtools}  
---

# Problems 

#. For each of the following systems of ODEs, decide whether it is linear.
   For each linear system, do also the following:
   - indicate whether it is homogeneous
   - find a matrix $A$ and a vector $\mathbf{E}$ such that the system can
     be rewritten in the form $$D \mathbf{x} = A \mathbf{x} + \mathbf{E}$$ where
     $\mathbf{x} = \begin{bmatrix} x \\ y \\ z \end{bmatrix}$ (or
     $\mathbf{x} = \begin{bmatrix} x \\ y \end{bmatrix}$).
   
   $$\quad (a)\quad \left \{ \begin{matrix*}[l]
   x' =& ty - z \\
   y' =&  -\dfrac{x}{t} - z + 1 \\
   z' =&  -x -t^2y + z + 2t
   \end{matrix*} \right .
   \quad \quad (b) \quad \left \{\begin{matrix*}[l]
   x' =& 2x - 3y \\
   y' =& 3x^2y + y + 1
   \end{matrix*} \right .
   \quad \quad (c) \quad \left \{
   \begin{matrix*}[l]
   x' =& 7x + 11y \\
   y' =& -2x + y
   \end{matrix*}
   \right .$$

   :::{.solution}
   \color{red}
   **Solution:**

   (a) The system is linear, but is not homogeneous. It can be written
	  
   $$D \begin{bmatrix} x \\ y \\ z \end{bmatrix} =
   \begin{bmatrix} 0 & t & -1 \\
   \dfrac{-1}{t} & 0 & -1 \\
   -1 & -t^2 & 1
   \end{bmatrix}
   \begin{bmatrix} x \\ y \\ z \end{bmatrix}
   +
   \begin{bmatrix} 0 \\ 1 \\ 2t \end{bmatrix}$$
	  
	  
   (b) The system is not linear, because the dependence $y' = 3x^2y + y + 1$
   is not linear (it involves the non-linear term $x^2 y$).


   (c) The system is linear and homogeneous. It can be written
	  
   $$D \begin{bmatrix} x \\ y  \end{bmatrix} =
   \begin{bmatrix} 7 & 11 \\
   -2 &  1 
   \end{bmatrix}
   \begin{bmatrix} x \\ y  \end{bmatrix}$$
   
   
   -----
   
   \color{black}
   :::


#. Let $A = \begin{bmatrix}
    0 & 1 \\
	-1 & 0 
   \end{bmatrix}$ and consider the non-homogeneous system 
   $$(\clubsuit) \quad D \begin{bmatrix} x\\ y \end{bmatrix} = A \begin{bmatrix} x\\
   y \end{bmatrix} + \begin{bmatrix} t \\ -1 \end{bmatrix}.$$
   
   a. Show that $\mathbf{h_1}(t) = \begin{bmatrix} \sin(t) \\ \cos(t)
      \end{bmatrix}, \quad \mathbf{h_2}(t) = \begin{bmatrix} \cos(t)
      \\ -\sin(t) \end{bmatrix}$ are solutions to the corresponding
      *homogeneous system* $D \begin{bmatrix} x\\ y \end{bmatrix} = A
      \begin{bmatrix} x\\ y \end{bmatrix}.$
   
      :::{.solution}
      \color{red}
      **Solution:**

      To check that $\mathbf{h_1}$ is a solution, we compute
	  $$D\mathbf{h_1} = \begin{bmatrix}
	  \dfrac{d}{dt} \sin(t) \\ \dfrac{d}{dt} \cos(t)
	  \end{bmatrix}=
	  \begin{bmatrix}
	  \cos(t) \\ -\sin(t)
	  \end{bmatrix}$$
	  and
	  $$A\mathbf{h_1} = \begin{bmatrix}
      0 & 1 \\
	  -1 & 0 
	  \end{bmatrix}\begin{bmatrix} \sin(t) \\ \cos(t)
      \end{bmatrix} = 
	  \begin{bmatrix} 0 \sin(t) + 1\cos(t) \\
	  -1 \sin(t) + 0\cos(t)
      \end{bmatrix}
	  = 
	  \begin{bmatrix}
	  \cos(t) \\ -\sin(t)
	  \end{bmatrix}.$$
	  Since these expressions agree, $\mathbf{h_1}$ is a solution.


      To check that $\mathbf{h_2}$ is a solution, we compute
	  $$D\mathbf{h_2} = \begin{bmatrix}
	  \dfrac{d}{dt} \cos(t) \\ \dfrac{d}{dt}[ -\sin(t)]
	  \end{bmatrix}=
	  \begin{bmatrix}
	  -\sin(t) \\ -\cos(t)
	  \end{bmatrix}$$
	  and
	  $$A\mathbf{h_1} = \begin{bmatrix}
      0 & 1 \\
	  -1 & 0 
	  \end{bmatrix}\begin{bmatrix} \cos(t) \\ -\sin(t)
      \end{bmatrix} = 
	  \begin{bmatrix} 0 \cos(t) + 1(-\sin(t)) \\
	  -1 \cos(t) + 0(-\sin(t))
      \end{bmatrix}
	  = 
	  \begin{bmatrix}
	  -\sin(t) \\ -\cos(t)
	  \end{bmatrix}.$$
	  Since these expressions agree, $\mathbf{h_2}$ is a solution.

      -----
   
      \color{black}
      :::    
   

   b. Show that $\mathbf{p}(t) = \begin{bmatrix} 0 \\ -t \end{bmatrix}$ is a
      *particular solution* to the $(\clubsuit)$.
   
      :::{.solution}
      \color{red}
      **Solution:**

      Compute
	  $$D \mathbf{p} = \begin{bmatrix} 0 \\ -1 \end{bmatrix}$$
	  and
	  $$A \mathbf{p} + \begin{bmatrix} t \\ -1
      \end{bmatrix} = \begin{bmatrix}
      0 & 1 \\
	  -1 & 0 
	  \end{bmatrix}\begin{bmatrix} 0 \\ -t
      \end{bmatrix} + \begin{bmatrix} t \\ -1
      \end{bmatrix}=\
	  \begin{bmatrix} -t \\ 0
      \end{bmatrix} + \begin{bmatrix} t \\ -1
      \end{bmatrix} = 
	  \begin{bmatrix} 0 \\ -1
      \end{bmatrix}
	  $$

      Since these expressions are equation,  $\mathbf{p}$ is a solution to
	  $(\clubsuit)$.

      -----
   
      \color{black}
      :::

   c. Show that the initial vectors $\mathbf{h}_1(0)$ and
      $\mathbf{h}_2(0)$ are linearly independent. Find the *general
      solution* to $(\clubsuit)$.

      :::{.solution}
      \color{red}
      **Solution:**

      Note that $\mathbf{h}_1(0) = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$
	  and $\mathbf{h}_2(0) = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$;
	  since $\det \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} = -1 \ne 0$, 
	  these vectors are linearly independent. Thus
	  $\mathbf{h}_1$ and $\mathbf{h}_2$  generate the general solution to the homogeneous
	  system $D \mathbf{x} = A \mathbf{x}$ and so the 
      the general solution to the inhomogeneous system is given by
	  \begin{align*}
	  \mathbf{x}(t) &= \mathbf{p}(t) + c_1 \mathbf{h}_1(t) + c_2 \mathbf{h}_2(t) \\
	  &= \begin{bmatrix} 0 \\ -t \end{bmatrix}
	  + c_ 1\begin{bmatrix} \sin(t) \\ \cos(t)
      \end{bmatrix}
	  + c_2 \begin{bmatrix} \cos(t) \\ -\sin(t)
	  \end{bmatrix}
	  \end{align*}
	  
      -----
   
      \color{black}
      :::

   


#. Consider the linear ODE
   $$\mathbf{(N)} \quad (D - 3)^2x = e^{3t} \quad \text{i.e.} \quad (D^2 - 6x + 9)x = e^{3t}.$$
   
   a. Find the equivalent linear system $\mathbf{(S_N)}$ of
      ODEs. Write this system in *matrix form*.
   
      :::{.solution}
      \color{red}
      **Solution:**

      We set $\mathbf{x} = \begin{bmatrix} x_1 \\ x_2 \end{bmatrix}$.
	  For a solution $x$ of $(\mathbf{N})$ we set $x_1 = x$ and $x_2 = x'$.

      We have that $x_1' = x_2$ and
	  $$x_2' = x'' = -9x + 6x'  + e^{3t}= -9 x_1 + 6x_2 + e^{3t}.$$
	  
	  Thus we the system in matrix form
	  $$D \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} =
	  \begin{bmatrix} 0 & 1 \\ -9 & 6 \end{bmatrix}
	  \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} +
	  \begin{bmatrix} 0 \\ e^{3t} \end{bmatrix}$$
	  is equivalent to $(\mathbf{N})$.
	  
      -----
   
      \color{black}
      :::
   
   
   b. Note that the general solution to the homogeneous equation 
      $\mathbf{(H)} \quad (D-3)^2x =0$  is generated by $h_1(t) =
      e^{3t}$ and $h_2(t) = te^{3t}$.  Find the corresponding vector
      solutions $\mathbf{h}_1$ and $\mathbf{h}_2$ to the homogeneous
      system $\mathbf{(S_H)}$.

      :::{.solution}
      \color{red}
      **Solution:**
	  
	  $$\mathbf{h_1} =\begin{bmatrix}
	  h_1(t) \\ h_1'(t)
	  \end{bmatrix} = 
	  \begin{bmatrix}
	  e^{3t} \\
	  3e^{3t}
	  \end{bmatrix} \quad \text{and} \quad
	  \mathbf{h_2} =\begin{bmatrix}
	  h_2(t) \\ h_2'(t)
	  \end{bmatrix} = 
	  \begin{bmatrix}
	  te^{3t} \\
	  (1+3t)e^{3t}
	  \end{bmatrix}
	  $$


      -----
   
      \color{black}
      :::


   c. Find a particular solution $p(t)$ to the equation $(D-3)^2 x =
      e^{3t}$, and find the corresponding vector solution
	  $\mathbf{p}(t)$ to the system $\mathbf{(S_N)}$.

      :::{.solution}
      \color{red}
      **Solution:**

      We can use the method of *undetermined coefficients*. We take
	  $A(D) = D-3$.  The general solution to $A(D)(D-3)^2 = (D-3)^3$
	  is generated by $e^{3t}, te^{3t}, t^2e^{3t}$ but the first two
	  functions are already solutions to the homogeneous equation
	  $(\mathbf{H})$ and may be eliminated.
	  
	  Thus our simplified guess for a particular solution is $k t^2 e^{3t}$
	  and we must find the constant $k$.
	  
	  For this, we apply the operator $(D-3)^2$ and use the
	  exponential shift formula:
	  $$(D-3)^2[kt^2 e^{3t}] = ke^{3t} (D+3-3)^2[t^2] = ke^{3t} D^2 [t^2] = 2ke^{3t}.$$
	  
	  We need $2ke^{3t} = e^{3t}$ so $k = 1/2$ and our particular solution is 
	  $p(t) = \dfrac{1}{2} t^2 e^{3t}$.

      In vector form we have
	  $$\mathbf{p} = \begin{bmatrix} p(t) \\ p'(t) \end{bmatrix} =
	  \begin{bmatrix} 
	  \dfrac{1}{2} t^2 e^{3t} \\
	  e^{3t} (t + \dfrac{3}{2}t^2)
	  \end{bmatrix}
	  = e^{3t}\begin{bmatrix}
	  t^2/2 \\
	  (3t^2 + 2t)/2
	  \end{bmatrix}.$$

      -----
   
      \color{black}
      :::


   d. The general solution to $\mathbf{(N)}$ is given by $x(t) =
      p(t) + c_1 h_1(t) + c_2 h_2(t)$. What is the general solution to
      the system $\mathbf{(S_N)}$?

      :::{.solution}
      \color{red}
      **Solution:**

      $$\mathbf{x}  = \mathbf{p} + c_1 \mathbf{h_1} + c_2 \mathbf{h_2} 
	  = e^{3t}\begin{bmatrix}
	  t^2/2 \\
	  (3t^2 + 2t)/2
	  \end{bmatrix} +
      c_1 
	  \begin{bmatrix}
	  e^{3t} \\
	  3e^{3t}
	  \end{bmatrix}  + c_2
	  \begin{bmatrix}
	  te^{3t} \\
	  (1+3t)e^{3t}
	  \end{bmatrix}$$

      -----
   
      \color{black}
      :::



#. Consider the the following matrices $A$ and lists of vector-valued
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
	  \end{bmatrix}; \quad \mathbf{h_1} =
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


#. Let $$A = \begin{bmatrix} 0 & -1 \\ 4 & 0 \end{bmatrix}, \quad
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



#. Check the following list of vectors for linear independence:

   $\mathbf{v_1} = \begin{bmatrix}
   1 \\ 0 \\ 1 \\ 1 \end{bmatrix}, \quad
   \mathbf{v_2} = \begin{bmatrix} 
   1 \\ 0 \\ 0 \\ 3\end{bmatrix}, \quad
   \mathbf{v_3} = \begin{bmatrix} 
   1 \\ 1 \\ 0 \\ 0
   \end{bmatrix}.$
   

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


# Bibliography {.unnumbered}

:::{#refs}
:::
