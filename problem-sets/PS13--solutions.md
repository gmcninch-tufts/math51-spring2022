---
author: Math 51 Fall 2021
title: |
  Problem Set 13 -- **Solutions** \
  Properties of the Laplace transform and functions defined in pieces
date: due Monday 2022-05-02
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
  \usepackage{mathtools,mathrsfs}  
---


#. Calculate the Laplace transform of the following function:

   #. $t^n e^{mt}$
   
      :::{.solution}
      \color{red}
      **Solution:**
   
      $$\mathscr{L}[t^n e^{mt}] = (-1)^n \dfrac{d^n}{ds^n} \mathscr{L}[e^{mt}]
	  = (-1)^n \dfrac{d^n}{ds^n} \left [ \dfrac{1}{s-m}\right ]
	  = (-1)^n (-1)^n \dfrac{n!}{(s-m)^{n+1}} = \dfrac{n!}{(s-m)^{n+1}}$$
   
      -----
   
      \color{black}
      :::

   #. $te^{2t}\sin(t)$

      :::{.solution}
      \color{red}
      **Solution:**

      $$\mathscr{L}[te^{2t} \sin(t)] = - \dfrac{d}{ds} \mathscr{L}[e^{2t} \sin(t)]
	  = - \dfrac{d}{ds} \left[ \dfrac{1}{(s-2)^2 + 1}\right]
	  = - \dfrac{d}{ds} \left[ \dfrac{1}{s^2 -4s + 5}\right]
	  = \dfrac{2s-4}{(s^2 - 4s + 5)^2}$$

      -----
   
      \color{black}
      :::


   #. $(t^3 + 3)^2$

      :::{.solution}
      \color{red}
      **Solution:**

      $$\mathscr{L}[(t^3 + 3)^2] = \mathscr{L}[t^6 + 6t^3 + 9]
	  = \dfrac{6!}{s^7} + \dfrac{6 \cdot 3!}{s^4} + \dfrac{9}{s}$$

      -----
   
      \color{black}
      :::

#. Compute the inverse transform of the following functions:

   #. $\dfrac{1}{s^2+2s+5}$

      :::{.solution}
      \color{red}
      **Solution:**

      Completing the square, we find that
	  $$s^2 + 2s + 5 = (s+1)^2 - 1 + 5 = (s+1)^2 + 4$$

      Thus using the first shift formula with $\alpha =-1$, we find
	  that $$\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + 2s + 5}\right] =
	  \mathscr{L}^{-1}\left[\dfrac{1}{(s+1)^2 + 4}\right] =
	  e^{-t}\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + 4}\right]
	  = \dfrac{e^{-t}}{2}\sin(2t)$$
	  
      -----
   
      \color{black}
      :::


   #. $\dfrac{1}{3s+6}$

      :::{.solution}
      \color{red}
	  
      **Solution:**

      $$\mathscr{L}^{-1}\left[\dfrac{1}{3s+6}\right] = 
	  \dfrac{1}{3}\mathscr{L}^{-1}\left[\dfrac{1}{s+2}\right]
	  = \dfrac{e^{-2t}}{3}$$
	  
      -----
   
      \color{black}
      :::

   #. $\dfrac{s+3}{s^2 + 10s + 25}$
   
      :::{.solution}
      \color{red}
      **Solution:**

      Use the first shift formula with $\alpha = -5$:
	  $$\mathscr{L}^{-1}\left[\dfrac{s+3}{s^2 + 10s + 25}\right] 
	  = \mathscr{L}^{-1}\left[
	  \dfrac{s+3}{(s+5)^2}\right]
	  =e^{-5t}\mathscr{L}^{-1} \left[\dfrac{s-2}{s^2}\right]
	  = e^{-5t}\mathscr{L}^{-1} \left[ \dfrac{1}{s} - \dfrac{2}{s^2} \right]
	  = e^{-5t}\left(1 - 2t\right)$$

      -----
   
      \color{black}
      :::
   
   
#. Using the Laplace Transform, solve the following initial value problems:

   #. $(D^2 + 2D + 2)x = 0$; $x(0) = x'(0) = 0$

      :::{.solution}
      \color{red}
      **Solution:**

      Applying $\mathscr{L}$ to each side yields
	  $$0 = (s^2 + 2s + 2)\mathscr{L}[x]$$
	  from which one deduces $\mathscr{L}[x] = 0$.
	  
	  It follows that $x(t) = 0$ for all $t$ -- i.e.
	  $x$ is the *constant solution* $0$.

      -----
   
      \color{black}
      :::


   #. $(D^2 + 4)x = t$; $x(0) = -1$, $x'(0) = 0$

      :::{.solution}
      \color{red}
      **Solution:**

      Application of $\mathscr{L}$ yields
	  $$(s^2 + 4)\mathscr{L}[x] + s  = \dfrac{1}{s^2}.$$

      Thus
	  $$\mathscr{L}[x] = \dfrac{1}{s^2(s^2+4)} - \dfrac{s}{s^2+4} 
	  = \dfrac{1 - s^3}{s^2(s^2 + 4)}$$
	  
	  We now solve the *partial fractions* problem
	  $$\dfrac{1 - s^3}{s^2(s^2 + 4)} = \dfrac{A}{s} + \dfrac{B}{s^2} + \dfrac{Cs +D}{s^2+4}$$
	  
	  We need
	  $$1-s^3 = As(s^2+4) + B(s^2+4) + (Cs+D)s^2 = (A+C)s^3 + (B+D)s^2 + 4As + 4B$$
	  
      Comparing coefficients, we find a system of linear equations corresponding to the following
	  augmented matrix
	  $$\left[\begin{array}{l|l}
	  \begin{matrix}
	  0 & 4 & 0 & 0 \\
	  4 & 0 & 0 & 0 \\
	  0 & 1 & 0 & 1 \\
	  1 & 0 & 1 & 0 
	  \end{matrix} &
	  \begin{matrix}
	  1 \\ 0 \\ 0 \\ -1
	  \end{matrix}
	  \end{array}
	  \right] \sim 
      \left[\begin{array}{l|l}
	  \begin{matrix}
	  0 & 1 & 0 & 0 \\
	  1 & 0 & 0 & 0 \\
	  0 & 0 & 0 & 1 \\
	  0 & 0 & 1 & 0 
	  \end{matrix} &
	  \begin{matrix}
	  1/4 \\ 0 \\ -1/4 \\ -1
	  \end{matrix}
	  \end{array}
	  \right] \sim 	
      \left[\begin{array}{l|l}
	  \begin{matrix}
	  1 & 0 & 0 & 0 \\	  
	  0 & 1 & 0 & 0 \\
	  0 & 0 & 1 & 0 \\	  
	  0 & 0 & 0 & 1 
	  \end{matrix} &
	  \begin{matrix}
	  0 \\ 1/4 \\ -1 \\ -1/4
	  \end{matrix}
	  \end{array}
	  \right] \sim$$

      This shows that $\begin{bmatrix} A \\ B \\ C \\ D \end{bmatrix} = 
	  \begin{bmatrix} 0 \\ 1/4 \\ -1 \\ -1/4 \end{bmatrix}$ so that
	  
	  $$\dfrac{1 - s^3}{s^2(s^2 + 4)} = \dfrac{1}{4} \left(\dfrac{1}{s^2} + \dfrac{-4s -1}{s^2+4}\right)
	  = \dfrac{1}{4} \left(\dfrac{1}{s^2} + \dfrac{-4s}{s^2+4} + \dfrac{-1}{s^2+4}\right)$$
	  
	  Thus we find that $$x = \mathscr{L}^{-1}\left[\dfrac{1}{4}
	  \left(\dfrac{1}{s^2} + \dfrac{-4s}{s^2+4} +
	  \dfrac{-1}{s^2+4}\right)\right] = \dfrac{1}{4}\left(t - 4\cos(2t) - \dfrac{1}{2}\sin(2t)\right)$$
	  
      -----
   
      \color{black}
      :::
	  
#. Write the function
   $$g(t) = \left \{ \begin{matrix}
   t^2 & t<3 \\
   e^{-t} & t \ge 3
   \end{matrix} \right.$$
   in step-function notation, where
   $u_a(t) = \left \{ \begin{matrix}
   0 & t< a \\
   1 & t\ge a
   \end{matrix}
   \right .$

   :::{.solution}
   \color{red}
   **Solution:**

   $$g(t) = t^2 + u_3(t)\cdot(-t^2 + e^{-t}) =
   t^2 - u_3(t)\cdot t^2 + u_3(t)\cdot e^{-t}$$

   -----
   
   \color{black}
   :::

#. Find the inverse transform of the following functions:

   #. $\dfrac{se^{-2s}}{s^2 + 2}$

      :::{.solution}
      \color{red}
      **Solution:**

      Use the second shift formula with $a=2$. Since
	  $f(t) = \mathscr{L}^{-1}\left[\dfrac{s}{s^2+2}\right] =
	  \cos(\sqrt{2}t)$ we see that
	  
      $$\mathscr{L}^{-1}\left[\dfrac{se^{-2s}}{s^2 + 2}\right]=
	  u_2(t)f(t-2) = u_2(t) \cdot \cos(\sqrt{2}(t-2))$$


      -----
   
      \color{black}
      :::


   #. $\dfrac{e^{-s}}{s(s+3)}$.


      :::{.solution}
      \color{red}
      **Solution:**

	  We first find
	  $f(t) =\mathscr{L}^{-1}\left[\dfrac{1}{s(s+3)}\right]$. Partial fractions decomposition gives
	  $$\dfrac{1}{s(s+3)} = \dfrac{1}{3}\left(\dfrac{1}{s} + \dfrac{-1}{s+3}\right)$$
	  so that 
	  $$f(t) = \dfrac{1}{3}\mathscr{L}^{-1}\left[\dfrac{1}{s} + \dfrac{-1}{s+3}\right]
	  =\dfrac{1}{3}\left(1 - e^{-3t}\right)$$

      Now use the second shift formula with $a=1$
	  to find that
	  $$\mathscr{L}^{-1}\left[\dfrac{e^{-s}}{s(s+3)}\right]=
	  u_1(t)f(t-1) = \dfrac{1}{3} u_1(t)(1-e^{-3(t-1)})
	  = \dfrac{u_1(t)}{3} (1-e^{-3t + 3})$$

      -----
   
      \color{black}
      :::


#. Solve the following initial value problem:

   $$(D^3-D)x = \left \{ \begin{matrix} 4 & t<4 \\
   0 & t\ge 4 \end{matrix} \right .;
   \quad x(0) = x'(0) = x''(0)= 0$$

   :::{.solution}
   \color{red}
   **Solution:**

   Applying $\mathscr{L}$ to the ODE and using the first
   differentiation formula, we find that $$(s^3-s)\mathscr{L}[x] = \mathscr{L}[4 -
   4u_4(t)] = \dfrac{4}{s} - \dfrac{4e^{-4s}}{s}.$$
   

   Thus $$(\clubsuit) \quad \mathscr{L}[x] = \dfrac{4}{s^2(s^2-1)} - 
    \dfrac{4e^{-4s}}{s^2(s^2-1)}.$$
  
   We now solve the partial fractions problem:
   $$\dfrac{1}{s^2(s^2-1)}  = \dfrac{A}{s} + \dfrac{B}{s^2} + \dfrac{C}{s-1} + \dfrac{D}{s+1}$$

   We need: $$1 = As(s^2-1) + B(s^2-1) + Cs^2(s+1) + Ds^2(s-1)=
   (A+C+D)s^3 + (B+C-D)s^2 - As - B$$ Comparing coefficients
   immediately gives that $A=0$ and $B=-1$. Now $C$ and $D$ must
   satisfy the equations $C+D=0$ and $C-D=1$, and we conclude that
   $\begin{bmatrix} A \\ B \\ C \\ D \end{bmatrix} = \begin{bmatrix} 0
   \\ -1 \\ 1/2 \\ -1/2 \end{bmatrix}$ so that $$\dfrac{1}{s^2(s^2+1)}
   = \dfrac{1}{2}\left(\dfrac{-2}{s^2} + \dfrac{1}{s-1} -
   \dfrac{1}{s+1}\right).$$
   
   We now compute
   $$f(t) =  \mathscr{L}^{-1}\left[\dfrac{4}{s^2(s^2-1)}\right]
   = \mathscr{L}^{-1}\left [\dfrac{4}{2}\left(\dfrac{-2}{s^2} + \dfrac{1}{s-1} -
   \dfrac{1}{s+1}\right) \right]
   = 2\left(-2t + e^t - e^{-t}\right) = -4t + 2e^t - 2e^{-t}$$
   
   Now use the second shift formula with $a= -4$ to find that
   $$\mathscr{L}^{-1}\left[ \dfrac{4e^{-4s}}{s^2(s^2-1)} \right]
   =u_4(t)f(t-4) = u_4(t)\cdot \left( -4(t-4) + 2e^{t-4}  - 2e^{-t + 4}\right)$$
   
   Thus $(\clubsuit)$ together with the previous two calculations show that
   $$x = -4t + 2e^t - 2e^{-t}  -
   u_4(t)\cdot \left( -4(t-4) + 2e^{t-4}  - 2e^{-t + 4}\right).$$
   
   -----
   
   \color{black}
   :::
