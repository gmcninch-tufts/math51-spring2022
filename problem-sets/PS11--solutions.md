---
author: Math 51 Spring 2022
title: |
  Problem Set 11 \
  Non-homogeneous systems
date: 2022-04-04 -- because of Midterm 2, this assignment won't be collected
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---
These problems concern [@gutermanNitecki §3.11].

#. The matrix $A = \begin{bmatrix} 1 & 1 \\ 3 & 1 \end{bmatrix}$
   has eigenvalues $\lambda = 1 + \sqrt{3}$, $\mu = 1 - \sqrt{3}$, and
   the general solution to $D \mathbf{x} = A \mathbf{x}$ is given by
   $$\mathbf{x}(t) = c_1 e^{\lambda t} \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix}
   + c_2 e^{\mu t} \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix}.$$

   a. Find the general solution to the inhomogeneous equation $D
      \mathbf{x} = A \mathbf{x} + \begin{bmatrix} 1 \\ 1
      \end{bmatrix}$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
	  We must find a *particular solution* 
	  $$\mathbf{p}(t) = c_1(t)\mathbf{h}_1(t) + c_2(t)\mathbf{h}_2.$$
	  
	  We know that $\mathbf{c}'  = \begin{bmatrix} c_1'(t) \\ c_2'(t) \end{bmatrix}$
	  is a solution to $(\clubsuit) \quad W \mathbf{c}' = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$
	  where $W$ is the *Wronskian matrix*
	  $$W = \begin{bmatrix}
	  e^{\lambda t} & -e^{\mu t} \\
	  \sqrt{3} e^{\lambda t} & \sqrt{3} e^{\mu t}
	  \end{bmatrix}$$
   
      We solve $(\clubsuit)$ using *Cramer's Rule*. First note that
	  $$\det W = 2\sqrt{3} e^{(\lambda + \mu)t} = 2\sqrt{3} e^{2t}$$
	  since $\lambda + \mu = 2$.
   
      Thus Cramer's Rule gives
	  
	  $$c_1'(t) = \dfrac{\det \begin{bmatrix}1 & -e^{\mu t} 
	  \\ 1 & \sqrt{3}e^{\mu t} \end{bmatrix}}{2\sqrt{3} e^{2t}}
	  = \dfrac{(1+\sqrt{3})e^{\mu t}}{2 \sqrt{3} e^{2t}}
	   = \dfrac{\lambda}{2\sqrt{3}} e^{(\mu -2)t}
	   = \dfrac{\lambda}{2\sqrt{3}} e^{-\lambda t}$$
	   since $\mu -2 = -\lambda$.
   
      Similarly,
	  $$c_2'(t) = \dfrac{\det \begin{bmatrix} e^{\lambda t} & 1 
	  \\ \sqrt{3} e^{\lambda t} & 1 \end{bmatrix}}{2\sqrt{3} e^{2t}}
	  = \dfrac{(1-\sqrt{3})e^{\lambda t}}{2\sqrt{3} e^{2t}}
	  = \dfrac{\mu}{2\sqrt{3}} e^{(\lambda -2)t}
	  = \dfrac{\mu}{2\sqrt{3}} e^{-\mu t}
      $$
	  
	  
	  Integration now gives
	  
	  $$c_1(t) = \int c_1'(t) dt = \dfrac{\lambda}{2\sqrt{3}} \int e^{-\lambda t} dt
	  = \dfrac{-1}{2\sqrt{3}} e^{-\lambda t} + C_1$$
      and
	  $$c_2(t) = \int c_2'(t) dt = \dfrac{\mu}{2\sqrt{3}} \int e^{-\mu t} dt
	  = \dfrac{-1}{2\sqrt{3}} e^{-\mu t} + C_2$$

      To find our particular solution we may take $C_1 = C_2 = 0$ and we find
	  \begin{align*}
	  \mathbf{p}(t) &= c_1(t) \mathbf{h_1}(t) +  c_1(t) \mathbf{h_1}(t) \\
	  &= c_1(t) e^{\lambda t} \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix}
	  + c_2(t) e^{\mu t} \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix} \\
	  &= \dfrac{-1}{2\sqrt{3}} e^{-\lambda t} e^{\lambda t} \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix} +
	  \dfrac{-1}{2\sqrt{3}} e^{-\mu t} e^{\mu t} \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix} \\
	  &= \dfrac{-1}{2\sqrt{3}} \left ( \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix} + \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix} \right) \\
	  &= \dfrac{-1}{2\sqrt{3}} \begin{bmatrix} 0 \\ 2\sqrt{3} \end{bmatrix} \\
	  &= \begin{bmatrix} 0 \\ -1 \end{bmatrix}
	  \end{align*}

      Now we see that the general solution to $D \mathbf{x} = A \mathbf{x}$ is
	  given by
	  $$\mathbf{x}(t) = \mathbf{p}(t) + c_1 \mathbf{h_1}(t) +  c_1 \mathbf{h_1}(t)
	  = \begin{bmatrix} 0 \\ -1 \end{bmatrix} + c_1 e^{\lambda t} \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix}
	  + c_2 e^{\mu t} \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix}$$
	  
      -----
      
      \color{black}
      :::


   b. Solve the initial value problem $D
      \mathbf{x} = A \mathbf{x} + \begin{bmatrix} 1 \\ 1
      \end{bmatrix}; \quad \mathbf{x}(0) = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$.

      :::{.solution}
      \color{red}  
      **Solution:**
      
      Using the solution found in (a), we must find $c_1,c_2$ for which
	  $$\begin{bmatrix} 1 \\ 0 \end{bmatrix}
	  = \left(\begin{bmatrix} 0 \\ -1 \end{bmatrix} + c_1 e^{\lambda t} \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix}
	  + c_2 e^{\mu t} \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix}\right) \bigg \vert_{t=0}
	  = \begin{bmatrix} 0 \\ -1 \end{bmatrix} + c_1 \begin{bmatrix} 1 \\ \sqrt{3} \end{bmatrix}
	  + c_2 \begin{bmatrix} -1 \\ \sqrt{3} \end{bmatrix}$$
   
      Thus we need
	  $$\begin{bmatrix} 1 & -1 \\ \sqrt{3} & \sqrt{3} \end{bmatrix}
	  \begin{bmatrix} c_1 \\ c_2 \end{bmatrix} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$
   
      To solve this equation, we perform row operations on the augmented matrix:
	  \begin{align*}
	  \left[\begin{array}{c|c}
	  \begin{matrix} 1 & -1 \\ \sqrt{3} & \sqrt{3} \end{matrix} &
	  \begin{matrix} 1 \\ 1 \end{matrix}
	  \end{array}\right]
	  &\sim
	  \left[\begin{array}{c|c}
	  \begin{matrix} 1 & -1 \\ 3 & 3 \end{matrix} &
	  \begin{matrix} 1 \\ \sqrt{3} \end{matrix}
	  \end{array}\right]	  
	  \sim
	  \left[\begin{array}{c|c}
	  \begin{matrix} 1 & -1 \\ 0 & 6 \end{matrix} &
	  \begin{matrix} 1 \\ -3 + \sqrt{3} \end{matrix}
	  \end{array}\right]	\\
	  &\sim
	  \left[\begin{array}{c|c}
	  \begin{matrix} 1 & -1 \\ 0 & 1 \end{matrix} &
	  \begin{matrix} 1 \\ (-3 + \sqrt{3})/6 \end{matrix}
	  \end{array}\right]	  	  
	  \sim
	  \left[\begin{array}{c|c}
	  \begin{matrix} 1 & 0 \\ 0 & 1 \end{matrix} &
	  \begin{matrix} (3 + \sqrt{3})/6 \\ (-3 + \sqrt{3})/6 \end{matrix}
	  \end{array}\right]	  	  	  
	  \end{align*}
   
      Thus $c_1 = (3 + \sqrt{3})/6$ and $c_2 = (-3 + \sqrt{3})/6$ and
      the solution to the initial value problem is
	  $$\mathbf{x}(t) = \mathbf{p}(t) + 
	  \dfrac{(3 + \sqrt{3})}{6} \mathbf{h}_1(t) +
	  \dfrac{(-3 + \sqrt{3})}{6} \mathbf{h}_2(t)
	  $$
   
      -----
      
      \color{black}
      :::


#. The matrix $A = \begin{bmatrix} 1 & 1 \\ 1 & 1 \end{bmatrix}$ has
   characteristic polynomial $\lambda^2 - 2\lambda$, and thus
   has eigenvalues $\lambda = 0,2$.

   The general solution to $(H) \quad D \mathbf{x} = A \mathbf{x}$ is given by
   $$\mathbf{x} = c_1 \begin{bmatrix} -1 \\ 1 \end{bmatrix}
   + c_2 e^{2t} \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$

   Find the general solution to the inhomogeneous equation $D
   \mathbf{x} = A\mathbf{x} + \begin{bmatrix} 0 \\ t \end{bmatrix}$.

   :::{.solution}
   \color{red}  
   **Solution:**
   
   We must find a particular solution
   $$\mathbf{p}(t) = c_1(t) \begin{bmatrix} -1 \\ 1 \end{bmatrix}
   + c_2(t)e^{2t} \begin{bmatrix} 1 \\ 1 \end{bmatrix}$$
   If $\mathbf{c} = \begin{bmatrix} c_1(t) \\ c_2(t) \end{bmatrix}$
   then we know that $\mathbf{c}'$ is a solution to
   $W \mathbf{c}' = \begin{bmatrix} 0 \\ t \end{bmatrix}$
   where $W$ is the *Wronskian matrix*
   $$W = \begin{bmatrix}
   -1 & e^{2t} \\
   1 & e^{2t}
   \end{bmatrix}$$

   We find $\mathbf{c}'$ using *Cramer's Rule*. First note that
   $\det W = -2e^{2t}$.
   
   Next, *Cramer's Rule* gives
   $$c_1'(t) = \dfrac{\det \begin{bmatrix} 0 & e^{2t} \\ t & e^{2t}\end{bmatrix}}{-2e^{2t}}
   = \dfrac{-te^{2t}}{-2e^{2t}} = \dfrac{t}{2}$$
   $$c_2'(t) = \dfrac{\det \begin{bmatrix} -1 & 0 \\ 1 & t \end{bmatrix}}{-2e^{2t}}
   = \dfrac{-t}{-2e^{2t}} = \dfrac{te^{-2t}}{2}
   $$
   
   Now integration gives
   $$c_1(t) = \int c_1'(t) dt = \int \dfrac{t}{2} dt = \dfrac{t^2}{4} + C_1$$
   and integrating by parts we get
   $$c_2(t) = \int c_2'(t) dt = \int \dfrac{te^{-2t}}{2} dt = 
   \dfrac{-1}{8} e^{-2t}(2t+1) + C_2
   $$
   
   In forming the particular solution we may take $C_1 = C_2 = 0$, and we find
   $$\mathbf{p}(t) = \dfrac{t^2}{4} \begin{bmatrix} -1 \\ 1 \end{bmatrix}
   + \dfrac{-1}{8} e^{-2t}(2t+1) e^{2t} \begin{bmatrix} 1 \\ 1 \end{bmatrix}
   = \dfrac{t^2}{4} \begin{bmatrix} -1 \\ 1 \end{bmatrix}
   + \dfrac{-1}{8} (2t+1) \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$
   
   The general solution is now given by
   $$\mathbf{x}(t) = \mathbf{p}(t) 
   + c_1  \begin{bmatrix} -1 \\ 1 \end{bmatrix}
   + c_2 e^{2t} \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$
   
   
   -----
   
   \color{black}
   :::


## Bibliography {.unnumbered} 

::: {#refs} 
:::
