---
author: Math 51 Fall 2021
title: |
  Problem Set 4 \
  Linear Independence; Constant Coefficient Linear ODES (real roots)
date: due 2022-02-14 at 11:00 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

**Reminders**

- Midterm 1 is February 14 in the *open block* -- 12:00-1:20 PM.

-----

These problems cover [@gutermanNitecki, secs. 2.4, 2.5]


#. Decide whether the  indicated functions are linearly independent on the interval $(-\infty,\infty)$.
   If the functions are linearly independent, show that this is the
   case using the definition, or using the Wronskian test. To show
   that the functions $f_1(t),f_2(t),\dots,f_n(t)$ are linearly
   dependent, you need to give explicit values $c_1,c_2,\cdots,c_n$
   for which at least one $c_i$ is non-zero and such that $0 = c_1
   h_1(t) + c_2 h_2(t) + \cdots + c_n h_n(t)$ for every $t$.

   a. $h_1(t) = 1, \quad h_2(t) = t-2, \quad h_3(t) = (t-2)^2$.

      :::{.solution}
      \color{red}
      **Solution:**

      The functions are linearly independent. Indeed, their Wronskian is given by
	  
      $$W(1,t-2,(t-2)^2) = \det \begin{bmatrix} 1 & t-2 & (t-2)^2 \\ 0
	  & 1 & 2(t-2) \\ 0 & 0 & 2 \end{bmatrix} = 2.$$ So for any $t_0$
	  -- for example, for $t_0 = 0$ -- we have $W(1,t-2,(t-2)^2)(0)
	  = 2 \ne 0$.
	  
	  Thus the Wronskian test shows the functions to be linearly indep.


      -----
      
      \color{black}
      :::


   b. $h_1(t) = t^5, \quad h_2(t) = |t^5|$.

      :::{.solution} 
	  \color{red} 
	  **Solution:** 
	  
	  Let's argue using the definition that the functions are linearly
      independent. Suppose that there are constants $c_1,c_2$ for which
	  $$0 = c_1 t^5 + c_2 |t^5|$$

      When $t=1$, we then find that $0 = c_1 \cdot 1^5 + c_2 \cdot |1^5| = c_1 + c_2$ 
	  and when $t=-1$ we find that $0 = c_1 \cdot (-1)^5 + c_2 \cdot |(-1)^5| = -c_1 + c_2$.

      Thus 
	  $$\left \{ \begin{matrix}
	  0 &= c_1 + c_2 \\
	  0 &= -c_1 + c_2
	  \end{matrix}\right .$$

      Adding the equations, find that $2c_2 = 0$ so that $c_2 = 0$ and then also $c_1 = 0$.
	  
	  Since we have shown that $c_1 = c_2 = 0$, we have confirmed that
      $h_1$ and $h_2$ are *linearly independent*.  


      -----
      
      \color{black}
      :::


   c. $h_1(t) = \sin^2(t) + 1, \quad h_2(t) = 2\cos^2(t), \quad h_3(t) = 10$

      :::{.solution}
      \color{red}
      **Solution:**

      A familiar trig identity says that $\sin^2(t) + \cos^2(t) = 1$.
	  
	  Consider constants $a,b,c$ and consider the expression
	  
	  $$a (\sin^2(t) + 1) + b \cdot \cos^2(t) + c 10 = a\sin^2(t) + 2b
      \cos^2(t) + 10c+a \quad (\clubsuit)$$
	  
	  If we take $b = a/2$ we find that
	  
	  $$(\clubsuit) = a\sin^2(t) + 2\dfrac{a}{2} \cos^2(t) +
      10c+\dfrac{a}{2} = a(\sin^2(t) + \cos^2(t)) + 10c
      +\dfrac{a}{2} = \dfrac{3a}{2} + 10c$$
	  
	  If we take $a=2$, $b = \dfrac{a}{2} = 1$, and $c = \dfrac{-3}{10}$ we see that
	  
	  $(\clubsuit) = 0$. This shows that
	  
      $2 h_1(t) + h_2(t)  - \dfrac{3}{10} h_3(t) = 0$
	  
	  so that $h_1,h_2,h_3$ are *linearly dependent*.

      -----
      
      \color{black}
      :::


   d. $h_1(t) = e^t, \quad h_2(t) = e^{t+1}, \quad h_3(t) = 1.$

      :::{.solution}
      \color{red}
      **Solution:**

      These functions are linearly dependent. Indeed, notice that
      $h_2(t) = e^{t+1} = e \cdot e^t = e \cdot h_1(t)$. Thus if we
      take $c_1 = e, c_2 = -1, c_3 = 0$, we find that
	  
	  $$c_1 h_1(t) + c_2 h_2(t) + c_3 h_3(t) = e \cdot h_1(t) -
      h_2(t) + 0 \cdot h_3(t) = e \cdot e^t - e \cdot e^t = 0;$$
	  
	  since $c_1,c_2,c_3$ are not all zero, we have now showed the
	  functions to be linearly dependent.


      -----
      
      \color{black}
      :::


#. Suppose that $h_1(t), h_2(t), h_3(t)$ are linearly dependent. Show that
   $h_1'(t),h_2'(t),h_3'(t)$ are linearly dependent, as well.
   
   You will need to use the *definition* of linear dependence to make
   this argument.


   :::{.solution}
   \color{red}
   **Solution:**

   We suppose that $h_1,h_2,h_3$ are linearly dependent. Thus
   there are numbers $c_1,c_2,c_3$ with $c_i \ne 0$ for at least one $i$ for which
   $$0 = c_1 h_1(t) + c_2h_2(t) + c_3 h_3(t).$$
   
   Now apply the differentiation operator $D = \dfrac{d}{dt}$ to
   each side of this equation to find that
   
   $$0 = D[0] = D[c_1 h_1(t) + c_2h_2(t) + c_3 h_3(t)] = c_1 D[h_1(t)] + 
   c_2 D[h_2(t)] + c_3 D[h_3(t)] =  c_1 h_1'(t) + 
   c_2 h_2'(t) + c_3 h_3'(t)$$

   This last equation establishes the linear dependence of
   $h_1',h_2',h_3'$.


   -----
      
   \color{black}
   :::


#. Find the general solution of each of the following ODEs:

   a. $(D^2-2)(D+4)^2 x = 0$

      :::{.solution}
      \color{red}
      **Solution:**

      The characteristic polynomial has roots $\pm \sqrt{2}$ each with
      multiplicity 1 and $-4$ with multiplicity 2.
	  
	  The ODE thus has solutions
	  
	  $$e^{\sqrt{2}t}, \quad e^{-\sqrt{2}t}, \quad e^{-4t}, \quad te^{-4t}$$
	  
	  A Theorem in the book/lecture tells us that these solutions are
	  *linearly independent*. Since the ODE is of order 4, they
	  generate the general solution.
	  
	  In other words, the general solution is given by
	  $$x = c_1 e^{\sqrt{2}t} + c_2 e^{-\sqrt{2}t} + c_3 e^{-4t} + c_4 te^{-4t}.$$


      -----
      
      \color{black}
      :::


   b. $D(D^2 - 4)^2x=0$.
   
      :::{.solution}
      \color{red}
      **Solution:**

	  The characteristic polynomial $r(r^2 -4)^2$ has roots $2$ and
      $-2$ each with multiplicity $2$ together with the root $0$ of
      multiplicity 1.
	  
	  Thus we find the following five solutions to the 5th order ODE:
	  
	  $$e^{2t}, \quad te^{2t}, \quad e^{-2t}, \quad te^{-2t}, \quad e^{0t} = 1.$$
	  
	  Since we know these functions to be linearly independent, they
      generate the general solution, which is
	  
	  $$x(t) = c_1e^{2t}+ c_2te^{2t} + c_3 e^{-2t} + c_4 te^{-2t} + c_5.$$

      -----
      
      \color{black}
      :::


   c. $\dfrac{d^2x}{dt^2} - 2\dfrac{dx}{dt} - 4x = 0$.
   
      :::{.solution}
      \color{red}
      **Solution:**

	  Rewriting the equation as $$(D^2 -2D - 4)x = 0,$$
	  we see that the characteristic polynomial is $r^2 - 2r - 4$.
	  
	  Using the quadratic formula, we find that this polynomial has roots
	  $$\dfrac{2 \pm \sqrt{4 + 16}}{2} = 1 \pm \sqrt{5}.$$
   
      Thus the general solution is generated by
	  
	  $$e^{(1+\sqrt{5})t} \quad \text{and} \quad e^{(1-\sqrt{5})t}.$$
	  
	  i.e. the general solution is
	  
	  $$x(t) = A e^{(1+\sqrt{5})t} + B e^{(1-\sqrt{5})t}.$$


      -----
      
      \color{black}
      :::


#. Solve the initial value problem $$(D+2)^2 D x = 0; \quad x(0) = x'(0) =  1, \quad 
   x''(0) = 0.$$

   :::{.solution}
   \color{red}
   **Solution:**


   The char. poly $(r+2)^2r$ has root $-2$ with multiplicity 2 and
   root $0$ with multiplicity one. Thus the general solution has the
   form
   
   $$x(t) = Ae^{-2t} + Bte^{-2t} + C.$$
   
   Note that $$x'(t) = -2Ae^{-2t} + B(1 -2t)e^{-2t}$$
   
   and $$x''(t) = 4Ae^{-2t} + B (-4 + 4t) e^{-2t}.$$
   
   Now we need
   
   $$\left \{
   \begin{matrix}
   1 &= x(0) &= A + C \\
   1 &= x'(0)&= -2A + B \\
   0 &= x''(0) &= 4A - 4B
   \end{matrix}
   \right .$$
   
   The third equation tells us that $A=B$. Thus the second equation says that
   $1  = -2A + A = -A$ so that $A = B = -1$.

   Finally, the first equation now shows that $1 = -1 + C$ and hence that $C=2$.
   
   We now conclude that the solution to the initial value problem is
   
   $$x(t) = -e^{-2t} -te^{-2t} + 2.$$


   -----
      
   \color{black}
   :::


#. Use the exponential shift formula (see the reminder below) to compute
   the function $Lf = L[f]$ in each case:

   a. $L = D^2 + D - 1, \quad f(t) = e^t\sin(t)$
   
      :::{.solution}
      \color{red}
      **Solution:**

      Using the exponential shift formula, we find that
	  \begin{align*}
	  \left(D^2 + D - 1\right)[e^t \sin(t)] &= e^t\left((D+1)^2 + (D+1) - 1\right)[\sin(t)] \\
	  &= e^t\left(D^2 + 2D + 1  + D+1 - 1\right)[\sin(t)] \\
	  &= e^t\left(D^2 + 3D + 1\right)[\sin(t)] \\
	  &= e^t\left( -\sin(t) +3\cos(t) + \sin(t)\right) \\
	  &= 3e^t\cos(t)
	  \end{align*}


      -----
      
      \color{black}
      :::
   
   
   b. $L = (D-1)(D^2 + D + 1), \quad f(t) = te^{2t}$.

      :::{.solution}
      \color{red}
      **Solution:**

      \begin{align*}
	  (D-1)(D^2 + D + 1)[te^{2t}] &= e^{2t} (D+2-1)((D+2)^2 + (D+2) + 1)[t] \\
	  &= e^{2t} (D+1)(D^2 + 4D + 4 + (D+2) + 1)[t] \\
	  &= e^{2t} (D+1)(D^2 + 5D + 7)[t] 	\\
	  &= e^{2t} (D+1)[5 + 7t] 	\\	  
	  &= e^{2t} [7 + (5+7t)] = e^{2t}[ 12 + 7t]
	  \end{align*}
	  

      -----
      
      \color{black}
      :::




# Bibliography {.unnumbered}

:::{#refs}
:::
