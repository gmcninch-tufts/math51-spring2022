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

You may not use *calculators*, *books* or *notes* during the exam. All
electronic devices (including your phones) must be *silenced* and *put
away* for the duration of the exam.

After finishing your exam, you will submit this exam booklet. We will
scan your submission and upload it to *Gradescope* for marking (you do
*not* need to take/upload images of your exam with a phone). You
should write your name at the top of each page, as indicated
(*especially* if you remove the staples from your exam booklet).

For the partial credit problems, always *show your work*. Try to fit
this work in the *available space* if possible.  There is a blank page
at the back of your exam for use as scratch paper. If you need more
space for a solution, please write clearly *in the indicated space*
that your solution continues later.

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
> Name: _________________

\vspace{5mm}

------

#. (8 points) Indicate your response to the following. Each question is worth 
   two (2) points.

   #. Consider the system of linear ODEs $$(\clubsuit) \quad D
      \mathbf{x} = A \mathbf{x} + \mathbf{E}(t)$$ where $A$ is a $3
      \times 3$ matrix with constant entries and where the entries of
      $\mathbf{E}(t)$ are continuous functions of $t$ on the interval
      $(0,\infty)$.  If $\mathbf{h}(t)$ and $\mathbf{k}(t)$ are
      *solutions* to $(\clubsuit)$ and if $\mathbf{h}(1) =
      \mathbf{k}(1)$, must it be true that $\mathbf{h}(t) =
      \mathbf{k}(t)$ for all $t$?
	  *Circle your answer*. 
	  
	  \vfil
	  \hfill \ynbox{20mm}{6cm}
	  \bigskip
   

      \vfil

   #. Let $A$ be an $n \times n$ matrix with an eigenvalue $\lambda
      = 2$ with *multiplicity 3*. Suppose that the vector $\mathbf{v}
      \ne \mathbf{0}$ in $\mathbb{R}^n$ is a solution to the equation
      $\left(A-2\mathbf{I}_n\right)^3\mathbf{x} = \mathbf{0}$.  Give a
      formula for a solution $\mathbf{h}(t)$ to the homogeneous system
      of linear ODEs $D \mathbf{x} = A \mathbf{x}$ which satisfies
      $\mathbf{h}(0) = \mathbf{v}$.

      \vfil
	  \hfill \emptybox{25mm}{12cm}
	  \bigskip

   #. Indicate whether the following statement is true or false: If
      $\mathbf{u} = \begin{bmatrix} u_1 \\ u_2 \\ u_3
      \end{bmatrix},\mathbf{v} \begin{bmatrix} v_1 \\ v_2 \\ v_3
      \end{bmatrix}$ and $\mathbf{w} = \begin{bmatrix} w_1 \\ w_2 \\
      w_3 \end{bmatrix}$ are vectors in $\mathbb{R}^3$
      and if
	  $$\det \begin{bmatrix}
	  u_1 & v_1 & w_1 \\
	  u_2 & v_2 & w_2 \\
	  u_3 & v_3 & w_3 
	  \end{bmatrix} = 0$$
	  then $\mathbf{u},\mathbf{v},\mathbf{w}$ are *linearly dependent*.
	  *Circle your answer*. 
	  
	  \vfil
	  \hfill \tfbox{20mm}{6cm}
	  \bigskip
   	  
	  
      \newpage
      > Name: _________________

      \vspace{5mm}

      ------

   #. Indicate whether the following statement is true or false:
      If $h_1(t)$ and $h_2(t)$ are solutions to $P(D)x = e^t$, 
	  then $h_1(t) + h_2(t)$ is a solution to $P(D)x = 2e^t$.
	  *Circle your answer*. 	  

	  \vfil
	  \hfill \tfbox{20mm}{6cm}
	  \bigskip


#. (20 points) Short-answer questions.  Each question is worth five (5) points.

   #. Compute $\mathscr{L}^{-1}\left[ \dfrac{e^{-s}}{s} +
      \dfrac{1}{s(s^2+4)} \right]$

      \vfil
	  \hfill \emptybox{20mm}{10cm}
	  \bigskip
   
   #. Let
      $$f(t) = \left \{ \begin{matrix}
	  e^{2t} & t < -1 \\
	  0 & -1 \le t \\
	  \end{matrix} \right .$$
      Compute $\mathscr{L}[f(t)]$.
	  
	  \vfil
	  \hfill \emptybox{20mm}{10cm}
	  \bigskip


	  
      \newpage
      > Name: _________________

      \vspace{5mm}

      ------

   #. Let $B = \begin{bmatrix} 0 & 1 & 1 & 1 & -1 \\ 0 & 0 & 2 & 2 &
      -1 \\ 0 & 0 & 0 & 0 & 1 \end{bmatrix}$. Find all solutions
      $\mathbf{x}$ to the matrix equation $B \mathbf{x} = \mathbf{0}$.

	  
	  \vfil
	  \hfill \emptybox{30mm}{10cm}
	  \bigskip

   #. Let $f_1(t) = e^t \cos(t)$, $f_2(t) = e^t \sin(t)$ and $f_3(t) =
      e^t$. Decide whether the functions $f_1(t),f_2(t),f_3(t)$ are
      *linearly dependent*. You should either use the *definition*
      of linear dependence, or the Wronskian - indicate your choice
      and show your work.

      \vfil

	  
   \newpage
   > Name: _________________

   \vspace{5mm}

   ------

#. (12 pts)

   #. Let $A = \begin{bmatrix} 2 & 0 & 1 \\ 0 & 1 & 0 \\ 0 & 0 & 2
      \end{bmatrix}$.  Find all generalized eigenvectors for $A$ with
      eigenvalue $\lambda = 2$.

      \vfil 
	  
   #. Let $B = \begin{bmatrix} 0 & 1 \\ 1 & -5/2 \end{bmatrix}$. Find
      the general solution to the homogeneous system of ODEs $D
      \mathbf{x} = B \mathbf{x}$.
	  
	  \vfil 
	  

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------

#. (12 pts) Use the Laplace transform to solve the initial value problem
   $$(D^2 - 9)x = u_1(t)e^t,  \qquad x(0) = x'(0) = 0.$$

   \vfill

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------


#. (12 pts) Consider he ordinary differential equation
   $$(\diamondsuit) \quad \dfrac{dx}{dt} + tx = e^{t^2/2}$$
  
   #. Find the *general solution* $x(t)$ to $(\diamondsuit)$.
   
      \vfil
      \vfil 
   
   #. Find the solution $x(t)$ to $(\diamondsuit)$ for which $x(0) = 1$.
  
   \vfil

   \newpage
   > Name: _________________

   \vspace{5mm}

   ------


#. (12 pts) Consider the ordinary differential equation
   $$(\heartsuit) \quad (D^2 -4)x = e^{2t} + e^{-2t}.$$

   a. An annihilator of $e^{2t} + e^{-2t}$ is the operator $A(D) = (D-2)(D+2)=D^2 - 4$. A solution 
      to $(\heartsuit)$ must be a solution to the homogeneous equation
	  $A(D)\cdot (D^2-4)x = (D-2)^2(D+2)^2x = 0$. Briefly explain why a *simplified guess*
	  for a solution $p(t)$ to $(\heartsuit)$ is given by
	  $$p(t) = k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}$$

      \vfil

   b. Use the *exponential shift* formula to compute $(D^2-4)[p(t)] =
      (D^2-4)[k_1 \cdot te^{2t} + k_2 \cdot te^{-2t}]$.
 
      \vfil\vfil
	  
   c. Use your answer to b.) to find a particular solution $p(t)$ to
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
   
   Find the general solution to the system of ODEs $$D \mathbf{x} = A
   \mathbf{x} + \begin{bmatrix} 1 \\ 1
   \end{bmatrix}.$$

   \vfil
   
   \newpage
   > Name: _________________

   \vspace{5mm}
   
#. (12 pts) Solve the initial value problem 
   $$D(D^2-1)x = 0, \qquad x(0) = 0, x'(0) = 1, x''(0) = 0.$$

   \vfill

\begin{center} End of exam \end{center}
