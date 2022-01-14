---
author: Math 51 Fall 2021
title: |
  Problem Set 4 \
  Linear ODES and the Wronskian
date: due 2021-10-01 at 11:59 PM
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

These problems concern [@gutermanNitecki § 2.2, 2.3 ].

#. For each of the following ODEs, answer the following questions:
   - is the ODE  linear? 
   - if the ODE is linear, write a linear differential operator $L$
     and use it to rewrite the ODE in the form $Lx = E(t)$.
   - is ODE *homogeneous*?
   
   a. $\dfrac{d^5x}{dt^5} + t^2\dfrac{dx}{dt} = te^t$.

      :::{.solution}
      \color{red}
      **Solution:**

      This equation *is linear* and is *not homogeneous*.
	  
	  We can rewrite it as follows: 
	  $$(D^5 + t^2 D)x = te^t$$
	  So $L = D^5 + t^2 D$.

      -----
      
      \color{black}
      :::
      
   b. $\dfrac{d^2x}{dt^2} = x \dfrac{dx}{dt} + t$.
   
      :::{.solution}
      \color{red}
      **Solution:**

      This equation *is not linear*. The product $x \dfrac{dx}{dt}$ is
      a non-linear term.

      -----
      
      \color{black}
      :::
      
   c. $\dfrac{d^3x}{dt^3} + \sin(t) \dfrac{dx}{dt} = t^2 x$.
   
      :::{.solution}
      \color{red}
      **Solution:**
   
      This equation *is linear* and it *is homogeneous*.
	  
      It can be written $(D^3 + \sin(t) D - t^2)x = 0$
   
      So $L = D^3 + \sin(t)D - t^2$.
	  
	  
      -----
      
      \color{black}
      :::
   
   d. $\dfrac{d^3x}{dt^3} + e^t \dfrac{d^2x}{dt^2} + tx = e^t.$

      :::{.solution}
      \color{red}
      **Solution:**
   
      *Linear* but *not homogeneous*.
	  
	  It can be written $(D^3 + e^t D^2 + t)x = e^t$.
	  
	  Thus $L = D^3 + e^t D^2 + t$.
   
      -----
      
      \color{black}
      :::
   
#. Calculate and simplify the determinant of the following matrix:

   $$\begin{bmatrix}
    e^t & \sin(t) & \cos(t) \\
	e^t & \cos(t) & -\sin(t) \\
	e^t & -\sin(t) & -\cos(t) 
   \end{bmatrix}$$

   :::{.solution}
   \color{red}
   **Solution:**

   Using *row expansion* along the first row, the determinant of the
   above matrix is equal to
   
   \begin{align*}
   & e^t \det \begin{bmatrix}
   \cos(t) & -\sin(t) \\
   -\sin(t) & -\cos(t) 
   \end{bmatrix}
   - \sin(t) \det \begin{bmatrix}
   e^t & -\sin(t) \\
   e^t & -\cos(t)
   \end{bmatrix}
   + \cos(t) \det \begin{bmatrix}
   e^t & \cos(t) \\
   e^t & -\sin(t) 
   \end{bmatrix} \\
   =& -e^t [\cos^2(t) + \sin^2(t)] +\sin(t)e^t[\cos(t) - \sin(t)] + \cos(t)e^t[-\sin(t) - \cos(t)] \\
   =& -e^t - \sin^2(t) e^t - \cos^2(t) e^t \\
   =& -2e^t
   \end{align*}
   
   -----
   
   \color{black}
   :::


#. Consider the differential equation $Lx = 0$ where
   $L = D^3 - 4D$.
   
   a. Check that each of $h_1(t) = 1$, $h_2(t) = e^{2t}$ and $h_2(t) =
      e^{-2t}$ are solutions to this ODE.

      :::{.solution}
      \color{red}
      **Solution:**
   
      We must check that $L[h_i(t)] = 0$ for $i=1,2,3$. We have:
   
      - $L[h_1(t)] = L[1] = D^3[1] - 4D[1] = 0 - 0 = 0$
	  - $L[h_2(t)] = L[e^{2t}] = D^3[e^{2t}] -4 D[e^{2t}] = 2^3 e^{2t}  - 4 \cdot 2 e^{2t} = 0$
	  - $L[h_3(t)] = L[e^{-2t}] = D^3[e^{-2t}] - 4 D[e^{-2t}] = (-2)^3 e^{-2t} -4 \cdot (-2) e^{-2t} 
	    = (-8+8)e^{-2t} = 0$
   
      -----
      
      \color{black}
      :::
   
   b. Use the Wronskian test to confirm that $h_1,h_2,h_3$ generate
      the general solution.
   
      :::{.solution}
      \color{red}
      **Solution:**
   
      Since we have three solutions $h_1(t),h_2(t),h_3(t)$ to the
      third order equation, we will know that the general solution has
      the form $$x = c_1h_1(t) + c_2h_2(t) + c_3h_3(t) = c_1 + c_2
      e^{2t} + c_3 e^{-2t}$$ provided that the Wronskian
      $W(h_1,h_2,h_3)(t_0) = W(1,e^{2t},e^{-2t})(t_0)$ is non-zero for
      some value $t_0$.
	  
	  Now,
	  $$W(1,e^{2t},e^{-2t}) = \det 
	  \begin{bmatrix}
	   1 & e^{2t} & e^{-2t} \\
	   0 & 2e^{2t} & -2e^{-2t} \\	 
	   0 & 4e^{2t} & 4e^{-2t} 
	  \end{bmatrix} = (*)$$
	  
	  Using *column expansion* on the first column, find that
	  $$(*) = 1 \cdot \det 
	  \begin{bmatrix}
	   2e^{2t} & -2e^{-2t} \\	 
	   4e^{2t} & 4e^{-2t} 	  
	  \end{bmatrix} - 0 + 0 =
	  2e^{2t} \cdot 4e^{-2t} - (-2)e^{-2t} \cdot 4e^{2t} = 8+8 = 16.$$
	  
	  Thus $W(1,e^{2t},e^{-2t})(t)$ is non-zero for *all values* of
	  $t$.  So e.g. you can take $t_0 = 0$; then $W(1,e^{2t},e^{-2t})(0) = 16
	  \ne 0$.
	  
	  It now follows that $h_1,h_2,h_3$ generate the general solution.
	  
      -----
      
      \color{black}
      :::
   
   c. Indicate the system of linear equations that you would need to
      solve in order to find $c_1,c_2,c_3$ such that
	  
	  $$x(t) = c_1 h_1(t) + c_2 h_2(t) + c_3 h_3(t)$$
	  
	  is a solution to the initial value problem $Lx = 0, x(0) = 1, x'(0) = 1, x''(0) = 1$.

      *Don't solve this system of equations*.
   
      :::{.solution}
      \color{red}
      **Solution:**
   
      To find the correct values of $c_1,c_2,c_3$ we must solve:
	  
	  $$\left \{
	  \begin{matrix}
	  1 & = x(0) & = c_1h_1(0) + c_2h_2(0) + c_3h_3(0) & = c_1 + c_2 + c_3 \\
	  1 & = x'(0) & = c_1h_1'(0) + c_2h_2'(0) + c_3h_3'(0) & = 2c_2 - 2c_3 \\
	  1 & = x''(0) & = c_1h_1''(0) + c_2h_2''(0) + c_3h_3''(0) & = 4c_2 + 4c_3	
	  \end{matrix}
	  \right .$$
   
      -----
      
      \color{black}
      :::
   

#. Find the solution to the initial value problem
   $$D^2 x = \sin(2t), x(\pi) = 1, x'(\pi) = 0.$$

   :::{.solution}
   \color{red}
   **Solution:**

   We first find the general solution by antidifferentiation.
   
   $$Dx = \int \sin(2t)dt = \dfrac{-1}{2} \cos(2t) + A$$

   $$x = \dfrac{-1}{2} \int \cos(2t)dt + At = \dfrac{-1}{4} \sin(2t) + At + B.$$
   
   Now, we need
   $$\left \{ \begin{matrix}
   1 & = x(\pi) & = \dfrac{-1}{4} \sin(2\pi) + A\pi + B = A \pi + B\\
   0 & = x'(\pi) &= \dfrac{-1}{2} \cos(2\pi) + A = \dfrac{-1}{2} + A
   \end{matrix}
   \right .$$
   
   Thus $A=\dfrac{1}{2}$ and $B = 1-\dfrac{\pi}{2}$ so that
   
   $$x = \dfrac{-1}{4}\sin(2t) +\dfrac{t}{2} + 1 - \dfrac{\pi}{2}.$$
   
   -----
   
   \color{black}
   :::


#. Let $L = D^2 - 3D + 2$.  

   a. Check that $h_1(t) = e^{2t}$ and $h_2(t) = e^t$ are both
      solutions to the ODE $Lx = 0$.

      :::{.solution}
      \color{red}
      **Solution:**
   
      Check:
	  
	  - $L[e^{2t}] = (D^2 - 3D +2)[e^{2t}] = D^2[e^{2t}] - 3D[e^{2t}]  + 2e^{2t}
	    = 4e^{2t} -3\cdot 2e^{2t} + 2e^{2t} = 0$
   
      - $L[e^{t}] = (D^2 - 3D +2)[e^t] = D^2[e^{t}] - 3D[e^{t}]  + 2e^{t}
	    = e^{t} -3 e^{t} + 2e^{t} = 0$
		
      -----
      
      \color{black}
      :::
   

   b. Use the *Wronskian test* to show that 
   
      $$x(t) = c_1h_1(t) + c_2h_2(t)$$
	  
	  is the *general solution* to $Lx = 0$.

      :::{.solution}
      \color{red}
      **Solution:**
   
      Since $h_1$ and $h_2$ are *solutions* to the homogeneous equation $Lx=0$, the Wronskian
	  test tells us that they generate the general solution provided we shows that
	  $$W(e^{2t},e^t)(t_0) \ne 0$$
	  is non-zero for some value $t_0$.
	  
	  Let's compute:
	  $$W(e^{2t},e^t) = \det \begin{bmatrix}
	  e^{2t} & e^t \\
	  2e^{2t} & e^t
	  \end{bmatrix}
	  = e^{3t} - 2e^{3t} = -e^{3t}$$
	  
	  Now we can in fact choose any value of $t_0$; for example if
	  $t_0 = 0$, we see that $W(e^{2t},e^t)(0) = -1$ and thus we may
	  conclude that $e^{2t}$ and $e^t$ generate the general solution.
   
      -----
      
      \color{black}
      :::
   

   c. Note that $L[t] = 2t - 3$.
      Thus $p(t) = t$ is a solution to the ODE
	  $$(\clubsuit) \quad L x = 2t - 3.$$
	  Find the *general solution* to the ODE $(\clubsuit)$.

      :::{.solution}
      \color{red}
      **Solution:**
   
      Recapitulating, we observe that since $$L[t] = (D^2-3D+2)[t] =
	  D^2[t] -3D[t] + 2t = -3 + 2t,$$ indeed $p(t) = t$ is a solution
	  to the in-homogeneous equation $Lx = 2t-3$.

      Now to solve the problem, we just observe that since the ODE is
	  *linear*, the general solution has the form $x(t) = p(t) + H(t)$
	  where $H(t)$ is the general homogeneous solution.
	  
	  Thus according to the solution to part (b), the general solution
      is given by
	  
	  $$x(t) = t + ae^{2t} + be^t$$
	  for arbitrary constants $a,b$.

      -----
      
      \color{black}
      :::
   

# Bibliography {.unnumbered} 

::: {#refs}
:::
