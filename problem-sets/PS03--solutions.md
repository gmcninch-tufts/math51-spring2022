---
author: Math 51 Fall 2021
title: |
  Problem Set 3 -- **Solutions** \
  Linear first-order ODES and graphing solutions
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl  
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

#. Consider the linear ODE

   $$\dfrac{dx}{dt} + 2x = 5e^t$$

   a. Find the general solution.

   :::{.solution}
   \color{red}
   **Solution:**

   First, find a solution to the corresponding homog. equation
   $\dfrac{dx}{dt} + 2x = 0$.  A solution is $h(t) = e^{-2t}$, as one
   obtains using *separation of variables*.
   
   Now we look for a solution $x$ to the original ODE of the form $x =
   k(t) h(t) = e^{-2t} k(t)$.
   
   We need $$k'(t) = \dfrac{1}{h(t)} 5e^t = e^{2t} 5e^t = 5e^{3t}.$$
   Thus $$k(t) = 5\int e^{3t}dt = \dfrac{5}{3}e^{3t} + C.$$

   So the general solution is given by
   $$x = e^{-2t}\left(\dfrac{5}{3}e^{3t} + C \right) = \dfrac{5}{3}e^{t} + Ce^{-2t}.$$
   
   -----
   
   \color{black}
   :::

   b. Find the particular solution $x$ for which $x(0) = 0$.

   :::{.solution}
   \color{red}
   **Solution:**
   
   Using the formula for the general solution from (a), we need
   
   $$0 = x(0) = \left(\dfrac{5}{3}e^t + Ce^{-2t} \right) \vert_{t=0} = \dfrac{5}{3} + C$$
   
   Thus $C=\dfrac{-5}{3}$ and so 
   $$x = \dfrac{5}{3}e^t - \dfrac{5}{3}e^{-2t} = \dfrac{5}{3}\left(e^t - e^{-2t}\right)$$
   is the solution to the initial value problem.
   
   -----
   
   \color{black}
   :::

#. Consider the linear ODE
   
   $$tx' + x = t^3$$
   
   a. On what intervals is this equation *normal*?

   :::{.solution}
   \color{red}
   **Solution:**
   
   The functions $\alpha(t) =t,\beta(t) = 1,E(t) = t^3$ are continuous
   on $(-\infty,\infty)$.  Since the "leading coefficient" is the
   function $\alpha(t) = t$, the equation is normal on any interval
   not containing $0$. In particular, it is normal on $(-\infty,0)$
   and on $(0,\infty)$.
   
   -----
   
   \color{black}
   :::

   b. Find the general solution to this ODE on one of the intervals
      indicated in a.
   
   :::{.solution}
   \color{red}
   **Solution:**
   
      We are going to describe the general solution on the interval
   $(0,\infty)$ -- i.e. when $t>0$.
   
   First put the equation in *standard form*: we instead solve
   $$x' + \dfrac{x}{t} = t^2.$$
   
   The corresponding homogeneous equation $x' = \dfrac{-x}{t}$ can be
   solved by separation of variables: one finds 
   \begin{align*}
   \dfrac{1}{x} dx =
   -\dfrac{1}{t}dt &\implies \int \dfrac{1}{x} dx = -\int
   \dfrac{1}{t}dt \implies \ln |x| = -\ln |t| + C \\
   & \implies x = \dfrac{k}{t} \quad \text{for a constant $k$}
   \end{align*}
   (note that $t>0$ by our assumption, so $|t| = t$).
   
   Thus $h(t) = \dfrac{1}{t}$ is a homogeneous solution. We now seek solutions
   to the original equation of the form
   $x(t) = k(t) h(t) = \dfrac{k(t)}{t}$. We need:
   
   $$k'(t) = \dfrac{1}{h(t)} t^2 = \dfrac{1}{1/t} t^2 = t^3.$$
   
   Thus $$k(t) = \int t^3 dt = \dfrac{t^4}{4} + C,$$
   so the general solution is
   $$x(t) = \dfrac{t^4/4 + C}{t} = \dfrac{t^3}{4} + C \cdot \dfrac{1}{t}.$$
   
   -----
   
   \color{black}
   :::   
   
   c. Solve the initial value problem $$tx' + x = t^3; \quad x(1) =
      0.$$

   :::{.solution}
   \color{red}
   **Solution:**
   
   Using the general solution $x(t)$ from b), we need
   
   $$0 = x(1) = \left(\dfrac{t^3}{4} + C \cdot \dfrac{1}{t} \right) \Big \vert_{t=1}$$
   thus
   $$0 = \dfrac{1}{4} + C \implies C = \dfrac{-1}{4}.$$
   
   Thus the solution to the initial value problem is
   $$x(t) = \dfrac{t^3}{4} - \dfrac{1}{4t}.$$
   
   -----
   
   \color{black}
   :::

#. Assume that a drug is absorbed by the body at a rate proportional
   to the amount of the drug present in the bloodstream at time
   $t$. Let's write $x(t)$ for the mg of drug present in the
   bloodstream at time $t$.
   
   a. Find an ODE for which $x(t)$ is a solution, assuming that the
      drug is absorbed at a rate of $0.4 x(t)$ per hour and that the
      patient is simultaneously receiving the drug intravenously at
      the constant rate of 10 mg/hour.

   :::{.solution}
   \color{red}
   **Solution:**
   
   The rate at which the quantity $x(t)$ changes is affected both
   by *absorption* and intravenous administration, and we see that
   
   $$x' = -0.4 x + 10.$$
   
   -----
   
   \color{black}
   :::
   

   b. Suppose at time $t=0$ that the patient's bloodstream contains
      *none* of the drug (i.e. 0 mg). By solving the initial value
      problem for the ODE you found in a., give a formula for
      $x(t)$. How many milligrams of the drug are present in the
      patient's bloodstream after 1 hour?

   :::{.solution}
   \color{red}
   **Solution:**
   
   We first find the general solution to the above ODE. The
   corresponding homogeneous equation is
   $x' = -0.4x$ and has a non-zero solution $h(t) = e^{-0.4t}$.
   
   To find a solution of the form $x(t) = k(t)h(t) = k(t)e^{-0.4t}$,
   we need 
   $$k'(t) = e^{0.4t} \cdot 10.$$ Thus 
   \begin{align*}
   \displaystyle k(t) & = 10 \int e^{0.4t}dt = \dfrac{10}{.4} e^{0.4t} + C \\ 
   & = \dfrac{10}{4/10}
   e^{0.4t} + C = \dfrac{100}{4} e^{0.4t} + C \\ & = 25 e^{0.4t} + C
   \end{align*}
   
   So the general solution is given by
   $$x(t) = e^{-0.4t}(25e^{0.4} + C) = 25 + Ce^{-0.4t}$$
   
   To solve the initial value problem, we need
   $$0 = x(0) = 25 + Ce^{0} = 25+C \implies C = -25.$$
   Thus $$x(t) = 25 - 25e^{-0.4t} \quad \text{mg}$$
   
   The quantity of the drug present in the bloodstream after 1 hour is then
   $$x(1) = 25-25e^{-0.4} = 25-25 \cdot 0.6703 = 8.242 \quad \text{mg}$$
   
   -----
   
   \color{black}
   :::


#. Let $a,b$ be non-negative numbers and consider the function

   $$\phi(t) = \left \{
   \begin{matrix}
   (t+a)^5 & t<-a \\
   0 & -a < t < b \\
   (t-b)^5 & t>b
   \end{matrix}
   \right . $$
   
   a. Give an expression for the derivative $\phi'(t) = \dfrac{d\phi}{dt}$.

   :::{.solution}
   \color{red}
   **Solution:**
   
   On the interval $(-\infty,-a)$, we have $\phi'(t) = 5(t+a)^4$, on
   the interval $(-a,b)$ we have $\phi'(t) = 0$, and on the interval
   $(b,\infty)$ we have $\phi'(t) = 5(t-b)^4$.
   
   It is thus clear that
   $$\phi'(t) = \left \{ \begin{matrix}
   5(t+a)^4 & t<-a \\
   0 & -a \le t \le b \\
   5(t-b)^5 & b < t
   \end{matrix}\right .$$
   
   Note in particular that $\phi(-a) = \phi'(-a) = 0$ and $\phi(b) =
   \phi'(b) = 0$.
   
   -----
   
   \color{black}
   :::


   b. Show that $\phi(t)$ is a solution to the initial value problem
   
      $$\dfrac{dx}{dt} = 5x^{4/5}; \quad x(0) = 0.$$

   :::{.solution}
   \color{red}
   **Solution:**
   
   To see that $\phi$ is a solution to the ODE, one must check that
   $(\heartsuit) \quad \dfrac{d\phi}{dt} = 5[\phi(t)]^{4/5}$ for each value of $t$.
   
   When $t<-a$, we have $\dfrac{d\phi}{dt} = 5(t+a)^4$ and
   $5[\phi(t)]^{4/5} = 5[(t+a)^5]^{4/5} = 5(t+a)^4$; this confirms
   $(\heartsuit)$ for $t<-a$.
   
   When $t>b$, we have $\dfrac{d\phi}{dt} = 5(t-b)^4$ and
   $5[\phi(t)]^{4/5} = 5[(t-b)^5]^{4/5} = 5(t-b)^4$; this confirms
   $(\heartsuit)$ for $t>b$.

   Finally, when $-a \le t \le b$ we have $\phi'(t) = 0$ and
   $5[\phi(t)]^{4/5} = 5 \cdot 0^{4/5} = 0$; this confirms
   $(\heartsuit)$ for $-a \le t \le b$.
   
   Since $(\heartsuit)$ holds for all $t$, $\phi$ is a solution to the
   ODE.
   
   Finally, since $-a < 0 < b$, we have $\phi(0)=0$. Thus $\phi$ is a
   solution to the initial value problem.
   
   -----
   
   \color{black}
   :::


   c. Of course, $$\dfrac{dx}{dt} = 5x^{4/5}$$ is a first-order
      equation. Thus the *Existence and Uniqueness Theorem* might
      appear to suggest that there is a unique solution to the above
      initial value problem.
   
      Explain why this example does not contradict the *Existence and
      Uniqueness Theorem*.  
   
      (What can you say about the partial derivative
      $\dfrac{\partial}{\partial x} (5x^{4/5})$? Is it continuous at $x=0$?)

   :::{.solution}
   \color{red}
   **Solution:**
   
   The hypotheses of the Existence and Uniqueness Theorem do not hold
   for the ODE $x' = 5x^{4/5}$.
   
   Indeed, the Existence and Uniqueness Theorem considers ODEs of the
   form $x' = f(t,x)$, so in our case $f(t,x) = 5x^{4/5}$.  And we
   consider the initial value problem for solutions satisfying $x(0) =
   0$.  The hypotheses of the Theorem requires that $f$ and
   $\dfrac{\partial f}{\partial x}$ must continuous on some open
   rectangle in the plane containing the point $(0,x(0)) = (0,0)$.
   
   In this case, $\dfrac{\partial f}{\partial x} = 4x^{-1/5} =
   \dfrac{4}{x^{1/5}}$ is not defined when $x = 0$, so in particular
   is not continuous at the point $(t,x) = (0,0)$.
   
   Thus the existence and uniqueness theorem does not apply to the ODE
   we consider here, and so we should have no expectation that the
   initial value problem should have a unique solution. (And as we have
   seen, it doesn't!)
   
   -----
   
   \color{black}
   :::


#. Consider the ODE $x' -x = -0.3t$. The following graph
   indicates three solutions to this ODE, together
   with the *isocline* for slope $m=0$.

   :::{.image-container}
   ![](PS3-images/linear-sols-iso.png){ width=75% }
   ::: 



   a. Which curve represents the isocline, **A**, **B**, **C**, or
      **D**?
   
   :::{.solution}
   \color{red}
   **Solution:**
   
   The isocline for $m=0$ is defined by $-x = -0.3t$ i.e. the line $x
   = 0.3t$.  This is curve **D**.
   
   -----
   
   \color{black}
   :::
   
   
   b. Which solutions have relative extrema in the interval $-2 \le t
      \le 2$? Explain your conclusion.

   :::{.solution}
   \color{red}
   **Solution:**
   
   A solution $x$ should have relative extrema at its *critical
   points*. Since $x$ is differentiable, critical points occur only at
   points with $x'(t) = 0$. Thus, the critical points lie on the line
   $x=0.3t$, i.e. the isocline with $m=0$.
   
   So relative extrema can occur only at intersections of a solution curve
   with the isocline **D**.
   
   Curves **C** and **B** each have one such intersection, which in
   each case is a local maximum.
   
   
   -----
   
   \color{black}
   :::

   c. Find the **general solution** to the ODE $x' -x = -0.3t$.

   :::{.solution}
   \color{red}
   **Solution:**
   
   $h(t) = e^t$ is a solution to the corresponding homogeneous equation, so we look for
   solutions of the form $x(t) = e^t k(t)$. We need:
   $$k'(t) = -0.3te^{-t};$$
   integrating by parts, find that
   $$k(t) = -0.3\int te^{-t} dt = -0.3\left(-te^{-t} + \int e^{-t} dt \right)
   = 0.3\left(te^{-t} + e^{-t}\right) + C$$
   
   Thus the general solution is 
   $$x(t) = 0.3(t + 1) + Ce^t$$
   
   -----
   
   \color{black}
   :::


#. Consider the ODE $x' -x = 0.3t(t-2)(t+2)$. The following graph
   indicates three solutions to this ODE, together with the *isocline*
   for slope $m=0$.

   :::{.image-container}
   ![](PS3-images/cubic-sols-iso.png){ width=75% }
   ::: 



   a. Which curve represents the isocline, **A**, **B**, **C**, or
      **D**?

   :::{.solution}
   \color{red}
   **Solution:**
   
   Recall that since the existence and uniqueness theorem holds for
   this ODE, two different solution curves can never intersect.
   The curve **D** intersects both curves **B** and **C**. Thus
   **D** must be the isocline.
   
   From another point-of-view, the isocline with $m=0$ is the curve
   defined by $x=.3t(t-2)(t+2)$ which is consistent with the shape of
   **D**.
   
   -----
   
   \color{black}
   :::

   b. Which solutions have relative extrema in the interval $-2 \le t
      \le 2$? Explain your conclusion.

   :::{.solution}
   \color{red}
   **Solution:**
   
   As explained in the previous problem, relative extrema in the graph of a solution must occur
   at the intersections of the solution curve with the isocline for $m=0$. 
   
   Solution **B** has three such intersections, corresponding to two
   local maxima and one local minimum.
   
   Solution **C** has one such intersection, corresponding to a local maximum.
   
   -----
   
   \color{black}
   :::

   c. Indicate whether the following is True or False: The graph of a
      solution $x$ satisfying $x(-3)=0$ can never cross the curve
      labeled "A".

   :::{.solution}
   \color{red}
   **Solution:**
   
   **True**
   
   Since the hypotheses of the existence and uniqueness theorem hold
   for this ODE, two distinct solution curves can never
   intersect. Since the curve $x_A$ marked **A** satisfies
   $x_A(-3)<0$, the curves defined by $x$ and by $x_A$ can never
   intersect.
   
   In fact, you can more-or-less see that no intersection will occur 
   without quoting the theorem; indeed, the shape of the slope field
   suggests that any solution with $x(-3)=0$ is increasing as a
   function of $t$ faster than the curve **A**, and hence will never
   intersect that curve.
   
   
   -----
   
   \color{black}
   :::
