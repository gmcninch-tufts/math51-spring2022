---
author: |
  Math 51 Fall 2021 --
  Tufts University --
  Z. Nitecki and G. McNinch
title: |
  Final Exam Solutions
date: 2021-12-22
fontsize: 12pt
header-includes: |
  \usepackage[top=10mm,bottom=20mm,left=20mm,right=20mm]{geometry}
  \usepackage{palatino,mathpazo}
---


I. Multiple Choice Problems (24 points)

1. **(4pts)** Indicate which of the following best represents a
   *simplified guess* for a particular solution $p(t)$ to the
   non-homogeneous linear ODE: $$(D-3)(D-1)x = te^{3t} + \cos(2t)$$

   a. $p(t) = k_1 te^{3t} + k_2 \cos(2t) + k_3 \sin(2t)$
   
   b. $p(t) = k_1 te^{3t} + k_2 \cos(2t)$
   
   c. $p(t) = k_1 te^{3t} + k_2 t^2 e^{3t} + k_3 \cos(2t)$
   
   d. $p(t) = k_1 te^{3t} + k_2 t^2 e^{3t} + k_3 \cos(2t) + k_4 \sin(2t)$

   \vfil
 
   :::{.solution}
   \color{red}
   **Solution:**
      
   correct response was d.
   
   -----
   
   \color{black}
   :::
 
 
2. **(4pts)** Indicate which of the following represents the general
   solution to the homogeneous linear ODE $(D^2 - 2D + 2)^2x = 0.$

   a. $h(t) = c_1 e^t\cos(t) + c_2 e^t\sin(t) + c_3 te^t\cos(t) + c_4
      te^t\sin(t)$  

   b. $h(t) = c_1 e^{-t}\cos(t) + c_2 e^{-t}\sin(t) + c_3 te^{-t}\cos(t) + c_4
      te^{-t}\sin(t)$
   
   c. $h(t) = c_1 e^t\cos(t) + c_2 e^t\sin(t)$


   d. $h(t) = c_1 te^t\cos(t) + c_2 te^t\sin(t) + c_3 t^2e^t\cos(t) + c_4 t^2e^t\sin(t)$
  
   \vfil  

   :::{.solution}
   \color{red}
   **Solution:**
      
   correct response was a.
   
   -----
   
   \color{black}
   :::
 
\newpage

3. **(4pts)** The matrix $A = \begin{bmatrix} -2 & 5 \\ -2 & 4 \end{bmatrix}$
   has characteristic polynomial $\lambda^2 - 2\lambda + 2$ and thus
   its eigenvalues are $\lambda = 1 + i$ and $\lambda = 1-i$.
   
   Which of the following is an eigenvector for $A$?
   
   a. $A$ has no eigenvectors.
  
   b. $\begin{bmatrix} 3 - i \\ 2 \end{bmatrix}$  

   c. $\begin{bmatrix} 2 \\ -3 + i \end{bmatrix}$
   
   d. $\begin{bmatrix} -3 + i \\ 2 \end{bmatrix}$

   \vfil

   :::{.solution}
   \color{red}
   **Solution:**
      
   Typo; sorry. Should have been $\begin{bmatrix} 3 + i \\ 2 \end{bmatrix}$
   
   -----
   
   \color{black}
   :::
 
\vfil

4. **(4pts)** Consider the linear system of ODEs $$(\diamondsuit) \quad D \mathbf{x} =
   \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 2 & 1 & 5 \end{bmatrix}
   \mathbf{x} + \begin{bmatrix} 0 \\ 0 \\ e^t \end{bmatrix}.$$
   
   A third order linear ODE is *equivalent* to this system if for each of
   its solutions $x(t)$, the vector-valued function $\mathbf{x}(t) =
   \begin{bmatrix} x(t) \\ x'(t) \\ x''(t) \end{bmatrix}$ is a solution to
   $(\diamondsuit)$. Which of the following linear ODEs is equivalent
   to $(\diamondsuit)$?
   
   a. $(D^3 - 2D^2 - D - 5)x = e^t$
   
   b. $(D^3 - 5D^2 - D - 2)x = e^t$
   
   c. $(D^3 + 2D^2 + D + 5)x = -e^t$
   
   d. $(D^3 + 5D^2 + D + 2)x = -e^t$


   :::{.solution}
   \color{red}
   **Solution:**
      
   correct response was b.
   
   -----
   
   \color{black}
   :::
 

\vfil

5. **(4pts)** Let $A = \begin{bmatrix} 2 & 0 & 2 \\ 0 & -1 & 1 \\ 0 & 0
   & 2\end{bmatrix}$.  $\lambda = 2$ is an eigenvalue of $A$ with
   multiplicity two.  The matrix $A - 2\mathbf{I}_3$ satisfies
   $(A-2\mathbf{I}_3)^2 = \begin{bmatrix} 0 & 0 & 2 \\ 0 & -3 & 1 \\ 0
   & 0 & 0 \end{bmatrix}^2 = \begin{bmatrix} 0 & 0 & 0 \\ 0 & 9 & -3
   \\ 0 & 0 & 0 \end{bmatrix} \sim \begin{bmatrix} 0 & 3 & -1 \\ 0 & 0
   & 0 \\ 0 & 0 & 0 \end{bmatrix}.$ Thus the generalized eigenvectors
   of $A$ for $\lambda = 2$ are generated by $\mathbf{v} =
   \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$ and $\mathbf{w} =
   \begin{bmatrix} 0 \\ 1 \\ 3 \end{bmatrix}$.
   
   Which of the following represents a solution $\mathbf{h}(t)$ to the
   system $D \mathbf{x} = A \mathbf{x}$ with the property that
   $\mathbf{h}(0) = \begin{bmatrix} 1 \\ 2 \\ 6 \end{bmatrix}$?
   
   a. $\mathbf{h}(t) = e^{2t} \begin{bmatrix} 1 \\ 2 \\ 6 \end{bmatrix}$
   
   b. $\mathbf{h}(t) =  e^{2t} \begin{bmatrix} 1+ 6t \\ 2 \\ 6 \end{bmatrix}$

   c. $\mathbf{h}(t) =  e^{2t} \begin{bmatrix} 1+ t \\ 2 \\ 6 \end{bmatrix}$

   d. No solution $\mathbf{h}(t)$ has the property that
      $\mathbf{h}(0) =    \begin{bmatrix} 1 \\ 2 \\ 6 \end{bmatrix}$.

   :::{.solution}
   \color{red}
   **Solution:**
      
   credit awarded. another mistake. Correct response should have been
   $e^{2t} \begin{bmatrix} 1+ 12t \\ 2 \\ 6 \end{bmatrix}$
   
   -----
   
   \color{black}
   :::
 

\vfil

\newpage

> Name: _________________

\vspace{5mm}

-----

6. **(4pts)** Consider the homogeneous system $(\diamondsuit) \quad D
   \mathbf{x} = A \mathbf{x}$ where $A$ is a $3 \times 3$ matrix, and
   let $\mathbf{h}_1(t),\mathbf{h}_2(t)$ be solutions
   to $(\diamondsuit)$. Which of the following statements is correct?
   
   a. $\mathbf{h}_1(0)$ and $\mathbf{h}_2(0)$ are *eigenvectors* for
      $A$.
   
   b. The system $(\diamondsuit)$ has exactly two solutions.

   c. If the vectors $\mathbf{h}_1(0),\mathbf{h}_2(0)$
      are linearly independent, then the general solution to
      $(\diamondsuit)$ is given by $\mathbf{x}(t) =
      c_1\mathbf{h}_1(t) + c_2\mathbf{h}_2(t)$.
   
   d. None of the above statements is correct.
   
   :::{.solution}
   \color{red}
   **Solution:**
      
   correct response was d.
   
   To see that **a.** is incorrect, consider solutions $e^{\lambda t} \mathbf{v}$
   and $e^{\mu t} \mathbf{w}$ arising from eigenvectors $\mathbf{v}$ and $\mathbf{w}$.
   
   Then there is a  solution $h(t) = e^{\lambda t} \mathbf{v} + e^{\mu t} \mathbf{w}$
   but $h(0) = \mathbf{v} + \mathbf{w}$ which is not an eigenvector if $\lambda \ne \mu$.
   
   **b.** in incorrect since all linear combinations $c_1\mathbf{h}_1(t) + c_2 \mathbf{h}_2(t)$ are
   solutions, so there are always *infinitely many solutions.*
   
   Finally, **c.** is incorrect because for a $3 \times 3$ system the
   general solution is generated by three solutions with linearly
   independent initial vectors; two solutions is not enough.
   
   -----
   
   \color{black}
   :::


\newpage

> Name: _________________

\vspace{5mm}

-----

II. Partial Credit problems (75 points)

1. **(15pts)** The matrix $A = \begin{bmatrix} 1 & 1 \\ 2 & 2
   \end{bmatrix}$ has characteristic polynomial $\lambda(\lambda - 3)$
   and hence has eigenvalues $\lambda = 0$ and $\lambda = 3$. An
   eigenvector for $\lambda =0$ is given by $\mathbf{v} = \begin{bmatrix} -1 \\
   1 \end{bmatrix}$ and an eigenvector for $\lambda = 3$ is
   given by $\mathbf{w} = \begin{bmatrix} 1 \\ 2
   \end{bmatrix}$.
   

   Find a particular solution $\mathbf{p}(t)$ for the system of linear
   ODEs $$D \mathbf{x} = A \mathbf{x} + \begin{bmatrix} 0 \\ t
   \end{bmatrix}.$$

   :::{.solution}
   \color{red}
   **Solution:**

   The general solution is generated by the solutions obtained from
   eigenvectors: $$\mathbf{h}_1(t) = e^{0t}\begin{bmatrix} -1 \\ 1
   \end{bmatrix} = \begin{bmatrix} -1 \\ 1 \end{bmatrix} \quad
   \text{and} \quad \mathbf{h}_2(t) = e^{3t}\begin{bmatrix}1 \\ 2
   \end{bmatrix}$$
   
   To find a particular solution, form the Wronskian matrix
   $$W = \begin{bmatrix} -1 & e^{3t} \\
   1 & 2e^{3t} \end{bmatrix}$$
   and notice that
   $\det W = -3e^{3t}$.
   
   A particular solution has the form $\mathbf{p}(t) = c_1(t)
   \mathbf{h}_1(t) + c_2(t) \mathbf{h}_2(t)$, where the vector
   $\mathbf{c} = \begin{bmatrix} c_1(t) \\ c_2(t) \end{bmatrix}$ satisfies
   the matrix equations
   $$W \mathbf{c}' = \begin{bmatrix} 0 \\ t \end{bmatrix}.$$
   
   Using Cramer's Rule, we find that
   $$c_1'(t) = \dfrac{\det \begin{bmatrix} 0 & e^{3t} \\
   t & 2e^{3t} \end{bmatrix}}{-3e^{3t}} = \dfrac{-te^{3t}}{-3e^{3t}} = \dfrac{t}{3}.$$

   $$c_2'(t) = \dfrac{\det \begin{bmatrix} -1 & 0 \\
   1 & t \end{bmatrix}}{-3e^{3t}} = \dfrac{-t}{-3e^{3t}}= \dfrac{te^{-3t}}{3}$$

   Now we integrate to find $c_1(t)$ and $c_2(t)$:
   
   $$c_1(t) = \int c_1'(t) dt = \dfrac{1}{3} \int t dt = \dfrac{t^2}{6} + A.$$

   For $c_2$ we integrate by parts with $u = t, dv = e^{-3t}dt$: 
   
   $$c_2(t) = \int c_2'(t) dt = \dfrac{1}{3} \int te^{-3t} dt
   = \dfrac{1}{3} \left(\dfrac{-t}{3}e^{-3t} + \dfrac{1}{3} \int e^{-3t}dt \right)
   =\dfrac{-1}{9}e^{-3t}\left(t + \dfrac{1}{3} \right) + B$$

   We may take $A=B=0$ since we only seek a particular solution. This gives
   \begin{align*}
   \mathbf{p}(t) =&
   \dfrac{t^2}{6} \begin{bmatrix} -1 \\ 1
   \end{bmatrix} + 
   \dfrac{-1}{9}e^{-3t}\left(t + \dfrac{1}{3} \right) e^{3t}\begin{bmatrix}1 \\ 2
   \end{bmatrix} \\
   =& \dfrac{t^2}{6} \begin{bmatrix} -1 \\ 1
   \end{bmatrix} + 
   \dfrac{-1}{9}\left(t + \dfrac{1}{3} \right)\begin{bmatrix}1 \\ 2
   \end{bmatrix}
   \end{align*}

   -----
   
   \color{black}
   :::



   \vfill


\newpage

> Name: _________________

\vspace{5mm}

-----



2. **(15pts)** Let $A = \begin{bmatrix} 0 & 1 \\ -5 & 4 \end{bmatrix}$.

   The characteristic polynomial of $A$ is $r^2 -4r +5$ so the eigenvalues
   of $A$ are $\lambda = 2 \pm i$.
   
   Moreover, $\mathbf{v} = \begin{bmatrix} 2-i\\ 5 \end{bmatrix}$ is an 
   eigenvector for $\lambda = 2 + i$.

   a. Find the general solution to $D \mathbf{x} = A \mathbf{x}$.
   
   \vfil

   :::{.solution}
   \color{red}
   **Solution:**
      
   The complex solution to (H) is
   \begin{equation*}
   e^{2t}(\cos t +i \sin t)\begin{bmatrix} 2-i\\5\end{bmatrix}
   =e^{2t}\begin{bmatrix}
   2\cos t+\sin t\\
   5\cos t
   \end{bmatrix}
   +i e^{2t}\begin{bmatrix}
   -\cos t+2\sin t\\
   5\sin t
   \end{bmatrix}
   \end{equation*}
   so the real and imaginary parts of this generate the general solution
   \begin{equation*}
   X(t)=C_{1}e^{2t}\begin{bmatrix}
   2\cos t+\sin t\\
   5\cos t
   \end{bmatrix}
   +C_{2 } e^{2t}\begin{bmatrix}
   -\cos t+2\sin t\\
   5\sin t
   \end{bmatrix}.
   \end{equation*}

   
   -----
   
   \color{black}
   :::


   b. Solve the initial value problem $D \mathbf{x} = A \mathbf{x},
      \quad \mathbf{x}(0) = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$.

   :::{.solution}
   \color{red}
   **Solution:**
   
   The value at $t=0$ of the general solution given above is
   \begin{equation*}
   X(0)=C_{1}e^{0}\begin{bmatrix}
   2\cos 0+\sin 0\\
   5\cos 0
   \end{bmatrix}
   +C_{2 } e^{0}\begin{bmatrix}
   -\cos 0+2\sin 0\\
   5\sin 0
   \end{bmatrix}
   =C_{1}\begin{bmatrix}
   2\\
   5
   \end{bmatrix}
   +C_{2}\begin{bmatrix}
   -1\\
   0
   \end{bmatrix};
   \end{equation*}
   setting this equal to the desired initial condition yields the system of equations
   \begin {align*}
   2C_{1}-C_{2}&=1\\
   5C_{1}+0C_{2}&=1
   \end{align*}
   which can be solved by either reducing the augmented matrix
   \begin{equation*}
   \begin{bmatrix}
   2&-1&|1\\
   5&0&|1
   \end{bmatrix}
   \end{equation*}
   or Cramer's Rule, or simply by noting that the second equation says
   $C_{1}=\frac{1}{5}$, 
   and substituting into the first equation yields
   $\frac{2}{5}-C_{2}=1$
   or
   $C_{2}=-\frac{3}{5}$.
   
   Thus the desired solution of (H) is
   \begin{equation*}
   X(t)=
   \frac{1}{5}e^{2t}\begin{bmatrix}2\cos t+\sin t\\5\cos t\end{bmatrix}
   -\frac{3}{4}e^{2t}\begin{bmatrix}-\cos t+2\sin t\\5\sin t\end{bmatrix}
   =e^{2t}\begin{bmatrix}\cos t-\sin t\\\cos t-3\sin t\end{bmatrix}.
   \end{equation*}
   
   
   -----
   
   \color{black}
   :::


\vfill

\newpage

> Name: _________________

\vspace{5mm}

-----


3. **(15pts)** Solve the initial value problem $(4D^2 - 4D + 1)x = 0, \quad x(2) = x'(2) = e$.

   :::{.solution}
   \color{red}
   **Solution:**
      
   The polynomial $4r^2 - 4r + 1$ has root $r=1/2$ with multiplicity 2.
   Thus the general solution is given by
   $$x(t) = c_1e^{t/2}  + c_2 te^{t/2}.$$
   
   Note that 
   \begin{align*}
   x'(t) &= D[x(t)] = \dfrac{c_1}{2}e^{t/2} + c_2e^{t/2}D[t] \\
   &= \dfrac{c_1}{2}e^{t/2} + c_2e^{t/2}(D+1/2)[t] \\
   &= \dfrac{c_1}{2}e^{t/2} + c_2e^{t/2}(1 + t/2)
   \end{align*}
   
   Now, we need
   $$e= x(2) = c_1e + 2c_2e$$
   and
   $$e = x'(2) = \dfrac{1}{2}e c_1 + 2ec_2$$
   
   Thus we must solve the matrix equation
   $$\begin{bmatrix} e & 2e \\ e/2 & 2e \end{bmatrix}
   \begin{bmatrix} c_1 \\ c_2 \end{bmatrix} =
   \begin{bmatrix} e \\ e \end{bmatrix}$$
   
   This can be solved in several ways -- e.g. by row operations on the
   augmented matrix, as follows:
   
   \begin{align*}
   \left[
   \begin{array}{c|c}
   \begin{matrix} e & 2e \\ e/2 & 2e \end{matrix} &
   \begin{matrix} e \\ e \end{matrix}
   \end{array}
   \right]
   \sim 
   \left[
   \begin{array}{c|c}
   \begin{matrix} 1 & 2 \\ 1 & 4 \end{matrix} &
   \begin{matrix} 1 \\ 2 \end{matrix}
   \end{array}
   \right]  
   \sim 
   \left[
   \begin{array}{c|c}
   \begin{matrix} 1 & 2 \\ 0 & 2 \end{matrix} &
   \begin{matrix} 1 \\ 1 \end{matrix}
   \end{array}
   \right]     
   \sim 
   \left[
   \begin{array}{c|c}
   \begin{matrix} 1 & 0 \\ 0 & 2 \end{matrix} &
   \begin{matrix} 0 \\ 1 \end{matrix}
   \end{array}
   \right]        
   \end{align*}
   
   THus $c_1 =0$ and $c_2 = 1/2$ so that
   
   the solution to the initial value problem is given by
   $$x(t) = \dfrac{te^{t/2}}{2}.$$
   
   -----
   
   \color{black}
   :::



\newpage

> Name: _________________

\vspace{5mm}

-----


4. **(15pts)** Consider the matrix $B = \begin{bmatrix} 5 & -3 & -6 \\ 0 & 2 & 0 \\ 3 & -3 & -4 \end{bmatrix}$.

   a. The vector $\mathbf{v} = \begin{bmatrix} 1 \\ -1 \\ 1 \end{bmatrix}$ is an eigenvector for
      $B$. What is the corresponding eigenvalue?

      **Hint:** Compute the vector $B \mathbf{v}$ and compare with $\mathbf{v}$.


   :::{.solution}
   \color{red}
   **Solution:**
      
   
   The product $B \mathbf{v}$ is equal to $$B\mathbf{v} =
   \begin{bmatrix} 2 \\ -2 \\ 2 \end{bmatrix} = 2 \begin{bmatrix} 1 \\
   -1 \\ 1 \end{bmatrix} = 2 \mathbf{v}$$ so the eigenvalue is
   $\lambda = 2$.
   
   -----
   
   \color{black}
   :::


   \vfil
   
   b. Find an eigenvector for $B$ for the eigenvalue $\lambda  = -1$.

   :::{.solution}
   \color{red}
   **Solution:**
   Perform row operations on the matrix $B - (-1)\mathbf{I}_3 = B + \mathbf{I_3}$:
   
   \begin{align*}
   \begin{bmatrix}
   6 & -3 & -6 \\ 0 & 3 & 0 \\ 3 & -3 & -3
   \end{bmatrix}
   \sim 
   \begin{bmatrix}
   2 & -1 & -2 \\ 0 & 1 & 0 \\ 1 & -1 & -1
   \end{bmatrix}   
   \sim 
   \begin{bmatrix}
   0 & 1 & 0 \\ 0 & 1 & 0 \\ 1 & -1 & -1
   \end{bmatrix}      
   \sim 
   \begin{bmatrix}
   1 & -1 & -1 \\ 0 & 1 & 0 \\  0 & 0 & 0 
   \end{bmatrix}         
   \sim 
   \begin{bmatrix}
   1 & 0 & -1 \\ 0 & 1 & 0 \\  0 & 0 & 0 
   \end{bmatrix}            
   \end{align*}
   
   Considering this matrix, we see that an eigenvector for $\lambda = -1$ is given by
   $$\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}.$$
   
   -----
   
   \color{black}
   :::


   \vfil

\newpage

> Name: _______________


5. **(15pts)** Laplace Transforms:

  a. Compute the inverse Laplace tranform $\mathscr{L}^{-1}[F(s)]$ of
     the function $F(s) = \dfrac{3s^2+s+1}{(s+1)(s^2 + 2)}$.

     :::{.solution}
     \color{red}
     **Solution:**
        

     The partial fraction decomposition has the form \begin{equation*}
	 \frac{3s^{2}+s+1}{(s+1)(s^{2}+2)}=\frac{A}{s+1}+\frac{Bs+C}{s^{2}+2};
	 \end{equation*} combining over a common denominator and matching
	 coefficients leads to \begin{equation*} \begin{array}{lrrrcr}
	 s^{2} \text{ terms}:&A&+B&&=&3\\ s \text{ terms}:&&B&+C&=&1\\
	 \text{constant terms}:&2A&&+C&=&1 \end{array} \end{equation*} We
	 can solve the first (respectively, second) equation for $A$
	 (respectively, $C$) in terms of $B$: \begin{align*} A&=3-B\\
	 C&=1-B \end{align*} and substituting into the third equation
	 yields \begin{align*} (6-2B)+(1-B)&=1\\ -3B&=-6\\ B&=2\\ A&=1\\
	 C&=-1 \end{align*} so \begin{equation*}
	 \frac{3s^{2}+s+1}{(s+1)(s^{2}+2)}=\frac{1}{s+1}+\frac{2s-1}{s^{2}+2}.
	 \end{equation*} Then the inverse transform is \begin{align*}
	 {\mathscr{L}}^{-1}\left[\frac{3s^{2}+s+1}{(s+1)(s^{2}+2)}\right]&=%\\
	 {\mathscr{L}}^{-1}\left[\frac{1}{s+1}
	 \right]+{\mathscr{L}}^{-1}\left[
	 \frac{2s}{s^{2}+2}\right]-{\mathscr{L}}^{-1}\left[\frac{1}{s^{2}+2}
	 \right]\\ &=e^{-t}+2\cos t\sqrt{2} -\frac{1}{\sqrt{2}}\sin
	 t\sqrt{2}.  \end{align*}


     -----
     
     \color{black}
     :::


\vfill

  b. If $x$ is a solution to $(D^2 + D + 1)x = 1$ with $x(0) = 0$ and
     $x'(0) = 1$, find an expression for $\mathscr{L}[x]$ as a
     function of $s$.

     :::{.solution}
     \color{red}
     **Solution:**

     By the first differentiation formula, applying the Laplace Transform
     to both sides of the problem yields
     \begin{align*}
     \mathscr{L}{D^{2}x}+\mathscr{L}{Dx}+\mathscr{L}{x}&=\mathscr{L}{1}\\
     \lbrace s^{2}\mathscr{L}{x}-s x(0)-x'(0)\rbrace
     +\lbrace s\mathscr{L}{x}-x(0)\rbrace+\mathscr{L}{x}
     &=\mathscr{L}{1}\\	
     s^{2}\mathscr{L}{x}-1
     +s\mathscr{L}{x}+\mathscr{L}{x}
     &=\frac{1}{s}\\
     (s^{2}+s+1)\mathscr{L}{x}&=1+\frac{1}{s}=\frac{1+s}{s}\\
     \mathscr{L}{x}&=\frac{1+s}{s(s^{2}+2+1)}	
     \end{align*}

      
     -----
      
     \color{black}
     :::
   
     \vfill


\begin{center}
**End of Exam** 
\end{center}
