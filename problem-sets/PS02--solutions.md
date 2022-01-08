---
author: Math 51 Fall 2021
title: |
  Problem Set 2 -- **Solutions** \
  Integration and Separation of Variables
bibliography: /home/george/Prof-Math/assets/math-bibliography.bib
csl: assets/chicago-author-date.csl  
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

1. Find all values of the constant $k$ for which the given functions $x =
   \phi(t)$ is a solution of the given differential equation:

   a.  $x = t^k , t > 0; \quad 4 t^2 \cdot x \cdot x'' - 4t \cdot x \cdot x'  + 3x^2 = 0$.

   :::{.solution}
   \color{red}
   **Solution:**
   
   Computing derivatives, one finds that $x' = kt^{k-1}$ and $x'' =
   k(k-1)t^{k-2}$.
   
   Now plug these expressions into the left-hand-side of the above ODE. One finds that
   
   \begin{align*} & 4 t^2 \cdot x \cdot x'' - 4t \cdot x \cdot x' +
   3x^2 \\ & = 4t^{2k} k(k-1) - 4t^{2k} k + 3t^{2k} \\ & = t^{2k}(
   4k(k-1) - 4k + 3)\\ & = t^{2k}(4k^2-8k+3) \end{align*} In order for
   this expression to be equal to 0 as required by the ODE, we need
   that $4k^2-8k+3 = 0$.  Using the *quadratic formula* one finds that
   $$k = \dfrac{8\pm\sqrt{64-16\cdot3}}{8} = 1 \pm \dfrac{1}{2} = \dfrac{3}{2},\dfrac{1}{2}$$

   This means that $x=t^{3/2}$ and $x=t^{1/2}$ are the only solutions
   of the indicated form.
   
   -----
   
   \color{black}
   :::

   b.  $x = kte^{3t}; \quad x'' − 3x' = e^{3t}$.

   :::{.solution}
   \color{red}
   **Solution:**
   
   Computing derivatives, one finds that $x' = k(1+3t)e^{3t}$ and
   $x'' = 3k(2+3t)e^{3t}$.
   
   Now one finds that 
   \begin{align*}
   x'' - 3x' &= 3k(2+3t)e^{3t} - 3k(1+3t)e^{3t} \\
   &= 3ke^{3t}
   \end{align*}

   The ODE requires that this expression be equal to $e^{3t}$; thus, we find that
   $$e^{3t} = 3ke^{3t}$$
   so  $k = \dfrac{1}{3}$ must hold.
   
   Thus $x = \dfrac{t\cdot e^{3t}}{3}$ is the only solution of the indicated form.
   
   -----
   
   \color{black}   
   :::


2. (adapted from [@gutermanNitecki §1.1 exercise  24 and 1.2 exercise 22]).

   A tanker carrying $150,000$ liters of oil runs aground off the
   coast of Alaska. Water pours in the tanker at one end at a rate of
   $1000$ liters per hour while the polluted water-oil mixture pours
   out at the other end, also at a rate of $1000$ liters per hours.

   We wish to describe the number of liters $x(t)$ of oil in the
   tanker at time $t$. Of course, $x(0) = 150000$.

   a. Explain why the percentage of oil in the tanker at time $t \ge
   0$ is given by the fraction $\dfrac{x(t)}{150000}$.

   :::{.solution}
   \color{red}   
   **Solution:**
   
   Since oil is leaking out of the tanker at the same rate that water
   is leaking in, the amount of fluid (oil-water mixture) in the
   tanker's hold remains constant. Since $x = x(t)$ represents the
   amount of oil in the tanker, the indicate ratio is precisely what
   is meant by the percentage of oil.
   
   Another useful term here is that $\dfrac{x(t)}{150000}$ represents
   the *concentration* of oil in the tanker.
   
   -----
   
   \color{black}
   :::

   b. Use the answer to a. to set up a differential equation to
      predict the amount $x = x(t)$ of oil in the tanker at time
      $t$. Explain how you arrived at your formulation.

   :::{.solution}
   \color{red}   
   **Solution:**
   
   Since the oil-water mixture is leaking out of the tanker at a rate
   of $1000$ $\ell$/hr, the rate of change in the amount of oil in the
   tanker is $-1000 \times$ the *concentration* of oil in the
   tanker. The expression is *negative* because the amount of oil in
   the tanker is decreasing with time.
   
   Thus the required ODE is
   $$x' = -1000 \cdot \dfrac{x}{150000} = \dfrac{-x}{150}$$
   
   -----
   
   \color{black}
   :::

   c. Solve the differential equation found in part b. How much oil
      remains in the tanker after 5 days?

   
   :::{.solution}   
   \color{red}   
   **Solution:**
   
   Separating variables, we find that 
   \begin{align*}
   \dfrac{1}{x}dx &= \dfrac{-1}{150}dt \quad \implies \\
   \int \dfrac{1}{x}dx &= \int \dfrac{-1}{150}dt \quad \implies \\
   \ln|x| &= \dfrac{-t}{150} + C \quad \implies \\
   x &= ke^{-t/150} \quad \text{for a constant $k$}
   \end{align*}
   
   Since when $t=0$, $x(0)= 150000$, conclude that
   $x(t) = 150000 \cdot e^{-t/150}$
   
   Now, 5 days is $5=5\times 24=120$ hours
   Thus after 5 days,
   
   $$x(5) = 150000 e^{-120/150} = 150000 e^{-4/5} \approx 150000 \cdot
   0.449328964117 \approx 67,399.3$$ liters of oil remain in the tanker.
   
   -----
   
   \color{black}
   :::


3. Find the general solution of the following o.d.e.:

   $$\dfrac{dx}{dt} = \left( x \cdot t \right )^2 e^t.$$

   
   :::{.solution}   
   \color{red}   
   **Solution:**
   
   Separating variables, find that
   \begin{align*}
   \dfrac{dx}{x^2} & = t^2e^t dt \quad \implies \\
   \int \dfrac{dx}{x^2} & = \int t^2e^t dt \quad \implies \\ 
   \dfrac{-1}{x} &= \int t^2e^t dt
   \end{align*}
   
   Recall that integration by parts shows that $\int te^t dt = te^t - e^t + C$.
   Now, integrating by parts with $u = t^2$ and $dv = e^tdt$, find that
   $$\int t^2e^t dt = t^2e^t - \int 2te^t dt = t^2e^t - 2te^t +2e^t + C
   = (t^2 - 2t + 2)e^t + C$$
   
   We conclude that
   $$\dfrac{-1}{x} = (t^2 - 2t + 2)e^t + C$$
   so
   $$x = \dfrac{-1}{(t^2 - 2t + 2)e^t + C}$$
   is the general solution to the given ODE.
   
   -----
   
   \color{black}
   :::


4. Find the particular solution of the following o.d.e satisfying the
   indicated condition. Explicitly confirm your answer by plugging it
   into the equation.

   $$t^2 x' = x^2 + 1, \quad x(1) = 0.$$

   
   :::{.solution}   
   \color{red}   
   **Solution:**
   
   Separating variables, we find that
   \begin{align*}
   \dfrac{dx}{x^2+1} &= \dfrac{1}{t^2} dt \quad \implies \\
   \int \dfrac{dx}{x^2+1} &= \int \dfrac{1}{t^2} dt \quad \implies \\ 
   \arctan(x) &= \dfrac{-1}{t} + C
   \end{align*}
   for some constant $C$.
   
   Thus $x = \tan\left(C - \dfrac{1}{t}\right).$
   
   Since we require that $x(1) = 0$, we find that
   $$0 = x(1) = \tan\left(C - \dfrac{1}{1}\right) = \tan(C-1)$$
   which of course works for $C=1$.
   
   Thus our solution is $x = \tan\left(1-\dfrac{1}{t}\right)$.
   
   Let's check that it works:
   
   On the one hand,
   \begin{align*}
   t^2 x' &= t^2 \sec^2\left(1-\dfrac{1}{t}\right)\dfrac{1}{t^2} \\
          &= \sec^2\left(1-\dfrac{1}{t}\right)
   \end{align*}
   
   On the other hand,
   \begin{align*}
   x^2 + 1 &= \tan^2\left(1-\dfrac{1}{t}\right) + 1 \\
   &= \dfrac{\sin^2\left(1-\dfrac{1}{t}\right) + \cos^2\left(1-\dfrac{1}{t}\right)}{\cos^2\left(1-\dfrac{1}{t}\right)} \\
   &= \sec^2\left(1-\dfrac{1}{t}\right)
   \end{align*}
   Since these expressions coincide, indeed $x$ is a solution to the given ODE.
   

   
   -----
   
   \color{black}
   :::

   
5. Find the particular solution of the following o.d.e satisfying the
   indicated condition.
   
   $$\dfrac{d^2x}{dt^2} = t\cos(t), \quad x(0) = x(\pi) = 0.$$

   :::{.solution}   
   \color{red}   
   **Solution:**
   
   To find the general solution of the ODE, we integrate twice.
   
   Integration by parts yields
   $$x' = \int x'' dt =  \int t\cos(t) dt =  t\sin(t) - \int \sin(t)dt = t\sin(t) + \cos(t) + A$$
   
   And integrating by parts again yields
   \begin{align*}
   x &= \int x' dt  \\
     &= \int (t\sin(t) + \cos(t) + A)dt \\
     &= -t\cos(t) + \sin(t) +\sin(t) + At + B \\
     &= -t\cos(t) + 2\sin(t) + At + B 
   \end{align*}
   
   Now we require that
   $x(0) = 0$ so that $B = 0$.
   
   Moreover, we require that
   $$0 = x(\pi) = -\pi(-1) + \pi A = \pi(A+1)$$
   so that $A = -1$.
   
   Thus the solution to the initial value problem is
   
   $$x(t) = -t\cos(t) + 2\sin(t) - t$$
   
   -----
   
   \color{black}
   :::


# Bibliography {.unnumbered}

::: {#refs}
:::
