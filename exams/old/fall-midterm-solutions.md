---
author: |
  Math 51 Fall 2021 --
  Tufts University --
  Z. Nitecki and G. McNinch
title: |
  Midterm Exam **Solutions**
date: 2021-10-20
fontsize: 12pt
header-includes: |
  \usepackage[top=10mm,bottom=20mm,left=20mm,right=20mm]{geometry}
  \usepackage{palatino,mathpazo}
---


I. Multiple Choice Problems (24 points)

1. **(4pts)** A drug is absorbed by the body at a rate proportional to
   the amount of the drug present in the bloodstream after $t$ hours. If
   there are $x(t)$ mg of the drug present in the bloodstream at time $t$,
   assume that the drug is absorbed at a rate of $0.5 x(t)$ /hour.
   If a patient receives the drug intravenously at a constant rate of
   3 mg/hour, to which of the following ODEs is $x(t)$ a solution?

   a. $x'(t) = -0.5x(t) + 3$
   
   b. $x'(t) = -0.5x(t); \quad x(0) = 3$
   
   c. $x'(t) = 0.5x(0) + 3$
   
   d. $x'(t) = .5x(t) - 3$

   :::{.solution}
   \color{red}
   **Solution:**
      
   A.
   
   -----
   
   \color{black}
   :::
 

2. **(4pts)** Which of the following represents a *linear* ODE?

   a. $x\cdot x'' + x + 1 = \sin(t)$
   
   b. $t\cdot x'' + x^2 + 1 = \sin(t)$
   
   c. $t^2\cdot x'' + (t+1) \cdot x + 1 = \sin(t)$
   
   d. $(D^2 + D + t)x^2 = \sin(t)$


   :::{.solution}
   \color{red}
   **Solution:**
   
   C.
   
   -----
   
   \color{black}
   :::

3. **(4pts)** Consider the *Wronskian* $W(t) = W(f_1,f_2,f_3)(t)$ of
   the functions $$f_1(t) = 1, \qquad f_2(t) = 1+t \qquad \text{and}
   \qquad f_3(t) = \ln(1+t).$$ Which of the following statements is
   *most correct*?

   a. The Wronskian is given by $W(t) = 1/(1+t)^2$; since $W(1)
      = 1/4$ is *non-zero*, the functions are linearly independent on
      the interval $(-1,\infty)$.
   
   b. Since $W(1) = 0$, the functions are linearly dependent on $(-1,\infty)$.
   
   c. Since $W(t)$ is not defined on $(-\infty,\infty)$, the Wronskian
      test doesn't apply.
   
   d. None of the above.


   :::{.solution}
   \color{red}
   **Solution:**
     
   A. or D.
   
   -----
   
   \color{black}
   :::


4. **(4pts)** Let $P(D)$ be a differential operator of order $4$, and
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
   **Solution:**
   
   B.
   
   -----
   
   \color{black}
   :::

5. **(4pts)** You are given that a particular solution to
   $$(\heartsuit) \quad (D^2-2D +1)x = e^t$$ is $p(t) = \dfrac{t^2
   e^t}{2}$. Which of the following best represents the general
   solution to $(\heartsuit)$?
   
   a. $c_1 e^t + c_2 te^t$.
   
   b. $\dfrac{t^2 e^t}{2} + c_1 e^t + c_2 te^t$.
   
   c. $\dfrac{t^2 e^t}{2} + c e^t$.
   
   d. $\dfrac{t^2 e^t}{2} + c_1 e^t + c_2 e^{-t}$.


   :::{.solution}
   \color{red}
   **Solution:**
     
   B. 
	 
   -----
   
   \color{black}
   :::

6. **(4pts)** Let $x_1(t)$ and $x_2(t)$ be solutions to the ODE
   $(t+1)x'' + x' + x = 0$. Suppose that $x_1(0) = x_2(0)$ and that
   $x_1'(0) = x_2'(0)$. Which of the following statements is most
   correct?
   
   a.  $x_1(t) = x_2(t)$ for every $t$.
   
   b. Since the ODE is *normal* on the interval $(-1,\infty)$, we can
      conclude that $x_1(t) = x_2(t)$ for $-1 < t < \infty$.

   c. No conclusion is possible because the existence and uniqueness
      theorem does not apply to this ODE.
	  
   d. We can only conclude that $x_1(t) = x_2(t)$ for all $t$ if we also
      assume that $x''_1(0) = x''_2(0)$.

   :::{.solution}
   \color{red}
   **Solution:**
     
   B.
   
   -----
   
   \color{black}
   :::

\newpage

II. Partial Credit problems (75 points)

1. **(15pts)** Find the general solution to the differential equation
   $$(t+1)x' = \dfrac{x}{t-1}, \quad t>1.$$

   :::{.solution}
   \color{red}
   **Solution:**
      
   Separating variables, we are led to the integrals
   
   $$(\clubsuit) \quad \int \dfrac{1}{x} dx = \int\dfrac{1}{(t+1)(t-1)}dt$$
	  
   To find the integral on the right, use the method of *partial
   fractions.* We must solve
   
   $$\dfrac{1}{(t+1)(t-1)}  = \dfrac{A}{t+1} + \dfrac{B}{t-1} = \dfrac{A(t-1) + B(t+1)}{(t+1)(t-1)}.$$
   
   Thus, we require that
   
   $$0t + 1 = 1 = A(t-1) + B(t+1) = (A+B)t + (B-A).$$
   
   Comparing coefficients, we find that 
   
   \begin{align*}
   0 =& A+B \\
   1 =& -A + B
   \end{align*}
   
   Adding the two equations, we find that $2B=1$ so that $B=1/2$ and
   then $A = -1/2$.  Thus,
   
   $$\dfrac{1}{(t+1)(t-1)} = \dfrac{-1}{2(t+1)} + \dfrac{1}{2(t-1)} =
   \dfrac{1}{2}\left(\dfrac{1}{t-1} - \dfrac{1}{t+1}\right).$$
   
   Returning now to the integrals $(\clubsuit)$, we find that
   \begin{align*}
   \ln|x| &= \dfrac{1}{2} \int \left( \dfrac{1}{t-1} - \dfrac{1}{t+1} \right) dt \\
   &=\dfrac{1}{2}\left(\ln(t-1) - \ln(t+1)\right) + C \\
   &=\ln(\sqrt{t-1}) - \ln(\sqrt{t+1}) + C
   \end{align*}
   
   After taking the  exponential of each side, we find that
   
   $$x = k\sqrt{\dfrac{t-1}{t+1}}$$
   for an arbitrary constant $k$.
   
   -----
   
   \color{black}
   :::



2. **(15pts)** Solve the initial value problem
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



3. **(15pts)** Use the exponential shift formula
   $$P(D)[e^{\lambda t}y] = e^{\lambda t}P(D+\lambda)[y]$$ to
   compute the function $P(D)[f]$ in each of the following cases:
   
   a. $P(D) = D^2 +D -6$ and $f = t^2 e^{2t}$.

   :::{.solution}
   \color{red}
   **Solution:**
   We have
   \begin{align*}
   P (D + 2) &= (D + 2)^2 + (D + 2) − 6 \\
   &= D^2 + 4D + 4 + D + 2 − 6  \\
   &= D^2 + 5D = (D + 5)D
   \end{align*}
   so
   \begin{align*}
   P (D)[e^{2t}] &= e^{2t} P (D + 2)[t^2 ] \\
   &= e^{2t} (D + 5)D[t^2] \\
   &= e^{2t} (D + 5)[2t] \\
   &= e^{2t} (2 + 10t)	
   \end{align*}
	  
   -----
   
   \color{black}
   :::


   
   b. $P(D) = D^2 + 3$ and $f = e^t \cos(3t)$.
   
   :::{.solution}
   \color{red}
   **Solution:**
      
   $$P (D + 1) = (D + 1)^2 + 3 = D^2 + 2D + 1 + 3 = D^2 + 2D + 4$$
   so
   \begin{align*}
   P(D)[e^t \cos t] &= e^t P (D + 1)[\cos 3t] \\
   &= e^t (D^2 + 2D + 4)[\cos(3t)] \\
   &= e^t (−9 \cos(3t) + 2(−3 \sin(3t)) + 4 \cos(3t)) \\
   &= e^t (−5 \cos(3t) − 6 \sin(3t)).	
   \end{align*}
	  
   -----
   
   \color{black}
   :::


4. **(15pts)** Show that the functions $$f_1(t) = e^t\cos(t), \quad
   f_2(t) = e^t\sin(t), \quad f_3(t) = e^t$$ are linearly independent.
   
   You have been told that functions like this are independent.
   However, here we want you to demonstrate it directly in this
   case. You may use the *Wronskian test* (with all details needed to
   justify using it) or other, direct arguments from the definition.

   :::{.solution}
   \color{red}
   **Solution:**

   There are several possible strategies for solving this problem;
   here we list a few of them.
   
   First, you can use the Wronskian test. This requires computation of
   the first and second derivatives of the $f_i$, which is perhaps
   most easily done using the *exponential shift formula*.
   
   One finds:
   $$D[e^t\cos(t)] = e^t(D+1)[\cos(t)] = e^t(\cos(t) - \sin(t))$$
   $$D[e^t\sin(t)] = e^t(D+1)[\sin(t)] = e^t(\cos(t) + \sin(t))$$
   $$D^2[e^t\cos(t)] = D[e^t(\cos(t) - \sin(t))] = e^t(D+1)[\cos(t) - \sin(t)] = -2e^t \sin(t).$$
   $$D^2[e^t\sin(t)] = D[e^t(\cos(t) + \sin(t))] = e^t(D+1)[\cos(t) + \sin(t)] = 2e^t \cos(t).$$   

   Thus the Wronskian matrix is given by
   $$W = W(f_1,f_2,f_3) = \begin{bmatrix}
   e^t \cos(t) & e^t \sin(t) & e^t \\
   e^t(\cos(t) - \sin(t)) & e^t(\cos(t) + \sin(t)) & e^t \\
   -2e^t\sin(t) & 2e^t \cos(t) & e^t
   \end{bmatrix}$$
   
   Now, according to the Wronskian test, the functions will be
   linearly independent (on the interval $(-\infty,\infty)$) provided that
   $\det W(t_0)$ is non-zero for some $t_0$. If we take $t_0 = 0$, we find that
   
   $$\det W\bigg \vert_{t=0} = \det \begin{bmatrix}
   1 & 0 & 1 \\
   1 & 1 & 1 \\
   0 & 2 & 1
   \end{bmatrix} = \det \begin{bmatrix}
   1 & 1 \\ 
   2 & 1
   \end{bmatrix} + \det \begin{bmatrix}
   1 & 1 \\
   0 & 2
   \end{bmatrix} = -1 + 2 = 1$$
   
   Since this determinant is non-zero, the Wronskian test confirms the
   linear independence of $f_1,f_2,f_3$.

   -----
   
   A second method of solving this problem just uses the *definition of linear independence.*
   
   Suppose that $c_1,c_2,c_3$ are constants and that $$c_1 e^t
   \cos(t) + c_2 e^t \sin(t) + c_2 e^t = 0.$$ To show that the
   functions are linearly independent, we must *argue* that $c_1 = c_2
   = c_3 = 0$.
   
   Factoring out the quantity $e^t$, our assumption shows that
   $$e^t(c_1\cos(t) + c_2\sin(t) + c_3)  = 0.$$
   Since $e^t \ne 0$ for all $t$, we find that
   $$c_1\cos(t) + c_2\sin(t) + c_3  = 0.$$   

   Now, since this equation holds for all times $t$, we may choose
   some particular values of $t$ to find equations for the constants
   $c_i$.
   
   When $t=0$, we find that
   $$0 = c_1 \cos(0) + c_2\sin(0) + c_3 = c_1 + c_3.$$

   When $t=\pi/2$, we find that
   $$0 = c_1 \cos(\pi/2) + c_2\sin(\pi/2) + c_3 = c_2 + c_3.$$

   When $t=\pi$, we find that
   $$0 = c_1 \cos(\pi) + c_2\sin(\pi) + c_3 = -c_1 + c_3.$$

   Now, we solve the system of equations
   \begin{align*}
   0 &= c_1 + c_3 \\
   0 &= c_2 + c_3 \\
   0 &= -c_1 + c_3 \\   
   \end{align*}
   
   Adding the first and third equation gives $0 = 2c_3$ so that $c_3 =
   0$. Now the first equation shows that $c_1 = 0$ and the second
   shows that $c_2 = 0$.
   
   Since we have argued that $c_1=c_2=c_3=0$, we conclude from the
   definition that $f_1,f_2,f_3$ are linearly independent.
   
   
   -----
   
   \color{black}
   :::



5. **(15pts)** Solve the initial value problem
   $$4x'' + 4x' -3x = 0; \quad x(0) = 0, \quad x'(0) = 1.$$
 
   :::{.solution}
   \color{red}
   **Solution:**

   The characteristic polynomial factors as
   $$4r^2 + 4r -3 = (2r + 3)(2r - 1)$$
   and thus has roots $\dfrac{-3}{2}$ and $\dfrac{1}{2}$.
   
   It follows that the general solution to the indicated ODE  is given by
   $$x(t) = c_1 e^{-3t/2} + c_2 e^{t/2}$$

   Note that
   
   $$x'(t) = \dfrac{-3c_1}{2} e^{-3t/2} + \dfrac{c_2}{2} e^{t/2}.$$

   We now require that
   
   \begin{align*}
   0 &= x(0) = c_1 + c_2 \\
   1 & = c'(0) = \dfrac{-3c_1}{2} + \dfrac{c_2}{2}
   \end{align*}

   i.e.
   \begin{align*}
   0 &=  c_1 + c_2 \\
   2 &= -3c_1 + c_2
   \end{align*}
   
   Subtracting the first equation from the second gives $2 = -4c_1$ so
   that $c_1 = -1/2$, and then the first equation shows that $c_2 = -c_1 = 
   1/2.$
   
   Thus the solution to the IVP is
   $$x(t) = \dfrac{-e^{-3t/2}}{2} + \dfrac{e^{t/2}}{2}$$
   
   -----
   
   \color{black}
   :::

