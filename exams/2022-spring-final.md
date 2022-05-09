---
author: |
  Math 51 Spring 2021 --
  Tufts University 
title: |
  Final Exam 
date: 2022-05-09
fontsize: 12pt
header-includes: |
  \usepackage[top=10mm,bottom=20mm,left=20mm,right=20mm]{geometry}
  \usepackage{mathtools, mathrsfs}
---

\newcommand{\mybox}[3]{\framebox{\begin{minipage}[t][#1][t]{#2} \, \vfil #3 \vfil \end{minipage}}}

\newcommand{\emptybox}[2]{\mybox{#1}{#2}{}}

\newcommand{\ynbox}[2]{\mybox{#1}{#2}{\hfil \textbf{Yes} \hfil \textbf{No} \hfil}}
\newcommand{\tfbox}[2]{\mybox{#1}{#2}{\hfil \textbf{True} \hfil \textbf{False} \hfil}}

\newcommand{\twobox}[4]{
\framebox{\begin{minipage}[t][#1][t]{#2} \, \vfil #3 \vfil \end{minipage}} 
\hspace{3cm}
\framebox{\begin{minipage}[t][#1][t]{#2} \, \vfil #4 \vfil \end{minipage}}
}

You may not use *calculators*, *books* or *notes* during the exam. All
electronic devices (including your phones) must be *silenced* and *put
away* for the duration of the exam.

After completing the exam, submit this exam booklet to the proctors.
Your submission will be scanned and uploaded to *Gradescope* for
marking; you do *not* need to take/upload images of your exam with a
phone. You should write your name at the top of each page, as
indicated (*especially* if you remove the staples from your exam
booklet).

For the partial credit problems, always *show your work*. Try to fit
this work in the *available space* if possible.  If you scratch some
work out, please make it clear what should be graded. There is a blank
page at the back of your exam for use as scratch paper. If you need
more space for a solution, please write clearly *in the indicated
space* that your solution continues later.

\vfill

::: {.identity} 

\begin{center}
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
\end{center}


\vfill

> Please print your name, and sign your exam. With your signature, you
> pledge that you have neither given nor received assistance on this
> exam.

\vfill

> **Name (printed):** ___________________________

\vfill

> **Signature:** _____________________________

\vfill

\begin{center}
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
\end{center}

:::

\newpage

# **Laplace transform formulas**

## definition
  - $F(s) = \displaystyle \mathscr{L}[f(t)] = \int_0^\infty e^{-st}f(t)dt$

## basic formulas

  $$\begin{array}{lcl}
    \mathscr{L}[e^{\lambda t}] = \dfrac{1}{s-\lambda} \quad \text{for $s > \lambda$} & \quad, \quad  &
    \mathscr{L}^{-1}\left[\dfrac{1}{s-\lambda}\right] =  e^{\lambda t} \\
    %
    \mathscr{L}[t^n] = \dfrac{n!}{s^{n+1}} \quad \text{for $s > 0$} & \quad, \quad  &
    \mathscr{L}^{-1}\left[\dfrac{1}{s^{n+1}}\right]  = \dfrac{t^n}{n!} \\
    %
    \mathscr{L}[\sin(\beta t)] = \dfrac{\beta}{s^2 + \beta^2} \quad \text{for $s > 0$} & \quad, \quad  &
    \mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \beta^2}\right] = \dfrac{1}{\beta} \sin(\beta t) \\
    %
    \mathscr{L}[\cos(\beta t)] = \dfrac{s}{s^2 + \beta^2} \quad \text{for $s > 0$} & \quad, \quad  &
    \mathscr{L}^{-1}\left[\dfrac{s}{s^2 + \beta^2}\right] = \cos(\beta t)
  \end{array}$$

## first differentiation formula: 
  - $\mathscr{L}[Dx] = s\mathscr{L}[x] - x(0)$,
  - $\mathscr{L}[D^2x] = s^2\mathscr{L}[x] -sx(0) - x'(0)$,
  - $\mathscr{L}[D^kx] = s^k \mathscr{L}[x(t)] - s^{k-1}x(0) -
    s^{k-2}x'(0) - \cdots - s x^{(k-2)}(0) - x^{(k-1)}(0)$ for $k \ge 1$.

## first shift formula 
  - if $\mathscr{L}[f(t)] = F(s)$ then 
    $\mathscr{L}[e^{a t}f(t)] = F(s-a).$
  - $\mathscr{L}^{-1}[F(s)] = e^{a t} \mathscr{L}^{-1}[F(s+a)]$
  - $\mathscr{L}^{-1}[ F(s-a) ] = e^{at} \mathscr{L}^{-1}[ F(s) ]$

## second differentiation formula
  - $\mathscr{L}[t^n f(t)] = (-1)^n \dfrac{d^n}{ds^n}\mathscr{L}[f(t)]$

## second shift formula
  - $\mathscr{L}[u_a(t) f(t)] = e^{-as} \mathscr{L}[f(t+a)].$
  - if $f(t) = \mathscr{L}^{-1}[F(s)]$ then $\mathscr{L}^{-1}[e^{-as}F(s)] = u_a(t)f(t-a).$


\newpage
> Name: _________________

\vspace{5mm}

------

#. (10 points in total) Indicate your response to the following. 

   #. (2 pts) Consider the system of linear ODEs $$(\clubsuit) \quad D
      \mathbf{x} = A \mathbf{x} + \mathbf{E}(t)$$ where $A$ is a $3
      \times 3$ matrix with constant entries and where the entries of
      $\mathbf{E}(t)$ are continuous functions of $t$ on the interval
      $(0,\infty)$.  If $\mathbf{h}(t)$ and $\mathbf{k}(t)$ are
      *solutions* to $(\clubsuit)$ and if $\mathbf{h}(1) =
      \mathbf{k}(1)$, must it be true that $\mathbf{h}(t) =
      \mathbf{k}(t)$ whenever $0 < t$?
      *Circle your answer*. 
      
      \bigskip
      \hfill \ynbox{20mm}{6cm}
      \bigskip
   


   #. (4 pts) Let $A$ be an $n \times n$ matrix with an eigenvalue $\lambda
      = 2$ with *multiplicity 3*. Suppose that the vector $\mathbf{v}
      \ne \mathbf{0}$ in $\mathbb{R}^n$ is a solution to the equation
      $\left(A-2\mathbf{I}_n\right)^3\mathbf{x} = \mathbf{0}$.  Give a
      formula for a solution $\mathbf{h}(t)$ to the homogeneous system
      of linear ODEs $D \mathbf{x} = A \mathbf{x}$ which satisfies
      $\mathbf{h}(0) = \mathbf{v}$.

      \bigskip
      \hfill \emptybox{25mm}{12cm}
      \bigskip

   #. (2 pts) Indicate whether the following statement is true or
      false: If $P(D)$ is a polynomial in $D$ with constant
      coefficients, and if $h_1(t)$ and $h_2(t)$ are solutions to
      $P(D)x = e^t$, then $h_1(t) + h_2(t)$ is a solution to $P(D)x =
      2e^t$.
      *Circle your answer*.       

      \bigskip
      \hfill \tfbox{20mm}{6cm}
      \bigskip

      \newpage
      > Name: _________________

      \vspace{5mm}

      ------

   #. (2 pts) Indicate whether the following statement is true or false.
   
      If $\mathbf{u} = \begin{bmatrix} u_1 \\ u_2 \\ u_3
      \end{bmatrix},\mathbf{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3
      \end{bmatrix}$ and $\mathbf{w} = \begin{bmatrix} w_1 \\ w_2 \\
      w_3 \end{bmatrix}$ are vectors in $\mathbb{R}^3$ and if $$\det
      \begin{bmatrix} u_1 & v_1 & w_1 \\ u_2 & v_2 & w_2 \\ u_3 & v_3
      & w_3 \end{bmatrix} = 0$$ then
      $\mathbf{u},\mathbf{v},\mathbf{w}$ are *linearly dependent*.
      *Circle your answer*.
      
      \bigskip
      \hfill \tfbox{20mm}{6cm}
      \bigskip
	  \bigskip

#. (8 pts total)

   #. (3 pts) Let $$f(t) = \left \{ \begin{matrix}
      e^{2t} & t < 1 \\
	  0 & 1 \le t \\
	  \end{matrix} \right .$$
	  Re-write $f(t)$ using unit step functions.

      \bigskip
      \hfill \emptybox{20mm}{10cm}
      \bigskip

   #. (5 pts) Find the Laplace transform
      $\mathscr{L}[u_2(t) e^{3t}]$.

      \vfil
      \hfill \emptybox{20mm}{10cm}
      \bigskip

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------


#. (15 pts in total)

   #. (5 pts) Compute $\mathscr{L}^{-1}\left[ \dfrac{e^{-s}}{s}\right]$
   
      \vfil 
   #. (10 pts) Compute $\mathscr{L}^{-1}\left[\dfrac{1}{s(s^2+4)} \right]$

      \vfil 

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------

#. (10 pts)
   Let $B = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$. Find
   the general solution to the homogeneous system of ODEs $D
   \mathbf{x} = B \mathbf{x}$.
	  
   \vfill
	  

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------

#. (10 pts)   Transform the following initial-value problem to an equation of
   the form $\mathscr{L}[x] = F(s)$; find $F(s)$. *You do not need to solve for $x$.*

   $$(D^2 - 9)x = e^t + 1, \qquad x(0) = x'(0) = 0.$$

   \vfill

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------


#. (10 pts) Consider the ordinary differential equation
   $$(\diamondsuit) \quad \dfrac{dx}{dt} - tx = e^{t^2/2}$$
  
   Find the *general solution* $x(t)$ to $(\diamondsuit)$.
  
   \vfil

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------


#. (15 pts) Consider the ordinary differential equation
   $$(\heartsuit) \quad (D^2 -4)x = e^{2t} + e^{-2t}.$$

   a. An annihilator of $e^{2t} + e^{-2t}$ is the operator $A(D) = (D-2)(D+2)=D^2 - 4$. A solution 
      to $(\heartsuit)$ must be a solution to the homogeneous equation
	  $A(D)\cdot (D^2-4)x = (D-2)^2(D+2)^2x = 0$. Briefly explain why a *simplified guess*
	  for a solution $p(t)$ to $(\heartsuit)$ is given by
	  $$p(t) = k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}$$

      \vfill

   b. Use the *exponential shift* formula to compute $(D^2-4)[p(t)] =
      (D^2-4)[k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}]$.
 
      \vfill
	  
	  \begin{center}
	  (continue on the next page)
	  \end{center}
	  
      \newpage
      > Name: _________________

      \vspace{5mm}

      ------

      \vfil \vfil \vfil

   c. Use your answer to b) to find a particular solution $p(t)$ to
      $(\heartsuit)$.
      
	  \vfil

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------
#. (12 pts) The matrix $A = \begin{bmatrix} 0 & 4 \\ 1 & 0 \end{bmatrix}$
   has eigenvalues $\pm 2$. An eigenvector for $\lambda = 2$ is given
   by $\mathbf{v} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}$
   and an eigenvector for $\mu = -2$ is given
   by $\mathbf{w} = \begin{bmatrix} -2 \\ 1 \end{bmatrix}$.
   
   #. Write the general to the homogeneous system $D\mathbf{x} = A\mathbf{x}$.
   
      \vspace{3cm}
	  
   #. Use the method of *variation of parameters* to find the general
      solution to the system of ODEs $$D \mathbf{x} = A \mathbf{x} +
      \begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$

      \vfil \vfil
   
   \newpage
   > Name: _________________

   \vspace{5mm}
   
#. (10 pts) Solve the initial value problem 
   $$D(D^2-1)x = 0, \qquad x(0) = 0, x'(0) = 1, x''(0) = 0.$$

   **Hint:** Don't use the Laplace transform. First find the *general
   solution* to $D(D^2-1)x = 0$.

   \vfill

\begin{center} End of exam \end{center}
