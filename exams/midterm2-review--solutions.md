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

   :::{.solution}
   \color{red}  
   **Solution:**

   Note first that the polynomial $r^2 -6r +10$ has roots $\lambda = 3
   \pm i$.

   Thus we see that $h_1(t) = e^{3t} \cos(t)$ and $h_2(t) = e^{3t}
   \sin(t)$ generate the general solution to the homogeneous ODE.
   
   We seek a solution of the form
   $$x(t) = c_1 h_1(t) + c_2 h_2(t) = c_1 e^{3t} \cos(t) + c_2 e^{3t} \sin(t)$$
   for constants $c_1,c_2$.
   
   Note that $x'(t) = c_1 e^{3t}( -\sin(t) + 3\cos(t) + c_2 e^{3t} (\cos(t) + 3\sin(t))$.
   
   We need the conditions
   $1 = x(0) = c_1$ and $1 = x'(0) = 3c_1 + c_2$. 
   
   Thus $c_1 = 1$ and $c_2 = -2$ so the required solution is
   $$x(t) = e^{3t} \cos(t) -2 e^{3t} \sin(t) = e^{3t}(\cos(t) - 2\sin(t))$$
   
   -----
   
   \color{black}
   :::


2. Consider the linear ODE $(D^2 - 4)x = e^{2t} + e^{3t}.$

   a. Find a *simplified guess* for a particular solution $p(t)$ for
   the ODE.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  We must first find an operator $A(D)$ for which $A(D)[e^{2t} = e^{3t}] = 0$.
	  For this, we may take $A(D) = (D - 2)(D-3)$.
	  
	  Now, any solution to the given ODE will be a solution to the homogeneous ODE
	  $A(D) \cdot (D^2 -4) x = 0$, i.e. to
	  
	  $$(D-2)^2(D-3)(D+2)x = 0.$$
	  
	  This homogeneous ODE has solutions
	  
	  $$e^{2t}, te^{2t}, e^{3t}, e^{-2t}.$$
   
      Of these,$e^{2t}$ and $e^{-2t}$ are solutions to the homogeneous equation
	  $(D^2-4)x = 0$ corresponding to the original ODE, so we may eliminate these solutions.
	  
	  Thus our simplified guess is given by
	  
	  $$p(t) = k_1 te^{2t} + k_2 e^{3t}$$
   
      for constants $k_1,k_2$.
   
      -----
      
      \color{black}
      :::


   b. Use the method of *undetermined coefficients* to find $p(t)$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  We need $(D^2 - 4)[p(t)] = e^{2t} + e^{3t}$.
	  
	  We first compute 
	  $$(D^2 - 4)[te^{2t}] = e^{2t} ((D+2)^2 - 4)[t] = e^{2t} (D^2 + 4D)[t] = 4e^{2t}$$
	  and
	  $$(D^2 - 4)[e^{3t}] = e^{3t} ((D+3)^2 - 4)[1] = e^{3t} (D^2 + 6D +5)[1] = 5e^{3t}$$
	  
	  With these computations, we now find
	  $$(D^2-4)[k_1te^{2t} + k_2 e^{3t}] = 
	  k_1 4e^{2t} + k_2 5e^{3t}.$$
   
      Thus we *require* that
	  $$k_1 4e^{2t} + k_2 5e^{3t} = e^{2t} + e^{3t}.$$
	  
	  Since the functions $te^{2t}$ and $e^{3t}$ are linearly independent
	  we find that
	  $$4k_1 = 1 \quad \text{and} \quad 5k_2 = 1.$$
	  
	  Thus $k_1 = 1/4$ and $k_2 = 1/5$ so that
	  $$p(t) = \dfrac{te^{2t}}4 + \dfrac{e^{3t}}{5}.$$
   
      -----
      
      \color{black}
      :::


3. Use the method of *variation of parameters* to find the
   general solution to the linear ODE  $$(D^2 + 4)x = \dfrac{1}{\sin(2t)}.$$

   :::{.solution}
   \color{red}  
   **Solution:**
   
   The general solution to the homog. equation $(D^2 + 4)x = 0$
   is generated by $\cos(2t)$ and $\sin(2t)$.
   
   The Wronskian matrix is given by
   $$W = \begin{bmatrix} \cos(2t) & \sin(2t) \\
   -2\sin(2t) & 2\cos(2t) \end{bmatrix}.$$

   Note that $\det W = 2\cos^2(2t) + 2\sin^2(2t) = 2$.

   Now, we seek a particular solution of the form 
   $$p(t) = c_1(t) \cos(2t) + c_2(t) \sin(2t)$$
   where $\mathbf{c}(t) = \begin{bmatrix} c_1(t) \\ c_2(t) \end{bmatrix}$
   satisfies the matrix equation
   $$W \mathbf{c}'(t) = \begin{bmatrix} 0 \\ 1/\sin(2t)\end{bmatrix}.$$

   Now, Cramer's Rule shows that
   $$c_1'(t) = \dfrac{\det \begin{bmatrix} 0 & \sin(2t) \\ 
   1/\sin(2t) & 2\cos(2t) \end{bmatrix}}{2} = 1/2$$
   and
   $$c_2'(t) = \dfrac{\det \begin{bmatrix} \cos(2t) & 0 \\
   -2\sin(2t) & 1/\sin(2t) \end{bmatrix}}{2} = \dfrac{\cot(2t)}{2}$$

   We now find $c_1(t) and $c_2(t)$ by anti-differentiation. Remember that we may choose
   any antiderivative. We find
   $c_1(t) = \dfrac{t}{2}$ and $c_2(t) = \dfrac{1}{4} \ln(| \sin(2t) |)$.
   
   Thus our particular solution is given by
   $$p(t) = \dfrac{t\cos(2t)}{2} + \dfrac{1}{4} \ln (| \sin(2t)|) \sin(2t)$$
   
   and the general solution is then
   $$x(t) = \dfrac{t\cos(2t)}{2} + \dfrac{1}{4} \ln(| \sin(2t)|)\sin(2t) + c_1 \cos(2t) + c_2 \sin(2t).$$

   -----
   
   
   \color{black}
   :::


4. Consider the linear ODE $(\diamondsuit) \qquad (D^3 + D)x = e^t.$

   a. Find a matrix $A$ for which $$(\heartsuit) \qquad D\vec x =
      A\vec x + \begin{bmatrix} 0 \\ 0 \\ e^t \end{bmatrix}$$ is an
      *equivalent linear system* to $(\diamondsuit)$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  Note that if $x$ is a solution to $(\diamondsuit)$, then $x''' =
      -x' + e^t$.
	  
	  Setting $\mathbf{x} = \begin{bmatrix} x_1 \\ x_2 \\ x_3 \end{bmatrix} = \begin{bmatrix}
	  x \\ x' \\ x''
	  \end{bmatrix}$
	  we find that
	  $$D\mathbf{x}  = \begin{bmatrix} 0 & 1 & 0  \\
	  0 & 0 & 1 \\
	  0 & -1 & 0 \end{bmatrix} \mathbf{x} + \begin{bmatrix} 0 \\ 0 \\ e^t \end{bmatrix}.$$
	   
   
      -----
      
      \color{black}
      :::


   b. If $u(t)$ is a solution to $(\diamondsuit)$, explain why 
      $\vec v(t) = \begin{bmatrix} u(t) \\ u'(t) \\ u''(t)
      \end{bmatrix}$ is a solution to $(\heartsuit)$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  If $\mathbf{v} = \begin{bmatrix} u(t) \\ u'(t) \\ u''(t)
      \end{bmatrix}$ then $$D \mathbf{v} = \begin{bmatrix} u'(t) \\ u''(t) \\ u'''(t)
      \end{bmatrix} = \begin{bmatrix} u'(t) \\ u''(t) \\ -u'(t) + e^t 
      \end{bmatrix} = \begin{bmatrix} u'(t) \\ u''(t) \\ -u'(t)  
      \end{bmatrix} + \begin{bmatrix} 0 \\ 0 \\ e^t \end{bmatrix}$$
   
      On the other hand
	  $$A \begin{bmatrix} u(t) \\ u'(t) \\ u''(t)
      \end{bmatrix} + \begin{bmatrix} 0 \\ 0 \\ e^t \end{bmatrix} = \begin{bmatrix} u'(t) \\ u'''(t) \\ -u'(t)
      \end{bmatrix} + \begin{bmatrix} 0 \\ 0 \\ e^t \end{bmatrix}$$
   
      Since these two expressions coincide, $\mathbf{v}$ is indeed a solution.
   
      -----
      
      \color{black}
      :::

5. Find the *real* and *imaginary* parts of the vector
   $(\cos(t) + i\sin(t)) \cdot \begin{bmatrix} 2+i\\ 1 \\ i
   \end{bmatrix}$ for any value of $t$.

   :::{.solution}
   \color{red}  
   **Solution:**
   
   First notice that
   $$(\cos(t) + i \sin(t))(2+i) = 2\cos(t) - \sin(t) + i(\cos(t) + 2\sin(t))$$
   
   Thus
   $$(\cos(t) + i\sin(t)) \cdot \begin{bmatrix} 2+i\\ 1 \\ i
   \end{bmatrix} = \begin{bmatrix} 
   2\cos(t) - \sin(t) + i(\cos(t) + 2\sin(t)) \\
   \cos(t) + i\sin(t) \\
   -\sin(t) + i\cos(t)
   \end{bmatrix}
   = \begin{bmatrix} 2\cos(t) - \sin(t) \\
   \cos(t) \\
   -\sin(t)
   \end{bmatrix} 
   +i\begin{bmatrix}
   \cos(t) + 2\sin(t) \\
   \sin(t)  \\
   \cos(t)
   \end{bmatrix}$$
   
   So the real part is $\begin{bmatrix} 2\cos(t) - \sin(t) \\
   \cos(t) \\
   -\sin(t)
   \end{bmatrix}$ and the imaginary part is
   $\begin{bmatrix}
   \cos(t) + 2\sin(t) \\
   \sin(t)  \\
   \cos(t)
   \end{bmatrix}$
   
   -----
   
   \color{black}
   :::



7. Let $A= \begin{bmatrix} 2 & 2 & 1 \\ 0 & 2 & 0 \\ 0 & 0 & -1
   \end{bmatrix}.$
	
   a. Find the characteristic polynomial and show that eigenvalues of
      $A$ are $\lambda = 2,-1$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  Since $A$ is upper triangular, $A - \lambda \mathbf{I}_3$ is
	  also upper triangular. Thus, the char poly -- i.e. the
	  determinant of $A - \lambda \mathbf{I}_3$ -- is equal to
	  $(2-\lambda)^2(1 -\lambda)$
   
      Thus the eigenvalues of $A$ are as indicated.
	  
      -----
      
      \color{black}
      :::

   b. Find two linearly independent generalized eigenvectors for
      $\lambda = 2$. Note that there are not 2 linearly independent
      *eigenvectors* for $\lambda = 2$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  Examining the matrix $$A - 2\mathbf{I}_3 = \begin{bmatrix} 0 & 2
	  & 1 \\ 0 & 0 & 0 \\ 0 & 0 & -3 \end{bmatrix} \sim
	  \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0
	  \end{bmatrix}$$ we see that $\mathbf{e}_1 = \begin{bmatrix} 1 \\
	  0 \\ 0 \end{bmatrix}$ is the only eigenvector for $\lambda = 2$.
	  
	  On the other hand, consider $$(A-2\mathbf{I}_2)^2 =
	  \begin{bmatrix} 0 & 2 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & -3
	  \end{bmatrix}^2 = \begin{bmatrix} 0 & 0 & -3 \\ 0 & 0 & 0 \\ 0 &
	  0 & 9 \end{bmatrix} \sim \begin{bmatrix} 0 & 0 & 1 \\ 0 & 0 & 0
	  \\ 0 & 0 & 0 \end{bmatrix}$$ Recall that the generalized
	  eigenvectors are the solutions to $(A-2\mathbf{I}_2)^2\mathbf{v}
	  = \mathbf{0}$. Thus, in this case the generalized eigenvectors
	  are generated by the two linearly independent vectors
	  $\mathbf{e}_1$ and $\mathbf{e}_2$.
   
   
      -----
      
      \color{black}
      :::

   c. Find the general solution to the linear
      system $D\vec x = A\vec x$.  

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  Using the generalized eigenvectors from b. we find solutions
	  $$h_1(t) = e^{2t} \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$$
	  and
	  \begin{align*}
	  h_2(t) &= e^{2t} \left ( \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} 
	  + t (A - 2 \mathbf{I}_3)\begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}\right) 
	  = 
	  e^{2t} \left ( \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} 
	  + t \begin{bmatrix} 0 & 2
	  & 1 \\ 0 & 0 & 0 \\ 0 & 0 & -3 \end{bmatrix}\begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}\right) \\
	  &= e^{2t} \left ( \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} 
	  + t\begin{bmatrix} 2 \\ 0 \\ 0 \end{bmatrix}\right) \\
	  &= e^{2t} \begin{bmatrix} 2t \\ 1 \\ 0 \end{bmatrix} 
	  \end{align*}
   
      It remains to find an eigenvector for $\lambda = -1$.
	  
	  For this, we look at
	  $$A + \mathbf{I}_3 = \begin{bmatrix} 3&2 & 1 \\ 0 & 3 & 0 \\ 0 & 0 & 0 \end{bmatrix}
	  \sim \begin{bmatrix} 3&0 & 1 \\ 0 & 1 & 0 \\ 0 & 0 & 0 \end{bmatrix}$$
	  and find the eigenvector
	  $\mathbf{w} = \begin{bmatrix} -1 \\ 0 \\ 3\end{bmatrix}$.
	  
	  Thus we find the solution
	  $$\mathbf{h}_3(t) = e^{-t} \mathbf{w}  = e^{-t}\begin{bmatrix} -1 \\ 0 \\ 3\end{bmatrix}.$$
	  
	  So the general solution is $$\mathbf{x}(t) = c_1
	  \mathbf{h}_1(t) + c_2 \mathbf{h}_2(t) + c_3 \mathbf{h}_3(t) =
	  c_1 e^{2t} \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} + c_2
	  e^{2t} \begin{bmatrix} 2t \\ 1 \\ 0 \end{bmatrix} + c_3
	  e^{-t}\begin{bmatrix} -1 \\ 0 \\ 3\end{bmatrix}$$
	  
      -----
      
      \color{black}
      :::

8. Let $B =
   \begin{bmatrix} 1 & -1 & 0 & 1 & 1 \\ 0 & 2 & -1 & 2 & 0 \\ 0 & 0 &
   0 & 1 & 3 \\ 0 & 0 & 0 & 0 & 0 \\ \end{bmatrix}$
    
   a. Find all solutions to the matrix equation $B \vec v = \vec 0$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
      The matrix is (essentially) already in echelon form, and we see that the variables
	  $v_1$, $v_2$, and $v_4$ are *pivot variables* while $v_3$ and $v_5$ are *free variables*.
   
      We find one solution  by setting $v_3 = 1$ and $v_5=0$: we find in this case that $v_4 = 0$,
	  $2v_2 = v_3$, and $v_1 = v_2$. Thus one solution is
	  $$\begin{bmatrix} 1/2 \\ 1/2 \\ 1 \\ 0 \\ 0 \end{bmatrix}.$$
	  
	  We find another solution by setting $v_3 = 0$ and $v_5 = 1$. In this case we find
	  that $v_4 = -3v_5 = -3$, $2v_2 = -2v_4 = 6$ and $v_1 = v_2 - v_4 - v_5 = 3 + 3 - 1.$ 
	  Thus the other solution is
	  $$\begin{bmatrix} 5 \\ 3 \\ 0 \\ -3 \\ 1 \end{bmatrix}$$
   
      Thus every solution of $B \mathbf{v}  = \mathbf{0}$ has the form
	  $$v_3 \begin{bmatrix} 1/2 \\ 1/2 \\ 1 \\ 0 \\ 0 \end{bmatrix} + 
      v_5\begin{bmatrix} 5 \\ 3 \\ 0 \\ -3 \\ 1 \end{bmatrix}.$$
	  
      -----
      
      \color{black}
      :::

   b. Let $\vec b_1,\dots,\vec b_5$ denote the *columns* of the
      matrix $B$.  Thus the $\vec b_i$ are vectors in
      $\mathbf{R}^4$. Are these vectors linearly independent? Why or
      why not?

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  Since $B \cdot \begin{bmatrix} 1/2 \\ 1/2 \\ 1 \\ 0 \\ 0
	  \end{bmatrix} = \mathbf{0}$, we see that $$(1/2) \mathbf{b}_1 +
	  (1/2) \mathbf{b_2} + \mathbf{b}_3 = 0$$ which shows that the
	  vectors are *linearly dependent* (i.e. *not* linearly
	  independent).
   
      -----
      
      \color{black}
      :::

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

   :::{.solution}
   \color{red}  
   **Solution:**
   
   The char. poly is $-(\lambda - 2)^2(\lambda -1)$.

   An eigenvector for $\lambda = 1$ is $\begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix}$.
   
   Eigenvectors for $\lambda = 2$ are generated by 
   $$\begin{bmatrix} 2 \\ 1 \\ 0 \end{bmatrix} \quad \text{and} \quad
   \begin{bmatrix} -1 \\ 0 \\ 1 \end{bmatrix}$$.
   
   Thus the general solution is
   $$\mathbf{x}(t) = c_1 e^t \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix} +
   c_2 e^{2t} \begin{bmatrix} 2 \\ 1 \\ 0 \end{bmatrix}
   + c_3 e^{2t} \begin{bmatrix} -1 \\ 0 \\ 1 \end{bmatrix}$$
   
   In order that $\mathbf{x}(0) = \begin{bmatrix} 0 \\ 1 \\ 0
   \end{bmatrix}$, we need $$c_1 \begin{bmatrix} 1 \\ 1 \\ 0
   \end{bmatrix} + c_2 \begin{bmatrix} 2 \\ 1 \\ 0 \end{bmatrix} + c_3
   \begin{bmatrix} -1 \\ 0 \\ 1 \end{bmatrix} = \begin{bmatrix} 1 & 2
   & -1 \\ 1 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix} \begin{bmatrix} c_1 \\
   c_2 \\ c_3 \end{bmatrix} = \begin{bmatrix} 0 \\ 1 \\ 0
   \end{bmatrix}.$$
   
   
   To solve this equation, we perform row operations on the augment matrix:
   \begin{align*}
   \left[
   \begin{array}{c|c}
   \begin{matrix} 1 & 2
   & -1 \\ 1 & 1 & 0 \\ 0 & 0 & 1 \end{matrix} & 
   \begin{matrix} 0 \\ 1 \\ 0
   \end{matrix}
   \end{array}
   \right ]
   \sim 
   \left[
   \begin{array}{c|c}
   \begin{matrix} 1 & 2
   & -1 \\ 0 & -1 & 1 \\ 0 & 0 & 1 \end{matrix} & 
   \begin{matrix} 0 \\ 1 \\ 0
   \end{matrix}
   \end{array}
   \right ] 
   \sim 
   \left[
   \begin{array}{c|c}
   \begin{matrix} 1 & 2
   & -1 \\ 0 & 1 & -1 \\ 0 & 0 & 1 \end{matrix} & 
   \begin{matrix} 0 \\ -1 \\ 0
   \end{matrix}
   \end{array}
   \right ] 
   \sim 
   \left[
   \begin{array}{c|c}
   \begin{matrix} 1 & 0
   & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{matrix} & 
   \begin{matrix} 2 \\ -1 \\ 0
   \end{matrix}
   \end{array}
   \right ]    
   \end{align*}
   
   This shows that $c_1 = 2$, $c_2 = -1$ and $c_3 = 0$ so the required solution is 
   $$\mathbf{x}(t) = 2e^t \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix} +
   - e^{2t} \begin{bmatrix} 2 \\ 1 \\ 0 \end{bmatrix}$$  
   
   -----
   
   \color{black}
   :::


10. Suppose that the $3 \times 3$ matrix $A$ has eigenvalues $2$ and $1 \pm 3i$, 
    that $\mathbf{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix}$
    is an eigenvector for $\lambda  = 2$, and that $\mathbf{w} = \begin{bmatrix} u_1 +
    w_1 i \\ u_2 + w_2 i \\ u_3 + w_3 i \end{bmatrix}$ is an
    eigenvector for $\lambda = 1+3i$.
   
    Describe three real solutions to the homogeneous system of linear
    ODES $D \mathbf{x} = A \mathbf{x}$ with linearly independent
    initial vectors.

    :::{.solution}
    \color{red}  
    **Solution:**
   
    One real solution is  determined by the eigenvector $\mathbf{v}$; it is given by
	$$\mathbf{h}_1 = e^{2t} \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix}.$$
	
	For the other two solutions, we use the eigenvector
	$\mathbf{w}$. We consider the "complex solution"
	
	$$e^{(1+3i)t}\mathbf{w} = e^t(\cos(3t) + i\sin(3t)) \mathbf{w} \quad (*)$$
	
	We take for $\mathbf{h}_2(t)$ the *real part* of $(*)$, and we take
	$\mathbf{h}_3(t)$ to be the *imaginary part* of $(*)$.
	
	This gives the required 3 solutions.

    -----
   
    \color{black}
    :::




## Bibliography {.unnumbered}

:::{#refs} 

:::
