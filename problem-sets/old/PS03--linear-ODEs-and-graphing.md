---
author: Math 51 Fall 2021
title: |
  Problem Set 3 \
  Linear first-order ODES and graphing solutions \
  **Edited:** 2021-09-20  
date: due 2021-09-24 at 5:00 PM
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

#. Consider the linear ODE

   $$\dfrac{dx}{dt} + 2x = 5e^t$$

   a. Find the general solution.
   
   b. Find the particular solution $x$ for which $x(0) = 0$.

#. Consider the linear ODE
   
   $$tx' + x = t^3$$
   
   a. On what intervals is this equation *normal*?
   
   b. Find the general solution to this ODE on one of the intervals
      indicated in a.
   
   c. Solve the initial value problem $$tx' + x = t^3; \quad x(1) =
      0.$$
   
   
#. Adapted from [@gutermanNitecki ] 

   Assume that a drug is absorbed by the body at a rate proportional
   to the amount of the drug present in the bloodstream at time
   $t$. Let's write $x(t)$ for the mg of drug present in the
   bloodstream at time $t$.
   
   a. Find an ODE for which $x(t)$ is a solution, assuming that the
      drug is absorbed at a rate of $0.4 x(t)$ per hour and that the
      patient is simultaneously receiving the drug intravenously at
      the constant rate of 10 mg/hour.
   

   b. Suppose at time $t=0$ that the patient's bloodstream contains
      *none* of the drug (i.e. 0 mg). By solving the initial value
      problem for the ODE you found in a., give a formula for
      $x(t)$. How many milligrams of the drug are present in the
      patient's bloodstream after 1 hour?

#. Let $a,b$ be non-negative numbers and consider the function

   $$\phi(t) = \left \{
   \begin{matrix}
   (t+a)^5 & t<-a \\
   0 & -a < t < b \\
   (t-b)^5 & t>b
   \end{matrix}
   \right . $$
   
   a. Give an expression for the derivative $\phi'(t) = \dfrac{d\phi}{dt}$.
   
   b. Show that $\phi(t)$ is a solution to the initial value problem
   
      $$\dfrac{dx}{dt} = 5x^{4/5}; \quad x(0) = 0.$$
   
   c. Of course, $$\dfrac{dx}{dt} = 5x^{4/5}$$ is a first-order
      equation. Thus the *Existence and Uniqueness Theorem* might
      appear to suggest that there is a unique solution to the above
      initial value problem.
   
      Explain why this example does not contradict the *Existence and
      Uniqueness Theorem*.  
   
      (What can you say about the partial derivative
      $\dfrac{\partial}{\partial x} (5x^{4/5})$? Is it continuous at $x=0$?)


#. Consider the ODE $$x' -x = -0.3t.$$ The following graph
   indicates three solutions to this ODE, together
   with the *isocline* for slope $m=0$.

   :::{.image-container}
   ![](PS3-images/linear-sols-iso.png){ width=75% }
   ::: 



   a. Which curve represents the isocline, **A**, **B**, **C**, or
      **D**?
   
   b. Which solutions have relative extrema in the interval $-2 \le t
      \le 2$? Explain your conclusion.

   c. Find the **general solution** to the ODE $x' -x = -0.3t$.



#. Consider the ODE $$x' -x = -0.3t(t-2)(t+2).$$  The following graph
   indicates three solutions to this ODE, together with the *isocline*
   for slope $m=0$.

   :::{.image-container}
   ![](PS3-images/cubic-sols-iso.png){ width=75% }
   ::: 



   a. Which curve represents the isocline, **A**, **B**, **C**, or
      **D**?
   
   b. Which solutions have relative extrema in the interval $-2 \le t
      \le 2$? Explain your conclusion.

   c. Indicate whether the following is True or False: The graph of a
      solution $x$ satisfying $x(-3)=0$ can never cross the curve
      labeled "A".

# Bibliography {.unnumbered}

:::{#refs}
:::
