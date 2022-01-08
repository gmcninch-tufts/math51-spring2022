---
author: |
  Math 51 Fall 2021 --
  Tufts University --
  Z. Nitecki and G. McNinch
title: |
  Final Exam 
date: 2021-12-17
fontsize: 12pt
header-includes: |
  \usepackage[top=10mm,bottom=20mm,left=20mm,right=20mm]{geometry}
  \usepackage{palatino,mathpazo}
---

You may not use *calculators*, *books* or *notes* during the exam. All
electronic devices (including your phones) must be *silenced* and *put
away* for the duration of the exam.

There are two sections to the exam: 6 multiple choice problems worth a
total of 24 points, and 5 partial credit problems worth a total of 75
points.  You begin the exam with one free point.

Write your solutions carefully and legibly on this exam booklet; when
the exam is complete, return this booklet to the exam
proctors. Following your submission of this booklet, we will then
*scan* your exam booklet and upload it to *Gradescope* for
marking. You should write your name at the top of each page, as
indicated (*especially* if you remove the staples from your exam
booklet).

For each multiple choice problem, *clearly indicate your selection*
a., b., c. or d. by unambiguously marking your selected letter.

For the partial credit problems, always *show your work*. Try to fit
this work in the *available space* if possible.  There is a blank page
at the back of your exam for use as scratch paper. If you need more
space for a solution, please write clearly *in the indicated space*
that your solution continues later.

\vfil

::: {.identity} 

\begin{center}
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
\end{center}

\vfil

> Please print your name, and sign your exam. With your signature, you
> pledge that you have neither given nor received assistance on this
> exam.

\vfil

> **Name:** ___________________________

\vfil

> **Signature:** _____________________________

\vfil

\begin{center}
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
\end{center}

:::

\newpage

\vspace{5mm}

------

\begin{center}
Laplace Formulas
\end{center}

\begin{align*}
\mathscr{L}[e^{\lambda t}] &= \dfrac{1}{s-\lambda} \\
\mathscr{L}[t^n] &= \dfrac{n!}{s^{n+1}} \\
\mathscr{L}[\sin(\beta t)] &= \dfrac{\beta}{s^2 + \beta^2} \\
\mathscr{L}[\cos(\beta t)] &= \dfrac{s}{s^2 + \beta^2}
\end{align*}

\begin{align*}
\mathscr{L}^{-1}\left[\dfrac{1}{s-\lambda}\right] &=  e^{\lambda t} \\
\mathscr{L}^{-1}\left[\dfrac{1}{s^{n+1}}\right]  &= \dfrac{t^n}{n!}  \\
\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \beta^2}\right] &= \dfrac{1}{\beta} \sin(\beta t) \\
\mathscr{L}^{-1}\left[\dfrac{s}{s^2 + \beta^2}\right] &= \cos(\beta t) 
\end{align*}


  $$\mathscr{L}[D^kx] = s^k \mathscr{L}[x(t)] - s^{k-1}x(0) - s^{k-2}x'(0) - \cdots - s x^{(k-2)}(0) - x^{(k-1)}(0).$$


\newpage
> Name: _________________

\vspace{5mm}

------

I. Multiple Choice Problems (24 points)

1. **(4pts)** Indicate which of the following best represents a
   *simplified guess* for a particular solution $p(t)$ to the
   non-homogeneous linear ODE: $$(D-3)(D-1)x = te^{3t} + \cos(2t)$$

   a. $p(t) = k_1 te^{3t} + k_2 \cos(2t) + k_3 \sin(2t)$
   
   b. $p(t) = k_1 te^{3t} + k_2 \cos(2t)$
   
   c. $p(t) = k_1 te^{3t} + k_2 t^2 e^{3t} + k_3 \cos(2t)$
   
   d. $p(t) = k_1 te^{3t} + k_2 t^2 e^{3t} + k_3 \cos(2t) + k_4 \sin(2t)$

   \vfil
 

2. **(4pts)** Indicate which of the following represents the general
   solution to the homogeneous linear ODE $(D^2 - 2D + 2)^2x = 0.$

   a. $h(t) = c_1 e^{-t}\cos(t) + c_2 e^{-t}\sin(t) + c_3 te^{-t}\cos(t) + c_4
      te^{-t}\sin(t)$
   
   b. $h(t) = c_1 e^t\cos(t) + c_2 e^t\sin(t)$

   c. $h(t) = c_1 e^t\cos(t) + c_2 e^t\sin(t) + c_3 te^t\cos(t) + c_4
      te^t\sin(t)$  

   d. $h(t) = c_1 te^t\cos(t) + c_2 te^t\sin(t) + c_3 t^2e^t\cos(t) + c_4 t^2e^t\sin(t)$
  
   \vfil  

3. **(4pts)** The matrix $A = \begin{bmatrix} -2 & 5 \\ -2 & 4 \end{bmatrix}$
   has characteristic polynomial $\lambda^2 - 2\lambda + 2$ and thus
   its eigenvalues are $\lambda = 1 + i$ and $\lambda = 1-i$.
   
   Which of the following is an eigenvector for $A$?
   
   a. $A$ has no eigenvectors.
  
   b. $\begin{bmatrix} 3 - i \\ 2 \end{bmatrix}$  

   c. $\begin{bmatrix} 2 \\ -3 + i \end{bmatrix}$
   
   d. $\begin{bmatrix} 3 + i \\ 2 \end{bmatrix}$

\vfil



\newpage
> Name: _________________

\vspace{5mm}

------


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
   
   b. $\mathbf{h}(t) =  e^{2t} \begin{bmatrix} 1+ 12t \\ 2 \\ 6 \end{bmatrix}$

   c. $\mathbf{h}(t) =  e^{2t} \begin{bmatrix} 1+ t \\ 2 \\ 6 \end{bmatrix}$

   d. No solution $\mathbf{h}(t)$ has the property that
      $\mathbf{h}(0) =    \begin{bmatrix} 1 \\ 2 \\ 6 \end{bmatrix}$.

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
   
   \vfill
   
   b. Solve the initial value problem $D \mathbf{x} = A \mathbf{x},
      \quad \mathbf{x}(0) = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$.

\vfill

\newpage

> Name: _________________

\vspace{5mm}

-----


3. **(15pts)** Solve the initial value problem $(4D^2 - 4D + 1)x = 0, \quad x(2) = x'(2) = e$.




\newpage

> Name: _________________

\vspace{5mm}

-----


4. **(15pts)** Consider the matrix $B = \begin{bmatrix} 5 & -3 & -6 \\ 0 & 2 & 0 \\ 3 & -3 & -4 \end{bmatrix}$.

   a. The vector $\mathbf{v} = \begin{bmatrix} 1 \\ -1 \\ 1 \end{bmatrix}$ is an eigenvector for
      $B$. What is the corresponding eigenvalue?

      **Hint:** Compute the vector $B \mathbf{v}$ and compare with $\mathbf{v}$.

   \vfil
   
   b. Find an eigenvector for $B$ for the eigenvalue $\lambda  = -1$.

   \vfil

\newpage

> Name: _______________


5. **(15pts)** Laplace Transforms:

  a. Compute the inverse Laplace tranform $\mathscr{L}^{-1}[F(s)]$ of
     the function $F(s) = \dfrac{3s^2+s+1}{(s+1)(s^2 + 2)}$.

  \vfill

  b. If $x$ is a solution to $(D^2 + D + 1)x = 1$ with $x(0) = 0$ and
     $x'(0) = 1$, find an expression for $\mathscr{L}[x]$ as a
     function of $s$.

  \vfill


\begin{center}
**End of Exam** 
\end{center}
