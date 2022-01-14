---
author: Math 51 Fall 2021
title: |
  Problem Set 12 -- **Solutions** \
  The Laplace Transform
date: due 2021-12-12 at 11:59 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---

These problems concern [@gutermanNitecki, §5.2 & 5.3].

#. For each of the following functions, calculate the Laplace transform 
   $F(s) = \mathscr{L}[f(t)]$ using the fact that $\mathscr{L}$ is
   linear and using the basic formulas for $\mathscr{L}$.

   a. $f(t) = 3t - e^{-4t} - 5 \cos(6t)$
   
      :::{.solution}
      \color{red}  
      **Solution:**
      
	  $\mathcal{L}[3t - e^{-4t} - 5 \cos(6t)] =
	  3\mathcal{L}[t] - \mathcal{L}[e^{-4t}] - 5\mathcal{L}[\cos(6t)]
	  = \dfrac{3}{s^2} - \dfrac{1}{s+4} -  \dfrac{5s}{s^2 + 36}$
	  
      -----
      
      \color{black}
      :::
   
   
   b. $f(t) = e^{2t+3}$
   
      :::{.solution}
      \color{red}  
      **Solution:**
      
      $\mathscr{L}[e^{2t+3}] = \mathscr{L}[e^3 e^{2t}] =
	  e^3\mathscr{L}[e^{2t}] = \dfrac{e^3}{s-2}$.
	  
      -----
      
      \color{black}
      :::
   
   c. $f(t) = (t+2)^2$
   
      :::{.solution}
      \color{red}  
      **Solution:**
      
	  $\mathscr{L}[(t+2)^2] = \mathscr{L}[t^2 + 4t + 4] =
	  \mathscr{L}[t^2] + 4\mathscr{L}[t] + 4\mathscr{L}[1]
	  = \dfrac{2}{s^3} + \dfrac{4}{s^2} + \dfrac{4}{s}$.
   
      -----
      
      \color{black}
      :::
   

#. For each of the following functions, calculate the inverse Laplace transform
   $f(t) = \mathscr{L}^{-1}[F(s)]$ using the fact that $\mathscr{L}^{-1}$ is linear
   and using the basic formulas for $\mathscr{L}^{-1}$.
   
   a. $F(s) = \dfrac{1}{3s+1}$
   
      :::{.solution}
      \color{red}  
      **Solution:**
      
	  $\mathscr{L}^{-1}\left[\dfrac{1}{3s+1}\right] =
	  \mathscr{L}^{-1}\left[\dfrac{1}{3}\cdot\dfrac{1}{s+1/3}\right]
	  = \dfrac{1}{3}\mathscr{L}^{-1}\left[\cdot\dfrac{1}{s+1/3}\right]
	  = \dfrac{1}{3}\mathscr{L}^{-1}\left[\cdot\dfrac{1}{s+1/3}\right]
	  = \dfrac{1}{3}e^{-t/3}$
   
      -----
      
      \color{black}
      :::
   
   b. $F(s) = \dfrac{3}{s^2 + 4} + \dfrac{20}{s^4} + \dfrac{s}{s^2 + 1}$.
   
      :::{.solution}
      \color{red}  
      **Solution:**
      
	  \begin{align*}
	  \mathscr{L}^{-1}\left[\dfrac{3}{s^2 + 4}\right] + \mathscr{L}^{-1}\left[\dfrac{20}{s^4}\right] + \mathscr{L}^{-1}\left[\dfrac{s}{s^2 + 1}\right] &=
	  3\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + 4}\right] + 20\mathscr{L}^{-1}\left[\dfrac{1}{s^4}\right] + \mathscr{L}^{-1}\left[\dfrac{s}{s^2 + 1}\right] \\
	  &= \dfrac{3}{2}\sin(2t) + \dfrac{20}{3!}t^3 + \cos(t)	 \\
	  &= \dfrac{3}{2}\sin(2t) + \dfrac{10}{3}t^3 + \cos(t)	  
	  \end{align*}
   
      -----
      
      \color{black}
      :::
   

#. Recall that the *First Differentiation Formula* says for a function $x = x(t)$ that

   $$\mathscr{L}[D^kx] = s^k \mathscr{L}[x(t)] - s^{k-1}x(0) -
   s^{k-2}x'(0) - \cdots - s x^{(k-2)}(0) - x^{(k-1)}(0).$$

   Use this formula to find an expression for the Laplace Transform
   $\mathscr{L}[x]$ where $x$ is a solution for each of the following initial-value
   problems. Note that your answer should be a *function of $s$*.
   
   a. $(D-1)x = e^{3t}, \quad x(0) = 3$.
   
      :::{.solution}
      \color{red}  
      **Solution:**
      
	  With the given initial conditions we have
	  $\mathscr{L}[Dx] = s\mathscr{L}[x] - x(0) = s\mathscr{L}[x] - 3$. 
	  
	  Thus
	  $\mathscr{L}[(D-1)x] = \mathscr{L}[e^{3t}] \implies \mathscr{L}[Dx] - \mathscr{L}[x] = \dfrac{1}{s-3}
	  \implies s\mathscr{L}[x] - 3  - \mathscr{L}[x] = \dfrac{1}{s-3}$
   
      Solving for $\mathscr{L}[x]$ we find that
	  $$(s-1)\mathscr{L}[x] = \dfrac{1}{s-3} + 3\implies
	  \mathscr{L}[x] = \dfrac{1}{(s-3)(s-1)} + \dfrac{3}{s-1}.$$
	  
	  
	  (*You weren't asked to carry out the partial fractions
	  decomposition here, though it is fine to do so*)
	  
      -----
      
      \color{black}
      :::
   
   b. $(D^2 - 1)x = e^{2t}, \quad x(0) = 0, x'(0) = 1$.
   
      :::{.solution}
      \color{red}  
      **Solution:**
      
	  The differentiation formula and intial conditions tell us that
      $\mathscr{L}[D^2x] = s^2 \mathscr{L}[x] - sx(0) - x'(0) = s^2
      \mathscr{L}[x] - 1$.
   
      The ODE tells us that $\dfrac{1}{s-2} = \mathscr{L}[D^2x] -
	  \mathscr{L}[x] = s^2\mathscr{L}[x] - 1 - \mathscr{L}[x]$.
   
      Thus
	  $$(s^2-1)\mathscr{L}[x] = \dfrac{1}{s-2} + 1$$
	  so that
	  $$\mathscr{L}[x] = \dfrac{1}{(s-2)(s^2-1)} + \dfrac{1}{(s^2-1)}$$


	  (*You weren't asked to carry out the partial fractions
	  decomposition here, though it is fine to do so*)

      -----
      
      \color{black}
      :::
   
   c. $(D^2 + 1)x = \cos(3t), \quad x(0) = 0, x'(0) = 3$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  The differentiation formula and initial conditions give
	  $\mathscr{L}[D^2x] = s^2 \mathscr{L}[x] - sx(0) - x'(0) = s^2
	  \mathscr{L}[x] - 3$.
	  
	  The ODE gives
	  $\dfrac{s}{s^2 + 9} = \mathscr{L}[D^2x] + \mathscr{L}[x] = s^2\mathscr{L}[x] - 3
	  + \mathscr{L}[x] = (s^2 + 1)\mathscr{L}[x] - 3$.
   
      Thus
	  $$\mathscr{L}[x] = \dfrac{s}{(s^2 + 9)(s^2 +1)} + \dfrac{3}{s^2 + 1}.$$


	  (*You weren't asked to carry out the partial fractions
	  decomposition here, though it is fine to do so*)

      -----
      
      \color{black}
      :::


#. Use a partial fractions decomposition of $F(s) = \dfrac{s+4}{s^2 + 4s + 3}$ to compute
   $\mathscr{L}^{-1}[F(s)]$.

   :::{.solution}
   \color{red}  
   **Solution:**
   
   We must find $A,B$ for which
   $$\dfrac{s+4}{s^2 + 4s + 3} = \dfrac{A}{s+3} + \dfrac{B}{s+1}.$$
   
   Getting a common denominator on the RHS, we find that
   $s+4 = A(s+1) + B(s+3)$.

   Plugging in $s=-1$ gives $3 = 2B$ or $B = \dfrac{3}{2}$.
   
   Plugging in $s=-3$ gives $1 = -2A$ or $A = \dfrac{-1}{2}$.
   
   Thus
   $$\dfrac{s+4}{s^2 + 4s + 3} = \dfrac{1}{2}\left[\dfrac{-1}{s+3} + \dfrac{3}{s+1}\right].$$

   We now compute the inverse Laplace transform:
   $$\mathscr{L}\left[\dfrac{s+4}{s^2 + 4s + 3}\right] =
   \dfrac{1}{2}\left(\mathscr{L}^{-1}\left[\dfrac{-1}{s+3}\right] +
   \mathscr{L}^{-1}\left[\dfrac{3}{s+1}\right]\right)
   =\dfrac{1}{2}\left(-e^{-3t} + 3e^{-t}\right).$$

   -----
   
   \color{black}
   :::

#. Use the Laplace transform to solve the initial-value problem
   $$(D^2+4)x = t, \quad x(0) = -1, x'(0) = 0.$$
   
   **Hint:** Recall when doing partial fractions decomposition that
   when the denominator has a multiple root, you should consider
   expressions as follows:
   
   $$\dfrac{1}{(s-a)^m(s-b)} = \dfrac{A_1}{s-a} +
   \dfrac{A_2}{(s-a)^2} + \cdots + \dfrac{A_m}{(s-a)^m} +
   \dfrac{B}{s-b}$$

   And similarly if $s^2 + b^2$ is an *irreducible quadratic*, you
   should try to write $$\dfrac{1}{(s-a)^m(s^2+ b^2)} =
   \dfrac{A_1}{s-a} + \dfrac{A_2}{(s-a)^2} + \cdots +
   \dfrac{A_m}{(s-a)^m} + \dfrac{Bs + C}{s^2 + b^2}$$

   Here $A_1,A_2,\dots,A_m,B,C$ are constants that you must *find*.
   See [@gutermanNitecki, sec. 5.3 p. 430-431]
   
   :::{.solution}
   \color{red}  
   **Solution:**
   
   The differentiation formula and initial conditions give
   $$\mathscr{L}[D^2x] = s^2 \mathscr{L}[x] - sx(0) - x'(0) =s^2 \mathscr{L}[x] + s.$$

   Now the ODE tells us that
   $$\dfrac{1}{s^2} = s^2 \mathscr{L}[x] + s + 4\mathscr{L}[x] = (s^2 + 4)\mathscr{L}[x] + s$$

   Solving for $\mathscr{L}[x]$ we find that
   $$\mathscr{L}[x] = \dfrac{1}{s^2(s^2+4)} - \dfrac{s}{s^2+4}.$$

   We now need to rewrite the RHS using partial fractions.
   
   We must solve
   $$\dfrac{1}{s^2(s^2+4)} = \dfrac{A}{s} + \dfrac{B}{s^2} + \dfrac{Cs + D}{s^2+4}$$

   Getting a common denominator on the RHS, we find
   $$1 = A(s^2+4)s + B(s^2+4) + (Cs+D)s^2$$
   
   Now we need four equations.
   
   Using $s=0$, we find that
   $1 = 4B$.
   
   Using $s=1$ we find that
   $1 = 5A + 5B + C + D$.
   
   Using $s=-1$ we find that
   $1 = -5A + 5B -C  + D$
   
   Finally, using $s=2$ we find that
   $1 = 16A + 8B + 8C + 4D$.

   Thus we must solve the system of equations
   $$\begin{bmatrix}
   0 & 4 & 0 & 0 \\
   5 & 5 & 1 & 1 \\
   -5 & 5 & -1 & 1 \\
   16 & 8 & 8 & 4
   \end{bmatrix}
   \begin{bmatrix}
   A \\ B \\ C \\ D
   \end{bmatrix}
   =
   \begin{bmatrix} 
   1 \\ 1 \\ 1 \\ 1
   \end{bmatrix}$$

   The unique solution to this system of linear euqations 
   is $\begin{bmatrix}
   A \\ B \\ C \\ D
   \end{bmatrix}
   = 
   \dfrac{1}{4}\begin{bmatrix}
   0 \\ 1 \\ 0 \\ -1
   \end{bmatrix}$

   Thus
   $$\dfrac{1}{s^2(s^2+4)} = \dfrac{1}{4} \dfrac{1}{s^2} - \dfrac{1}{4}\dfrac{1}{s^2+4}$$
   and
   $$\mathscr{L}[x] = \dfrac{1}{s^2(s^2+4)} - \dfrac{s}{s^2+4}
   = \dfrac{1}{4} \dfrac{1}{s^2} - \dfrac{1}{4}\dfrac{1}{s^2+4} - \dfrac{s}{s^2+4}$$

   We now find the solution $x$ to the initial value problem as
   \begin{align*}
   x &= \mathscr{L}^{-1}\left[\dfrac{1}{s^2(s^2+4)} + \dfrac{s}{s^2+4}\right] = 
   \dfrac{1}{4}\mathscr{L}^{-1} \left[ \dfrac{1}{s^2} - \dfrac{1}{s^2+4}\right] 
   - \mathscr{L}^{-1}\left[\dfrac{s}{s^2+4}\right] \\
   &= \dfrac{1}{4} \left[ t - \dfrac{1}{2}\sin(2t) \right] - \cos(2t) \\
   &= \dfrac{t}{4} - \dfrac{1}{8}\sin(2t) - \cos(2t)   
   \end{align*}

   -----
   
   \color{black}
   :::
   

## Bibliography {.unnumbered} 

::: {#refs} 
:::
