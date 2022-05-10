---
author: |
  Math 51 Spring 2021 --
  Tufts University 
title: |
  Final Exam *Solutions*
date: 2022-05-09
fontsize: 12pt
header-includes: |
  \usepackage[top=10mm,bottom=20mm,left=20mm,right=20mm]{geometry}
  \usepackage{mathtools, mathrsfs}
---

#. (10 points in total) Indicate your response to the following. 

   #. (2 pts) Consider the system of linear ODEs $$(\clubsuit) \quad D
      \mathbf{x} = A \mathbf{x} + \mathbf{E}(t)$$ where $A$ is a $3
      \times 3$ matrix with constant entries and where the entries of
      $\mathbf{E}(t)$ are continuous functions of $t$ on the interval
      $(0,\infty)$.  If $\mathbf{h}(t)$ and $\mathbf{k}(t)$ are
      *solutions* to $(\clubsuit)$ and if $\mathbf{h}(1) =
      \mathbf{k}(1)$, must it be true that $\mathbf{h}(t) =
      \mathbf{k}(t)$ whenever $0 < t$?
      
      :::{.solution}
      \color{red}
      **Solution:**
      
      Yes; this results from the *Existence and Uniqueness
      Theorem* for systems of linear ODEs.
	  
      -----
   
      \color{black}
      :::
   


   #. (4 pts) Let $A$ be an $n \times n$ matrix with an eigenvalue $\lambda
      = 2$ with *multiplicity 3*. Suppose that the vector $\mathbf{v}
      \ne \mathbf{0}$ in $\mathbb{R}^n$ is a solution to the equation
      $\left(A-2\mathbf{I}_n\right)^3\mathbf{x} = \mathbf{0}$.  Give a
      formula for a solution $\mathbf{h}(t)$ to the homogeneous system
      of linear ODEs $D \mathbf{x} = A \mathbf{x}$ which satisfies
      $\mathbf{h}(0) = \mathbf{v}$.

      :::{.solution}
      \color{red}
      **Solution:**
      
	  $$\mathbf{h}(t) = e^{2t}\left(
	  \mathbf{v} + t(A-2 \mathbf{I}_n)\mathbf{v}
	  + \dfrac{t^2}{2}(A-2\mathbf{I}_n)^2\mathbf{v}\right)$$
   
      -----
   
      \color{black}
      :::


   #. (2 pts) Indicate whether the following statement is true or
      false: If $P(D)$ is a polynomial in $D$ with constant
      coefficients, and if $h_1(t)$ and $h_2(t)$ are solutions to
      $P(D)x = e^t$, then $h_1(t) + h_2(t)$ is a solution to $P(D)x =
      2e^t$.

      :::{.solution}
      \color{red}
      **Solution:**
      
      This statements is *true*; indeed, if $h(t) = h_1(t) + h_2(t)$
	  then $$P(D)[h(t)] = P(D)[h_1(t) + h_2(t)] = P(D)[h_1(t)] +
	  P(D)[h_2(t)] = e^t + e^t = 2e^t$$
   
      -----
   
      \color{black}
      :::


   #. (2 pts) Indicate whether the following statement is true or false.
   
      If $\mathbf{u} = \begin{bmatrix} u_1 \\ u_2 \\ u_3
      \end{bmatrix},\mathbf{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3
      \end{bmatrix}$ and $\mathbf{w} = \begin{bmatrix} w_1 \\ w_2 \\
      w_3 \end{bmatrix}$ are vectors in $\mathbb{R}^3$ and if $$\det
      \begin{bmatrix} u_1 & v_1 & w_1 \\ u_2 & v_2 & w_2 \\ u_3 & v_3
      & w_3 \end{bmatrix} = 0$$ then
      $\mathbf{u},\mathbf{v},\mathbf{w}$ are *linearly dependent*.

      :::{.solution}
      \color{red}
      **Solution:**
      
      This statement is *true*. Since the determinant of $B =
      \begin{bmatrix} u_1 & v_1 & w_1 \\ u_2 & v_2 & w_2 \\ u_3 & v_3
      & w_3 \end{bmatrix}$ is $0$, one knows that the equation
      $$B\mathbf{x} = \mathbf{0}$$ has a non-zero solution $\mathbf{c}
      = \begin{bmatrix} c_1 \\ c_2 \\ c_3 \end{bmatrix}$ and thus
      $c_1\mathbf{u} + c_2\mathbf{v} + c_3 \mathbf{w} = \mathbf{0}$,
      which confirms the linear dependence.
   
      -----
   
      \color{black}
      :::


#. (8 pts total)

   #. (3 pts) Let $$f(t) = \left \{ \begin{matrix}
      e^{2t} & t < 1 \\
	  0 & 1 \le t \\
	  \end{matrix} \right .$$
	  Re-write $f(t)$ using unit step functions.

      :::{.solution}
      \color{red}
      **Solution:**
      
	  $f(t) = e^{2t} - u_1(t) \cdot e^{2t}$.
	  
      -----
   
      \color{black}
      :::


   #. (5 pts) Find the Laplace transform
      $\mathscr{L}[u_2(t) e^{3t}]$.

      :::{.solution}
      \color{red}
      **Solution:**
      
	  $\mathscr{L}[u_2(t) e^{3t}] = e^{-2s} \mathscr{L}[e^{3(t+2}]
	  = e^{-2s} e^6 \mathscr{L}[e^{3t}]
      = \dfrac{e^{-2s + 6}}{s-3}$.
	  
      -----
   
      \color{black}
      :::


#. (15 pts in total)

   #. (5 pts) Compute $\mathscr{L}^{-1}\left[ \dfrac{e^{-s}}{s}\right]$

      :::{.solution}
      \color{red}
      **Solution:**
      
	  Notice that $f(t) = \mathscr{L}^{-1}\left [ \dfrac{1}{s} \right] = 1$.
	  
	  Thus the second shift formula shows that
	  $$\mathscr{L}^{-1}\left[ \dfrac{e^{-s}}{s}\right]
	  =u_1(t) f(t-1) = u_1(t).$$
   
      -----
   
      \color{black}
      :::


   #. (10 pts) Compute $\mathscr{L}^{-1}\left[\dfrac{1}{s(s^2+4)}\right]$

      :::{.solution}
      \color{red}
      **Solution:**
      
	  We first solve the *partial fractions* problem:
	  $$\dfrac{1}{s(s^2+4)} = \dfrac{A}{s} + \dfrac{Bs + C}{s^2 +4}$$
      We need
	  $$1 = A(s^2+4) + (Bs+C)s = As^2 + 4A + Bs^2 + Cs = (A+B)s^2 + Cs + 4A.$$
	  
	  The augmented matrix corresponding to the system of equations obtained by
	  *equating coefficients* is
	  $$\left[
	  \begin{array}{l|l}
	  \begin{matrix} 1 & 1 & 0 \\ 0 & 0 & 1 \\ 4 & 0 & 0 \end{matrix} & 
	  \begin{matrix} 0 \\ 0 \\ 1 \end{matrix}	  
	  \end{array}
	  \right]
	  \sim 
	  \left[
	  \begin{array}{l|l}
	  \begin{matrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{matrix} & 
	  \begin{matrix} -1/4 \\ 0 \\ 1/4 \end{matrix}	  
	  \end{array}
	  \right]
	  \sim 
	  \left[
	  \begin{array}{l|l}
	  \begin{matrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1  \end{matrix} & 
	  \begin{matrix} 1/4 \\ -1/4 \\ 0  \end{matrix}	  
	  \end{array}
	  \right].	  
	  $$
	  We see that $$\begin{bmatrix} A \\ B \\ C \end{bmatrix}
	  = \begin{bmatrix} 1/4 \\ -1/4 \\ 0 \end{bmatrix}$$ and thus
	  $$\dfrac{1}{s(s^2+4)} = \dfrac{1}{4} \left(\dfrac{1}{s} - \dfrac{s}{s^2 +4}\right)$$
	  
	  Now,
	  $$\mathscr{L}^{-1}\left[\dfrac{1}{s(s^2+4)}\right]
	  = \dfrac{1}{4}\left(\mathscr{L}^{-1}\left[\dfrac{1}{s}\right] - 
	  \mathscr{L}^{-1}\left[\dfrac{s}{s^2 +4}\right]\right)
	  = \dfrac{1}{4}\left(1 -  \cos(2t) \right)
	  $$
	  
      -----
   
      \color{black}
      :::


#. (10 pts)
   Let $B = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$. Find
   the general solution to the homogeneous system of ODEs $D
   \mathbf{x} = B \mathbf{x}$.

   :::{.solution}
   \color{red}
   **Solution:**
      
   The characteristic polynomial is given by
   $$\det \begin{bmatrix} 1-\lambda & 1 \\ 1 & -1-\lambda \end{bmatrix} =
   \lambda^2 -2$$
   so the eigenvalues of $B$ are $\pm \sqrt{2}$.
   
   To find an eigenvector for $\lambda = \sqrt{2}$, consider
   $$B - \sqrt{2}\mathbf{I} = \begin{bmatrix} 1-\sqrt{2} & 1 \\ 1 & -1-\sqrt{2} \end{bmatrix}
   \sim \begin{bmatrix} 1 & -1-\sqrt{2} \\ 0 & 0 \end{bmatrix}
   = \begin{bmatrix} 1 & -(1+\sqrt{2}) \\ 0 & 0 \end{bmatrix}.$$
   Since an eigenvector is a solution to $(B - \sqrt{2}\mathbf{I})\mathbf{x} = 0$, we find that
   $$\mathbf{v}_+ = \begin{bmatrix} 1 + \sqrt{2} \\ 1 \end{bmatrix}$$
   is an eigenvector for $\lambda = \sqrt{2}$.
   
   A similar calculation shows that
   $$\mathbf{v}_- = \begin{bmatrix} 1 - \sqrt{2} \\ 1 \end{bmatrix}$$
   is  an eigenvector for $\lambda = -\sqrt{2}$.
   
   We now find solutions to $D\mathbf{x} = B \mathbf{x}$ using these
   eigenvectors: $$\mathbf{h}_+(t) = e^{t\sqrt{2}}\mathbf{v}_+ =
   e^{t\sqrt{2}} \begin{bmatrix} 1 + \sqrt{2} \\ 1 \end{bmatrix}$$
   $$\mathbf{h}_-(t) = e^{-t\sqrt{2}}\mathbf{v}_- =
   e^{-t\sqrt{2}} \begin{bmatrix} 1 - \sqrt{2} \\ 1 \end{bmatrix}$$
   
   Since $\mathbf{v}_+$ and $\mathbf{v}_-$ are *linearly independent*,
   the general solution to $D\mathbf{x} = B \mathbf{x}$
   is given by
   $$c_1 \mathbf{h}_1(t) + c_2 \mathbf{h}_2(t)
   = c_1 e^{t\sqrt{2}} \begin{bmatrix} 1 + \sqrt{2} \\ 1 \end{bmatrix}
   + c_2 e^{-t\sqrt{2}} \begin{bmatrix} 1 - \sqrt{2} \\ 1 \end{bmatrix}.$$
   
   -----
   
   \color{black}
   :::


#. (10 pts)   Transform the following initial-value problem to an equation of
   the form $\mathscr{L}[x] = F(s)$; find $F(s)$. *You do not need to solve for $x$.*

   $$(D^2 - 9)x = e^t + 1, \qquad x(0) = x'(0) = 0.$$


   :::{.solution}
   \color{red}
   **Solution:**
      
   Using the *first differentiation formula together with the fact
   that $x(0) = x'(0) = 0$, we see that $\mathscr{L}[D^2x] = s^2\mathscr{L}[x]$.
   Thus applying $\mathscr{L}$ to each side of the ODE yields
   $$(s^2 -9)\mathscr{L}[x] = \mathscr{L}[e^t + 1] = \dfrac{1}{s-1} + \dfrac{1}{s}.$$
   
   We now find that
   $$\mathscr{L}[x]= \dfrac{1}{(s-1)(s^2-9)} + \dfrac{1}{s(s^2-9)};$$
   i.e.
   $F(s) = \dfrac{1}{(s-1)(s^2-9)} + \dfrac{1}{s(s^2-9)}$.
   
   -----
   
   \color{black}
   :::


#. (10 pts) Consider the ordinary differential equation
   $$(\diamondsuit) \quad \dfrac{dx}{dt} - tx = e^{t^2/2}$$
  
   Find the *general solution* $x(t)$ to $(\diamondsuit)$.
  
   :::{.solution}
   \color{red}
   **Solution:**
      
   We first find a solution to the homogeneous equation
   $\dfrac{dx}{dt} = tx$. Separating variables, this equation yields
   $$\dfrac{dx}{x} = tdt \implies
   \int \dfrac{dx}{x} = \int tdt \implies \ln|x| = \dfrac{t^2}{2} + C$$
   so that the general solution to this homogeneous equation is
   $$x(t) = k \cdot e^{t^2/2}$$
   for an arbitrary constant $k$.
   
   We choose the homogeneous $h(t) = e^{t^2/2}$.
   
   Now, to solve the non-homogeneous equation, we use *variation of
   parameters*. Thus we seek solutions of the form $k(t) h(t)$ for
   some function $k(t)$.
   
   We know that
   $$k'(t) = h(t)^{-1} \cdot e^{t^2/2} = e^{-t^2/2} e^{t^2/2} = 1.$$
   
   Thus $k(t) = \int 1dt = t + C$
   and we find the general solution to $(\diamondsuit)$:
   $$x(t) = k(t)h(t) = (t+C)e^{t^2/2} = te^{t^2/2} + C e^{t^2/2}.$$
   
   -----
   
   \color{black}
   :::


#. (15 pts) Consider the ordinary differential equation
   $$(\heartsuit) \quad (D^2 -4)x = e^{2t} + e^{-2t}.$$

   a. An annihilator of $e^{2t} + e^{-2t}$ is the operator $A(D) = (D-2)(D+2)=D^2 - 4$. A solution 
      to $(\heartsuit)$ must be a solution to the homogeneous equation
	  $A(D)\cdot (D^2-4)x = (D-2)^2(D+2)^2x = 0$. Briefly explain why a *simplified guess*
	  for a solution $p(t)$ to $(\heartsuit)$ is given by
	  $$p(t) = k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}$$


      :::{.solution}
      \color{red}
      **Solution:**
      
	  The general solution to the homogeneous equation
      $A(D)(D^2-4)\mathbf{x} = \mathbf{0}$ is generated by the
      functions $e^{2t},te^{2t},e^{-2t},te^{-2t}$.
   
      Among these, the functions $e^{2t}$ and $e^{-2t}$
	  are solutions to the homogeneous equation corresponding
	  to $(\heartsuit)$ and thus won't play a role in solving $(\heartsuit)$.
	  
	  So there is a solution to $(\heartsuit)$ which is a linearly 
	  combination of the remaining functions, namely
   
	  $$k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}$$
      and we may use this for our simplified guess.
	  
	  -----
   
      \color{black}
      :::


   b. Use the *exponential shift* formula to compute $(D^2-4)[p(t)] =
      (D^2-4)[k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}]$.

      :::{.solution}
      \color{red}
      **Solution:**
   
      We have
	  $$(D^2-4)[te^{2t}] = e^{2t}\cdot ((D+2)^2 - 4)[t]
	  = e^{2t}(D^2 + 4)[t] = 4e^{2t}$$
	  and
	  $$(D^2-4)[te^{-2t}] = e^{2t}\cdot ((D-2)^2 - 4)[t]
	  = e^{-2t}(D^2 - 4)[t] = -4e^{-2t}.$$
   
      Thus
	  $$(D^2-4)[k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}] = 4k_1e^{2t} - 4k_2e^{-2t}.$$
   
   
      -----
   
      \color{black}
      :::


   c. Use your answer to b) to find a particular solution $p(t)$ to
      $(\heartsuit)$.

      :::{.solution}
      \color{red}
      **Solution:**
      
	  To find a particular solution of the form 
	  $$p(t)=k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}$$
	  we must have
	  $$(D^2-4)[p(t)] = e^{2t} + e^{-2t}$$
	  According to the result in (b), we need
	  $$4k_1e^{2t} - 4k_2e^{-2t} = e^{2t} + e^{-2t}.$$
	  Comparing coefficients, we see that
	  $$4k_1 =1 \quad \text{and} \quad -4k_2 = 1.$$
   
      Thus $k_1 = 1/4$ and $k_2 = -1/4$, so a particular solution is
	  given by $$p(t) = \dfrac{1}{4}\left(te^{2t} - te^{-2t}\right)$$
   
      -----
   
      \color{black}
      :::


#. (12 pts) The matrix $A = \begin{bmatrix} 0 & 4 \\ 1 & 0 \end{bmatrix}$
   has eigenvalues $\pm 2$. An eigenvector for $\lambda = 2$ is given
   by $\mathbf{v} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}$
   and an eigenvector for $\mu = -2$ is given
   by $\mathbf{w} = \begin{bmatrix} -2 \\ 1 \end{bmatrix}$.
   
   #. Write the general solution to the homogeneous system
      $D\mathbf{x} = A\mathbf{x}$.

      :::{.solution}
      \color{red}
      **Solution:**
      
	  The general solution is given by $$x(t) = c_1 e^{2t}
	  \mathbf{v} + c_2 e^{-2t} \mathbf{w} = c_1 e^{2t} \begin{bmatrix}
	  2 \\ 1 \end{bmatrix} + c_2 e^{-2t} \begin{bmatrix} -2 \\ 1
	  \end{bmatrix}$$
   
      -----
   
      \color{black}
      :::

	  
   #. Use the method of *variation of parameters* to find the general
      solution to the system of ODEs $$D \mathbf{x} = A \mathbf{x} +
      \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$


      :::{.solution}
      \color{red}
      **Solution:**
   
      We form the Wronskian matrix $W$ whose columns are the
	  generators for the general homogeneous solution from (a): $$W =
	  \begin{bmatrix} 2e^{2t} & -2e^{-2t} \\
	  e^{2t} & e^{-2t} \end{bmatrix}$$
   
      We seek a particular solution of the form $$\mathbf{p}(t) =
	  c_1(t) e^{2t} \mathbf{v} + c_2(t) e^{-2t} \mathbf{w}.$$ To find
	  $c_1(t)$ and $c_2(t)$, we must solve the matrix equation
	  $$W \cdot \begin{bmatrix} c_1'(t) \\ c_2'(t) \end{bmatrix} =
	  \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$
   
      We use *Cramer's Rule*. First notice that
	  $$\det W = 2 -(-2) = 4.$$
	  Now
	  $$c_1'(t) =  \dfrac{\begin{bmatrix}1 & -2e^{-2t} \\ 1 & e^{-2t}\end{bmatrix}}{4}
	  = \dfrac{3e^{-2t}}{4} \implies
	  c_1(t) = \int \dfrac{3e^{-2t}}{4} dt = \dfrac{-3}{8}e^{-2t} + C_1$$
	  and
	  $$c_2'(t) =  \dfrac{\begin{bmatrix} 2e^{2t} & 1 \\ e^{2t} & 1 \end{bmatrix}}{4}
	  = \dfrac{e^{2t}}{4}\implies
	  c_2(t) = \int \dfrac{e^{2t}}{4} dt = \dfrac{1}{8}e^{2t} + C_2$$
	  
      By choosing $C_1=C_2=0$, we find the particular solution $$\mathbf{p}(t)
	  = \dfrac{-3}{8}e^{-2t} e^{2t} \mathbf{v} + \dfrac{1}{8} e^{2t}
	  e^{-2t} \mathbf{w} = \dfrac{1}{8}\left(-3\mathbf{v} +
	  \mathbf{w}\right) = \dfrac{1}{8}\left(-3\begin{bmatrix} 2 \\ 1
	  \end{bmatrix} + \begin{bmatrix} -2 \\ 1 \end{bmatrix}\right) =
	  \begin{bmatrix} -1 \\ -1/4 \end{bmatrix}.$$
	  
	  We conclude that the general solution to the non-homogeneous
	  euqation is given by $$\begin{bmatrix} -1 \\ -1/4 \end{bmatrix}
	  + c_1 e^{2t} \begin{bmatrix}
	  2 \\ 1 \end{bmatrix} + c_2 e^{-2t} \begin{bmatrix} -2 \\ 1
	  \end{bmatrix}$$
	  
      -----
   
      \color{black}
      :::


#. (10 pts) Solve the initial value problem 
   $$D(D^2-1)x = 0, \qquad x(0) = 0, x'(0) = 1, x''(0) = 0.$$

   **Hint:** Don't use the Laplace transform. First find the *general
   solution* to $D(D^2-1)x = 0$.


   :::{.solution}
   \color{red}
   **Solution:**
      
   Since the roots of the characteristic polynomial are $0,1,-1$, the
   general solution is given by $$x(t) = c_1 + c_2 e^t + c_3e^{-t}.$$
   
   Notice that
   $$x'(t) = c_2e^t - c_3 e^{-t}$$
   
   and that
   $$x''(t) = c_2 e^t + c_2 e^{-t}$$.
   
   Evaluating at $t=0$ now gives equations:
   $$0 = x(0) = c1 + c_2 + c_3$$
   $$1 = x'(0) = c_2 - c_3$$
   $$0 = x''(0) = c_2 + c_3$$
   
   To solve this system of equations, we consider the corresponding
   augmented matrix:
   \begin{align*}
   \left[
   \begin{array}{l|l}
   \begin{matrix} 1 & 1 & 1 \\
   0 & 1 & -1 \\
   0 & 1 &  1 
   \end{matrix} &
   \begin{matrix} 0 \\ 1 \\ 0 \end{matrix}
   \end{array}
   \right]
   \sim &
   \left[
   \begin{array}{l|l}
   \begin{matrix} 1 & 1 & 1 \\
   0 & 1 & -1 \\
   0 & 0 &  2 
   \end{matrix} &
   \begin{matrix} 0 \\ 1 \\ -1 \end{matrix}
   \end{array}
   \right]   
   \sim
   \left[
   \begin{array}{l|l}
   \begin{matrix} 1 & 1 & 1 \\
   0 & 1 & -1 \\
   0 & 0 &  1 
   \end{matrix} &
   \begin{matrix} 0 \\ 1 \\ -1/2 \end{matrix}
   \end{array}
   \right]      
   \sim
   \left[
   \begin{array}{l|l}
   \begin{matrix} 1 & 1 & 0 \\
   0 & 1 & 0 \\
   0 & 0 &  1 
   \end{matrix} &
   \begin{matrix} 1/2 \\ 1/2 \\ -1/2 \end{matrix}
   \end{array}
   \right] \\
   \sim &
   \left[
   \begin{array}{l|l}
   \begin{matrix} 1 & 0 & 0 \\
   0 & 1 & 0 \\
   0 & 0 &  1 
   \end{matrix} &
   \begin{matrix} 0 \\ 1/2 \\ -1/2 \end{matrix}
   \end{array}
   \right] \\
   \end{align*}
   
   We now see that
   $$\begin{bmatrix}c_1 \\ c_2 \\ c_3 \end{bmatrix}
   = \dfrac{1}{2} \begin{bmatrix} 0 \\ 1 \\ -1 \end{bmatrix}$$

   Thus the solution to the initial value problem is
   $$x(t) = \dfrac{1}{2} \left(e^t - e^{-t}\right).$$

   -----
   
   \color{black}
   :::
