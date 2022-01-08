---
author: |
  Math 51 Fall 2021 --
  Tufts University --
  Z. Nitecki and G. McNinch
title: |
  Midterm Exam 
date: 2021-10-20
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
points. You begin the exam with one free point.

Your exam submission will be *scanned* and uploaded to *Gradescope*
for marking. You should write your name at the top of each page, as
indicated (*especially* if you remove the staples from your exam booklet).

For each multiple choice problems, *clearly indicate your selection*
a,b,c or d by circling the letter.

For the partial credit problems, always *show your work*. Try to fit
this work in the *available space* if possible.  There is a blank page
at the back of your exam for use as scratch paper. If you need more
space for a solution, please write clearly *in the indicated space*
that your solution continues later.

\vfil

::: {.identity} 

---------

\vfil

> Please print your name, and sign your exam. With your signature, you
> pledge that you have neither given nor received assistance on this
> exam.

\vfil

> **Name:** ___________________________

\vfil

> **Signature:** _____________________________

\vfil

---------

:::

\newpage
> Name: _________________

\vspace{5mm}

------

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

\vfill
 

2. **(4pts)** Which of the following represents a *linear* ODE?

   a. $x\cdot x'' + x + 1 = \sin(t)$
   
   b. $t\cdot x'' + x^2 + 1 = \sin(t)$
   
   c. $t^2\cdot x'' + (t+1) \cdot x + 1 = \sin(t)$
   
   d. $(D^2 + D + t)x^2 = \sin(t)$
  
\vfill

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


\newpage
> Name: _________________

\vspace{5mm}

------

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

\vfill

5. **(4pts)** You are given that a particular solution to
   $$(\heartsuit) \quad (D^2-2D +1)x = e^t$$ is $p(t) = \dfrac{t^2
   e^t}{2}$. Which of the following best represents the general
   solution to $(\heartsuit)$?
   
   a. $c_1 e^t + c_2 te^t$.
   
   b. $\dfrac{t^2 e^t}{2} + c_1 e^t + c_2 te^t$.
   
   c. $\dfrac{t^2 e^t}{2} + c e^t$.
   
   d. $\dfrac{t^2 e^t}{2} + c_1 e^t + c_2 e^{-t}$.


\newpage

> Name: _________________

\vspace{5mm}

-----

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

\vspace{5mm}

----

\vspace{5mm}

II. Partial Credit problems (75 points)

1. **(15pts)** Find the general solution to the differential equation
   $$(t+1)x' = \dfrac{x}{t-1}, \quad t>1.$$

   \vfill


\newpage

> Name: _________________

\vspace{5mm}

-----



2. **(15pts)** Solve the initial value problem
   $$(\clubsuit) \quad 2\dfrac{dx}{dt} - x = t \cdot e^t; \quad x(0) = 1$$ 
   

\vfill

\newpage

> Name: _________________

\vspace{5mm}

-----


3. **(15pts)** Use the exponential shift formula
   $$P(D)[e^{\lambda t}y] = e^{\lambda t}P(D+\lambda)[y]$$ to
   compute the function $P(D)[f]$ in each of the following cases:
   
   a. $P(D) = D^2 +D -6$ and $f = t^2 e^{2t}$.
   
   \vfill
   
   b. $P(D) = D^2 + 3$ and $f = e^t \cos(3t)$.
   
   \vfill



\newpage

> Name: _________________

\vspace{5mm}

-----


4. **(15pts)** Show that the functions $$f_1(t) = e^t\cos(t), \quad
   f_2(t) = e^t\sin(t), \quad f_3(t) = e^t$$ are linearly independent.
   
   You have been told that functions like this are independent.
   However, here we want you to demonstrate it directly in this
   case. You may use the *Wronskian test* (with all details needed to
   justify using it) or other, direct arguments from the definition.


\newpage

> Name: _________________

\vspace{5mm}

-----


5. **(15pts)** Solve the initial value problem
   $$4x'' + 4x' -3x = 0; \quad x(0) = 0, \quad x'(0) = 1.$$
   
   

   \vfill
   
   \begin{center} End of exam \end{center}
