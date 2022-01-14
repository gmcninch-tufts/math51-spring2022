---
author: Math 51 Fall 2021
title: |
  Problem Set 11 \
  Double roots and inhomogeneous systems
date: due 2021-12-5 at 11:59 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---
These problems concern [@gutermanNitecki §3.9 & 3.11].

#. The matrix $A = \begin{bmatrix} 1 & -1 \\ 1 & 3 \end{bmatrix}$
   has eigenvalue $\lambda = 2$ with multiplicity 2, but $A$ has only one independent
   eigenvector $\mathbf{v} = \begin{bmatrix} 1 \\ -1 \end{bmatrix}$.
   Find the general solution to $D \mathbf{x} = A \mathbf{x}$.

   :::{.solution}
   \color{red}  
   **Solution:**

   We use *two linearly independent generalized eigenvectors* to
   construct solutions. It is perhaps simplest to take the given
   eigenvector $\mathbf{v}$ as *one* of our generalized
   eigenvector. For the other choice, in this case we can simply
   choose any vector $\mathbf{w}$ which is not a multiple of
   $\mathbf{v}$. (In fact, $\mathbf{w}$ needs to satisfy the condition
   $(*) \quad (A - 2\mathbf{I}_2)^2\mathbf{w} = \mathbf{0}$, but in
   this case $(A - 2\mathbf{I}_2)^2 = \mathbf{0}$ is the zero matrix,
   so the condition $(*)$ holds for *all* vectors in $\mathbf{R}^2$).
   One easy choice is $\mathbf{w} = \mathbf{e}_1 = \begin{bmatrix}
   1\\0\end{bmatrix}$.
   
   Notice that
   $$A - 2\mathbf{I}_2 = \begin{bmatrix}
   -1 & -1 \\
   1 & 1
   \end{bmatrix}$$
   
   Now, $\mathbf{v}$ determines the solution 
   $$\mathbf{h}_1(t) = e^{2t} \mathbf{v} = e^{2t}\begin{bmatrix} 1 \\ -1 \end{bmatrix}
   = \begin{bmatrix} e^{2t} \\ -e^{2t} \end{bmatrix}.$$

   And $\mathbf{w}$ determines the solution
   $$\mathbf{h}_2(t) = e^{2t} \left( \mathbf{w} + t(A - 2\mathbf{I}_2)\mathbf{w} \right)
   = e^{2t} \left(\begin{bmatrix}
   1\\0\end{bmatrix} + t\begin{bmatrix}
   -1 & -1 \\
   1 & 1
   \end{bmatrix}\begin{bmatrix}
   1\\0\end{bmatrix} \right)
   = e^{2t} \begin{bmatrix} 1 - t \\ t\end{bmatrix}$$

   So the *general solution* to the given system of ODEs is
   $$\mathbf{x}(t) = c_1 \mathbf{h}_1(t) + c_2 \mathbf{h}_2(t) =
   c_1 e^{2t} \begin{bmatrix} 1 \\ -1 \end{bmatrix} + 
   c_2 e^{2t} \begin{bmatrix} 1 - t \\ t\end{bmatrix}.$$
   
   **Remark:** If you choose a vector $\mathbf{\widetilde w}$
   different from $\mathbf{w}$, the corresponding *generator*
   $$\mathbf{\widetilde h}_2(t) = e^{2t} \left( \mathbf{\widetilde
   w} + t(A - 2\mathbf{I}_2)\mathbf{\widetilde w} \right)$$ for your
   general solution will be different than
   $\mathbf{h}_2(t)$. Nevertheless, provided that $\mathbf{\widetilde
   w}$ satisfies $(*)$ and is not a multiple of $\mathbf{v}$, the
   formula $$d_1 \mathbf{h}_1(t) + d_2 \mathbf{\widetilde h}_2(t)$$
   defines the *same* general solution.
   
   -----
   
   \color{black}
   :::


#. Let $A = \begin{bmatrix}
   2 & 0 & 1 \\
   -1 & 2 & 2 \\
   -1 & 4 & 0 \end{bmatrix}$.
   The characteristic polynomial of $A$ is $(\lambda-3)^2 \cdot (\lambda+2)$.
   
   Note that $$A-3\mathbf{I_3} = \begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix} \quad \text{and} \quad
   (A-3\mathbf{I_3})^2 = 
    \begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix} \cdot
    \begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix} = 
   \begin{bmatrix}
   0 & 4 & -4 \\
   0 & 9 & -9 \\
   0 & -16 & 16 
   \end{bmatrix}.$$

   Find the general solution to the system $D \mathbf{x} = A \mathbf{x}$.
   
   As a suggestion, you might proceed using the following steps:

   -  Explain why there is only one linearly independent eigenvector
      for $\lambda = 3$, and find such an eigenvector.
	  
   -  Find the general solution to $(A-3\mathbf{I_3})^2 \mathbf{x} =
      \mathbf{0}$ -- i.e. find the *generalized $3$-eigenvectors*.
   
   -  Find a generalized $3$-eigenvector $\mathbf{v}$ which is not
      a $3$-eigenvector.  
	  
   -  Check that $\mathbf{v}_1 = (A - 3\mathbf{I_3})\mathbf{v}$ is a
      $3$-eigenvector and that $\mathbf{v}$ and $\mathbf{v}_1$ are
      linearly independent.
	  
   -  Find solutions $\mathbf{h}_1(t)$ and $\mathbf{h}_2(t)$ to 
      $D \mathbf{x} = A \mathbf{x}$ with the property
	  that $\mathbf{h}_1(0) = \mathbf{v}$ and
	  $\mathbf{h}_2(0) = \mathbf{v}_1$.
	  
   -  Now find the general solution to $A \mathbf{x} = D \mathbf{x}$
      by using $\mathbf{h}_1(t)$ and $\mathbf{h}_2(t)$ together with a
      solution corresponding to the eigenvalue $\lambda = -2$.

   :::{.solution}
   \color{red}  
   **Solution:**
   
   We begin by observing that there is only one linearly independent
   eigenvector for $\lambda = 3$. For this, we perform row operations
   on $A -3 \mathbf{I}_3$:
   
   \begin{align*}
   \begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix}
   \sim 
   \begin{bmatrix}
   1 & 0 & -1 \\
   0 & -1 & 1 \\
   0 & 4 & -4 \end{bmatrix}  
   \sim \begin{bmatrix} 1 & 0 & -1 \\ 0 & 1 & -1 \\ 0 & 0 & 0
   \end{bmatrix}.  \end{align*} Since $A - 3\mathbf{I}_3$ has two
   pivots and thus only on free variable, there is one on linearly
   independent eigenvector.
   
   Moreover, we see that $\mathbf{v} = \begin{bmatrix} 1 \\ 1 \\ 1
   \end{bmatrix}$ is an eigenvector for $\lambda = 3$.
   
   Thus
   $$\mathbf{h}_1(t) = e^{3t} \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix}$$
   is a solution.
   
   We now find the *generalized 3-eigenvectors*. For this, we must find the solutions
   to the equation  $(A-3\mathbf{I_3})^2\mathbf{w} = \mathbf{0}$. For this,
   we perform row operations on $(A-3\mathbf{I_3})^2$:
   
   $$(A-3\mathbf{I_3})^2 = 
   \begin{bmatrix}
   0 & 4 & -4 \\
   0 & 9 & -9 \\
   0 & -16 & 16 
   \end{bmatrix} \sim
   \begin{bmatrix}
   0 & 1 & -1 \\
   0 & 0 & 0 \\
   0 & 0 & 0 
   \end{bmatrix}$$
   
   Since $c_1$ and $c_3$ are free variables, we see that the solutions
   to $(A-3\mathbf{I_3})^2\mathbf{w} = \mathbf{0}$ have the form
   $$\begin{bmatrix} c_1 \\ c_3 \\ c_3 \end{bmatrix} = c_1
   \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}
   + c_3 \begin{bmatrix} 0 \\ 1 \\ 1 \end{bmatrix}.$$
   
   We now form a solution $\mathbf{h}_2(t)$ by using *either of the
   generalized eigenvectors* $\begin{bmatrix} 1 \\ 0 \\ 0
   \end{bmatrix}$ or $\begin{bmatrix} 0 \\ 1 \\ 1
   \end{bmatrix}$. Let's choose $\mathbf{w} = \begin{bmatrix} 1 \\ 0
   \\ 0 \end{bmatrix}$.
   
   Thus
   \begin{align*}
   \mathbf{h}_2(t) = e^{3t}\left(\begin{bmatrix} 1 \\ 0
   \\ 0 \end{bmatrix} + t(A-\mathbf{I}_3)\begin{bmatrix} 1 \\ 0
   \\ 0 \end{bmatrix} \right)
   = e^{3t}\left(\begin{bmatrix} 1 \\ 0
   \\ 0 \end{bmatrix} + t\begin{bmatrix}
   -1 & 0 & 1 \\
   -1 & -1 & 2 \\
   -1 & 4 & -3 \end{bmatrix}\begin{bmatrix} 1 \\ 0
   \\ 0 \end{bmatrix} \right)
   = e^{3t} \begin{bmatrix}
   1 - t\\
   -t\\
   -t
   \end{bmatrix}
   \end{align*}
   
   Taken together, $\mathbf{h}_1(t)$ and $\mathbf{h}_2(t)$ provide
   two solutions "for $\lambda = 3$" with linearly independent initial
   vectors $\mathbf{h}_1(0) = \mathbf{v}$ and $\mathbf{h}_2(0) = \mathbf{w}$.
   
   To find the general solution, it remains to find an eigenvector for $\lambda = -2$.
   Here we perform row operations on $A + 2\mathbf{I_3}$:
   \begin{align*}
   A + 2\mathbf{I}_3 = 
   \begin{bmatrix}
   4 & 0 & 1 \\
   -1 & 4 & 2 \\
   -1 & 4 & 2 \end{bmatrix}
   &\sim 
   \begin{bmatrix}
   4 & 0 & 1 \\
   1 & -4 & -2 \\
   0 & 0 & 0 \end{bmatrix}
   \sim 
   \begin{bmatrix}
   1 & -4 & -2 \\   
   4 & 0 & 1 \\
   0 & 0 & 0 \end{bmatrix}   
   \sim 
   \begin{bmatrix}
   1 & -4 & -2 \\   
   0 & 16 & 9 \\
   0 & 0 & 0 \end{bmatrix}   
   \sim 
   \begin{bmatrix}
   1 & -4 & -2 \\   
   0 & 1 & 9/16 \\
   0 & 0 & 0 \end{bmatrix}  \\
   &\sim 
    \begin{bmatrix}
   1 & 0 & -2 + 9/4 \\   
   0 & 1 & 9/16 \\
   0 & 0 & 0 \end{bmatrix}  
   = 
    \begin{bmatrix}
   1 & 0 & 1/4 \\   
   0 & 1 & 9/16 \\
   0 & 0 & 0 \end{bmatrix}     
   \end{align*}
   
   Thus an eigenvector is
   $$\begin{bmatrix}
   -1/4 \\ -9/16 \\ 1
   \end{bmatrix} \quad \text{\textbf{or}} \quad 
   \begin{bmatrix}
   -4 \\ -9 \\ 16
   \end{bmatrix}$$
   
   We thus find the solution
   $$\mathbf{h}_3(t) = e^{-2t}   \begin{bmatrix}
   -4 \\ -9 \\ 16
   \end{bmatrix}$$
   
   so the general solution is
   
   $$\mathbf{x}(t) = c_1 \mathbf{h_1}(t) + c_2 \mathbf{h_2}(t) + c_3 \mathbf{h_3}(t)
   = c_1 e^{3t} \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix}
   + c_2 e^{3t} \begin{bmatrix} 1 - t\\ -t\\ -t \end{bmatrix}
   + c_3 e^{-2t}   \begin{bmatrix} -4 \\ -9 \\ 16 \end{bmatrix}.$$
   
   
   -----
   
   \color{black}
   :::


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
