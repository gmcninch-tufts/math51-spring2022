---
author: Math 51 Spring 2022
title: |
  Review material for Midterm 1 -- Solutions
date: exam date 2022-02-14
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

#. (multiple-choice) Which of the following represents a *linear* ODE?

   a. $x\cdot x'' + x + 1 = \sin(t)$

   b. $t\cdot x'' + x^2 + 1 = \sin(t)$
   
   c. $t^2\cdot x'' + (t+1) \cdot x + 1 = \sin(t)$
   
   d. $(D^2 + D + t)x^2 = \sin(t)$
  

   :::{.solution}
   \color{red}
   **Solution:** c.

   -----
      
   \color{black}
   :::


#. (multiple-choice) Consider the *Wronskian* $W(t) = W(f_1,f_2,f_3)(t)$ of
   the functions $$f_1(t) = 1, \qquad f_2(t) = 1+t \qquad \text{and}
   \qquad f_3(t) = \ln(1+t).$$ Which of the following statements is
   *most correct*?

   a. The Wronskian is given by $W(t) = -1/(1+t)^2$; since $W(1)
      = -1/4$ is *non-zero*, the functions are linearly independent on
      the interval $(-1,\infty)$.
   
   b. Since $W(1) = 0$, the functions are linearly dependent on $(-1,\infty)$.
   
   c. Since $W(t)$ is not defined on $(-\infty,\infty)$, the Wronskian
      test doesn't apply.
   
   d. None of the above.

   :::{.solution}
   \color{red}
   **Solution:** a.

   -----
      
   \color{black}
   :::


#. (multiple-choice) Let $P(D)$ be a differential operator of order $4$, and
   suppose that $h_1(t),h_2(t),h_3(t),h_4(t)$ are *solutions* to the
   homogeneous equation $$(\heartsuit) \quad P(D)x = 0.$$ Suppose that
   $$h_1(t) + h_2(t) + h_3(t) + h_4(t) = 0$$
   for every $t$, $-\infty < t < \infty$.
   
   Which of the following statements is most correct?
   
   a. The general solution to $(\heartsuit)$ is given by $$x(t) = c_1
      h_1(t) + c_2 h_2(t) + c_3 h_3(t) + c_4 h_4(t).$$

   b. The functions $h_1(t),h_2(t),h_3(t),h_4(t)$ are *linearly dependent*.

   c. A *particular solution* to $(\heartsuit)$ has the form
      $$q(t) = \int h_1(t)dt.$$

   d. For some values of $k_1,k_2$ and $k_3$, the expression $q(t) =
      k_1 h_1(t) + k_2 h_2(t) + k_3 h_3(t)$ provides a particular
      solution to the ODE $$P(D)x = e^t.$$

   :::{.solution}
   \color{red}
   **Solution:** b.

   -----
      
   \color{black}
   :::


#. Consider the ODE $\dfrac{dx}{dt} = x^2\cos(t)$.

   a. Find the general solution to this ODE.

      :::{.solution}
      \color{red}
      **Solution:**
	  
	  Separating variables, we find that
	  \begin{align*}
	  & \int \dfrac{dx}{x^2} = \int \cos(t)dt  \\
	  \implies & \dfrac{-1}{x} = \sin(t) + C \\
	  \implies & x = \dfrac{-1}{\sin(t) + C}
	  \end{align*}
	  
	  So we have the solutions $x = \dfrac{-1}{\sin(t) + C}$ for each
	  constant $C$, and we also have the constant solution $x(t) = 0$.
	  
      -----
      
      \color{black}
      :::


   b. Find a solution $x$ satisfying $x(0) = 1$. 

      :::{.solution}
      \color{red}
      **Solution:**

      If $1 = x(0) = \dfrac{-1}{\sin(0) + C} = \dfrac{-1}{C}$ we find that $C =-1$ so that
	  $$x(t) = \dfrac{-1}{\sin(t) - 1}.$$

      -----
      
      \color{black}
      :::


   c. What is the largest interval containing $t_0 = 0$ on which this
      solution is defined?

      :::{.solution}
      \color{red}
      **Solution:**

      This solution is defined on $\left( \dfrac{-3\pi}{2},
	  \dfrac{\pi}{2}\right)$ and no larger interval (because
	  $\sin\left (\dfrac{\pi}{2} \right) = \sin\left (\dfrac{-3\pi}{2} \right) = 1$ so that $x(t)$ is
	  not defined at the endpoints of this interval).

      -----
      
      \color{black}
      :::



#. Consider the differential equation
   $$(\clubsuit) \quad (t+2)\dfrac{dx}{dt} + 2x = t+1.$$
   
   a. Find the largest interval containing $t_0 = 0$ on which this
      equation is *normal.*

      :::{.solution}
      \color{red}
      **Solution:**

      This ODE is normal on $(-2,\infty)$ since the leading
      coefficient $t+2$ is never 0 for any $t$ in $(-2,\infty)$.

      -----
      
      \color{black}
      :::


   b. Find the general solution to $(\clubsuit)$.

      :::{.solution}
      \color{red}
      **Solution:**

      We consider this ODE for $t>-2$.
	  
      We first solve the corresponding homogeneous equation 
	  $$(t+2)\dfrac{dx}{dt} = -2x$$
	  by separating variables. We find that
	  \begin{align*}
	  & \int \dfrac{dx}{x} = -2\int \dfrac{dt}{t+2} \\
	  \implies & \ln|x| = -2\ln|t+2| +C \\
	  \implies & |x| = e^C e^{-2 \ln(t+2)} \\
	  \implies & x = k (t+2)^{-2}
	  \end{align*}
	  for an arbitrary constant $k$.
	  
	  The possibility that $k=0$ already accounts for the constant
      solution $x(t) = 0$.
	  
	  In fact, to solve $(\clubsuit)$ we only need one homogeneous solution, so we take $k=1$ and
	  $h(t) = (t+2)^{-2} = \dfrac{1}{(t+2)^2}$.
	  
	  Now we seek solutions to $(\clubsuit)$ of the form $x(t) = k(t)
      h(t)$. *In order to use our formula for $k(t)$, we need to put
      the equation in standard form!!* 
	  
	  i.e. we consider the equation
	  $$\dfrac{dx}{dt} + \dfrac{2x}{t+2} = \dfrac{t+1}{t+2}$$

      Now the function $k(t)$ satisfies the condition $$k'(t) =
	  \dfrac{1}{h(t)} \cdot \dfrac{t+1}{t+2} = (t+2)^2 \cdot
	  \dfrac{t+1}{t+2} = (t+1)(t+2) = t^2 + 3t + 2.$$
	  
	  Thus
	  $$k(t) = \int (t^2 + 3t + 2)dt = \dfrac{t^3}{3} + \dfrac{3t^2}{2} + 2t + C$$
	  
	  so that the general solution to $(\clubsuit)$ is given by
	  
	  $$x(t) = h(t)k(t) = \dfrac{1}{(t+2)^2} \left (\dfrac{t^3}{3} + \dfrac{3t^2}{2} + 2t + C\right)$$

      for an arbitrary constant $C$.
	  
      -----
      
      \color{black}
      :::


#. Consider the ODE $\dfrac{dx}{dt} = \dfrac{x}{t} + 1$ for $t>0$.
	
   a. Find the general solution $x(t)$ to this ODE.

      :::{.solution}
      \color{red}
      **Solution:**

      We first solve he corresponding homogeneous equation
      $\dfrac{dx}{dt} = \dfrac{x}{t}$ using separation of variables. We find that
	  
	  \begin{align*}
	  & \int \dfrac{dx}{x} = \int \dfrac{dt}{t} \\
	  \implies & \ln|x| = \ln|t| + C \\
	  \implies & |x|  = te^C \\
	  \implies & x = kt
	  \end{align*}
	  for an arbitrary constant $k$.
	  Note that $k=0$ accounts for the constant solution $x(t) = 0$.
	  To solve the ODE, we need one non-zero homogeneous solution, so we take $k=1$ and
	  $$h(t) = t.$$
	  
	  This ODE is already in standard form. We seek a solution of the form $x(t) = k(t) h(t)$;
	  the function $k(t)$ satisfies the equation
	  $$k'(t) = \dfrac{1}{h(t)} \cdot 1 = \dfrac{1}{t}.$$

      Thus 
	  $$k(t) = \int \dfrac{dt}{t} = \ln|t| + C = \ln(t) + C$$
	  since $t>0$.

      So the general solution is given by
	  $$x(t) = k(t) h(t) = (\ln(t) + C) t = t\ln(t) + Ct.$$

      -----
      
      \color{black}
      :::


   b. find the particular solution of the ODE for which  $x(1) = 0$.

      :::{.solution}
      \color{red}
      **Solution:**

      Using the general solution $x(t) = t\ln(t) + Ct$, we need $0 =
	  x(1) = 1 \ln(1) + C$ so that $C=0$.  Thus $x(t) = t\ln(t)$ is
	  the solution to the initial value problem.
	  
      -----
      
      \color{black}
      :::


#. For what value(s) of $\alpha$ is the determinant
   $$\det \begin{bmatrix} 1 &\alpha &1 \\ 1 &1 &0 \\ 0 &1 &\alpha \\
   \end{bmatrix}$$ equal to 0?

   :::{.solution}
   \color{red}
   **Solution:**

   Write $D$ for the indicated determinant.
   Using expansion on the 3rd row, we have
   $$D = -\det\begin{bmatrix} 1 & 1 \\ 1 & 0 \end{bmatrix}
   + \alpha \det \begin{bmatrix} 1 & \alpha \\ 1 & 1 \end{bmatrix}
   = -(-1) + \alpha(1-\alpha) = 1 + \alpha - \alpha^2.$$

   Using the quadratic formula, we see that $D=0$ precisely when
   $\alpha = \dfrac{1 \pm \sqrt{5}}{2}.$

   -----
      
   \color{black}
   :::


#. Consider the system of linear equations
   \begin{align*}
   u_1 + 2 u_2 + 3 u_3 &= -1,\\
   3u_1 + 2 u_2 + 1 u_3 &= -1,\\
   5 u_1 - 2 u_2 + 2 u_3 &= -1.
   \end{align*}
   
   The coefficient matrix has
   $$\det\begin{bmatrix}
   1 & 2 & 3 \\
   3 & 2 & 1 \\ 5 & -2 & 2 
   \end{bmatrix} = -48$$
   Use *Cramer's Rule* to give a  formula for $u_3$ in terms of
   determinants.  Do not evaluate the determinants.

   :::{.solution}
   \color{red}
   **Solution:**

   Write $M= \begin{bmatrix}
   1 & 2 & 3 \\
   3 & 2 & 1 \\ 5 & -2 & 2 
   \end{bmatrix}$ for the indicated matrix.

   Cramer's Rule shows that
   $$u_3 = \dfrac{\det \begin{bmatrix}
   1 & 2 & -1 \\
   3 & 2 & -1 \\ 
   5 & -2 & -1 
   \end{bmatrix}}{\det M} 
   =  \dfrac{\det \begin{bmatrix}
   1 & 2 & -1 \\
   3 & 2 & -1 \\ 
   5 & -2 & -1 
   \end{bmatrix}}{-48} $$

   -----
      
   \color{black}
   :::



#. Consider a 3rd order linear ODE which is normal on $(-\infty,\infty)$
   and suppose that $x_1$ and $x_2$ are solutions.
   Which of the following statements is *most correct*?

   a. If $x_1(0) = x_2(0)$ and $x_1(1) = x_2(1)$, then $x_1 = x_2$.

   b. If $x_1(0) = x_2(0)$, $x_1'(0) = x_2'(0)$ and $x_1''(0) = x_2''(0)$, then
    $x_1 = x_2$.

   c. If $x_1(0)>0$ then it is also true that $x_2(0)>0$.



   :::{.solution}
   \color{red}
   **Solution:** b.

   -----
      
   \color{black}
   :::



#. Indicate which of the following ODEs is normal on the interval $(0,2\pi)$.

   a. $\dfrac{1}{t}\dfrac{d^3x}{dt^3} + \sin(t)\dfrac{dx}{dt} = \cos(t).$
   
   b. $D^2 x + \cos(t) Dx = \ln(t-1)$
   
   c. $(t+1)D^5 x + x = \dfrac{1}{\cos(t/8)}$

   :::{.solution}
   \color{red}
   **Solution:** a.

   -----
      
   \color{black}
   :::



#. Consider the functions $$h_1(t) = -1 + 7t + 8t^2, \qquad
   h_2(t) = 1 + 2t + t^2, \qquad h_3(t) = -1 + t + 2t^2.$$
 
   a. Find constants $a,b$ so that $h_1(t) = a \cdot h_2(t) + b
      \cdot h_3(t)$.
      
 	  **Hint:** Equate coefficients of powers of $t$.


      :::{.solution}
      \color{red}
      **Solution:**

      Consider the equation
	  \begin{align*}
	  -1 + 7t + 8t^2 & = a h_2(t) + b h_3(t) \\
	  & =  a (1 + 2t + t^2) + b(-1 + t + 2t^2) \\
	  & =  (a - b) + (2a + b)t + (a + 2b)t^2
	  \end{align*}
	  Comparing coefficients we find the system of equations
	  $$(\heartsuit) \quad \left \{
	  \begin{matrix}
	  -1 = a - b \\
	  7 = 2a + b  \\
	  8 = a + 2b
	  \end{matrix}
	  \right.$$
	  
	  Adding the first two equations leads to the equation
	  $$6 = 3a \quad \implies \quad a = 2.$$
	  
	  And then the first equation leads to 
	  $$-1 = 2 - b \implies b = 3$$
	  
	  You can check that $\begin{bmatrix} a \\ b \end{bmatrix} =
	  \begin{bmatrix} 2 \\ 3 \end{bmatrix}$ is a solution to $(\heartsuit)$
	  (by plugging in these values in all 3 equations).
	  
	  Thus
	  
	  $$h_1(t) = 2 \cdot h_2(t) + 3 \cdot h_3(t)$$
	  
      -----
      
      \color{black}
      :::



   b. Are the functions $h_1(t),h_2(t),h_3(t)$ linearly dependent?
      (What does your answer to (a) tell you about linear dependence?)


      :::{.solution}
      \color{red}
      **Solution:**

      According to part a., the functions $h_1(t),h_2(t),h_3(t)$ are
      linearly dependent (the equation $h_1(t) = 2 \cdot h_2(t) + 3
      \cdot h_3(t)$ confirms the linear dependence).

      -----
      
      \color{black}
      :::



#. A particular solution to the equation
   $$(\clubsuit)\qquad (D^2-16)x = e^{4t}$$ is $p(t) =
   \dfrac{1}{8}\cdot t\cdot e^{4t} + e^{-4t}$.  Find the general
   solution.

   :::{.solution}
   \color{red}
   **Solution:**

   The general solution to the homogeneous equation $$(D^2 - 16)x = 0$$
   is given by $x = c_1 e^{4t} + c_2 e^{-4t}$.
   
   Since $p(t)$ is a particular solution, the
   *general solution* to the $(\clubsuit)$ is given by
   $$x(t) = p(t) + c_1 e^{4t} + c_2 e^{-4t} = 
   \dfrac{1}{8}\cdot t\cdot e^{4t} + e^{-4t} + c_1 e^{4t} + c_2 e^{-4t}.$$

   -----
      
   \color{black}
   :::


#. Use the exponential shift formula
   $$P(D)[e^{\lambda t}y] = e^{\lambda t}P(D+\lambda)[y]$$ to compute
   the function $P(D)[f]$ in each of the following cases:
   
   a. $P(D) = D^2 +D -6$ and $f = t^2 e^{2t}$.


      :::{.solution}
      \color{red}
      **Solution:**

      \begin{align*}
	  (D^2 + D - 6)[t^2e^{2t}] &= 
	  e^{2t} ((D+2)^2 + (D+2) - 6)[t^2] \\
	  &= e^{2t} ( D^2 + 4D + 4 + D + 2 - 6)[t^2] \\
	  &= e^{2t} ( D^2 + 5D)[t^2] \\
	  &= e^{2t} (2 + 10t)
	  \end{align*}

      -----
      
      \color{black}
      :::



   b. $P(D) = D^2 + 3$ and $f = e^t \cos(3t)$.



      :::{.solution}
      \color{red}
      **Solution:**
      
	  \begin{align*}
	  (D^2 + D)[e^t \cos(3t) &=
	  e^t ((D+1)^2 + (D+1))[\cos(3t) \\
	  &=e^t (D^2 + 2D + 1 + D + 1)[\cos(3t)] \\
	  &=e^t (D^2 + 3D + 2)[\cos(3t)] \\
	  &= e^t ( -9\cos(3t) - 9\sin(3t) + 2\cos(3t) ) \\
	  &= e^t ( -7\cos(3t) - 9\sin(3t))
	  \end{align*}

      -----
      
      \color{black}
      :::



#. Find the general solution to the differential equation
   $$(t+1)x' = \dfrac{x}{t-1}, \quad t>1.$$

   :::{.solution}
   \color{red}
   **Solution:**

   -----
      
   \color{black}
   :::


#. Solve the initial value problem
   $$(\clubsuit) \quad 2\dfrac{dx}{dt} - x = t \cdot e^t; \quad x(0) = 1$$ 
   
   :::{.solution}
   \color{red}
   **Solution:**

   
   We rewrite the equation in *standard form*: $\dfrac{dx}{dt} -
   \dfrac{x}{2} = \dfrac{t \cdot e^t}{2}$; thus the *right-hand-side*
   is $q(t) = \dfrac{te^t}{2}$.
   
   We first find a solution to the corresponding homogeneous equation
   $x' = \dfrac{x}{2}$; one solution is $h(t) = e^{t/2}$.
   
   Now search for a solution to $(\clubsuit)$ of the form $x(t) = k(t) h(t)$
   for an unknown function $k(t)$.

   For a first order linear ODE in standard form, we know that $$k'(t)
   = \dfrac{1}{h(t)} \cdot q(t) = e^{-t/2}\dfrac{te^t}{2} =
   \dfrac{te^{t/2}}{2}.$$
   
   We now find $k(t)$ by integrating:
   
   $$k(t) =\dfrac{1}{2} \int te^{t/2}dt.$$
   We use integration by parts with $u = t$ and $dv = e^{t/2}dt$. Thus $du = dt$ and
   $v = 2e^{t/2}$, so that
   
   $$k(t) = \dfrac{1}{2} \left (2te^{t/2} - 2\int e^{t/2} dt\right) = te^{t/2} - 2e^{t/2} + C.$$
   
   Thus we find that the general solution to $(\clubsuit)$ is given by
   
   $$x(t) = k(t) h(t) = te^t - 2e^t + Ce^{t/2}.$$
   
   To solve the initial value problem, we require that $x(0) = 1$, and we find that
   
   $$1 = x(0) = -2 + C \implies C = 3.$$
   
   Thus the solution to the IVP is
   
   $$x(t) = te^t -2e^t + 3e^{t/2}.$$


   -----
      
   \color{black}
   :::

   
#. Solve the initial value problem
   $$4x'' + 4x' -3x = 0; \quad x(0) = 0, \quad x'(0) = 1.$$
   
   :::{.solution}
   \color{red}
   **Solution:**

   -----
      
   \color{black}
   :::


## Bibliography {.unnumbered}

:::{#refs}
:::
