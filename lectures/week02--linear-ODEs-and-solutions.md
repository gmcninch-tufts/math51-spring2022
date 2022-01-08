---
author: George McNinch (Math 51 Fall 2021)
title: Week 2 - Linear ODES and Solutions
date: 2021-09-17
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---


# First-order linear ODEs

## First, an example

Consider the first order linear ODE
$\quad \quad (\diamondsuit) \quad x' + x = t+1.$

::: incremental

- we first solve the corresponding *homogeneous* equation 
  $x' + x = 0.$

- separating variables, we find that
  \begin{align}
  \dfrac{dx}{dt} = -x \implies \dfrac{1}{x}dx = -dt \implies x = ke^{-t}
  \end{align}
  for an arbitrary constant $k$. 
  
- in particular, $h(t) = e^{-t}$ is a solution to this *homogeneous
  equation*, 
  
- and the general homogeneous solution is $k\cdot h(t)$ for a constant
  $k$.
  
- notice that $k$ represents the value at $t=0$ of a homogeneous solution.

::: 

-----

(continued...)

::: incremental

- we now *guess* that the general solution to $(\diamondsuit)$ has the
  form $x(t) = k(t)e^{-t}$, where now $k$ is a function depending on
  $t$.

- "explanation" for our guess: remember we are solving $(\diamondsuit)
  \quad x' + x = t+1$.  Over a very short interval of time $\Delta
  t$, we can view the quantity $t+1$ as essentially constant. On a
  small $t$-interval, we can approximate the solution to
  $(\diamondsuit)$ with a homogeneous solution $kh(t)$ for a suitable
  $k$. Since this $k$ will depend on the relevant interval, we are led
  to guess that $k$ should depend on $t$.
  
- To find the condition on $k(t)$ for which $x=k(t)h(t)$ solves
  $(\diamondsuit)$, we first compute

  \begin{align}
  x' + x &= \dfrac{d}{dx}(k(t) e^{-t}) + k(t)e^{-t} \\
  &= k'(t) e^{-t} - k(t)e^{-t} + k(t)e^{-t} \\
  &= k'(t) e^{-t}
  \end{align}

  
:::

------

(continued...)

::: incremental


- Now we need $x' + x = t+1$, i.e.
  $$k'(t)e^{-t} = t+1 \quad \implies \quad k'(t) = (t+1)e^{t}.$$

- Thus 
  \begin{align}
  k(t) &= \int (t+1)e^tdt = \int (e^t + te^t)dt \\
  &= e^t + \int te^t dt = e^t + te^t - e^t + C \\
  &= te^t + C
  \end{align}


- One can now check that $$x(t) = k(t) h(t) = (te^t + C)e^{-t} = t +
  Ce^{-t}$$ gives a solution to $(\diamondsuit)$ for all constants
  $C$.

:::

## Some definitions

The method used in the preceding example works for a general class of
equations, namely *first-order linear ODEs which are normal*. We need
to define this terminology

::: incremental


- A first-order linear ODE is of the form $$(\heartsuit) \quad
  \alpha(t) \dfrac{dx}{dt} + \beta(t) x = E(t)$$ for functions
  $\alpha,\beta,E$ of $t$. Note that $\alpha,\beta,E$ don't depend on
  $x$.


- for example,  $x\dfrac{dx}{dt} + x^2 = tx$ is first order, but *not linear*.

- We say that $(\heartsuit)$ is *normal* on some interval $I$ if
  $\alpha(t)$ is never zero for $t$ in $I$, and if $\alpha,\beta,E$ are
  continuous on $I$.


:::

## Standard Form

::: incremental

- For example, consider the 1st order linear ODE
  $\quad \left(\dfrac{t-1}{t}\right) \dfrac{dx}{dt} + x = 0.$  
  So $\alpha(t) = \dfrac{t-1}{t}, \quad \beta(t) = 1, \quad E(t) = 0$.
  This equation is normal on $(1,\infty)$, on $(0,1)$ and on $(-\infty,0)$, but it
  is not normal on any interval containing $0$ or $1$.


- linear ODE is in *standard form* if it can be written

  $$\dfrac{dx}{dt} + r(t)x = Q(t)$$
  for continuous functions $r,Q$ on the interval $I$.

:::

-----

(continued...)

::: incremental

- a normal equation can always be replaced by one in *standard
  form*. Indeed, replace $$\alpha(t) \dfrac{dx}{dt} + \beta(t) x =
  E(t) \quad \text{with} \quad \dfrac{dx}{dt} +
  \dfrac{\beta(t)}{\alpha(t)}x = \dfrac{E(t)}{\alpha(t)}.$$

- The solutions of these two equations are the same; moreover, the
  functions $r(t) = \dfrac{\beta(t)}{\alpha(t)}$ and $Q(t) =
  \dfrac{E(t)}{\alpha(t)}$ are continuous on $I$ since $\alpha(t)$ is
  never $0$ on $I$.

:::


## Our goal

::: incremental

- the point of all this is that *we are going to describe a method
  of finding the solutions for a linear first-order ODE in standard form*.

- **to solve a normal linear first order ODE, you may have to first
  carry out the procedure on the previous slide (i.e. divide by
  $\alpha$) to put the equation in standard form.**

:::


## The general case

Consider a 1st order lin ODE in stndrd form
$\dfrac{dx}{dt} + r(t)x = Q(t).$

::: incremental

- the corresponding *homogeneous* equation is $$\dfrac{dx}{dt} + r(t)
  x = 0.$$ (the homogeneous equation is just obtained by replacing
  $Q(t)$ with 0; we'll have more to say about homogeneous equations in
  future lectures).
  
- In this case, the homogeneous equation can be solved using our
  method of *separation of variables*, and one readily finds that it
  has a family of solutions given by $x_0=ke^{-R(t)}$ for a constant
  $k$, where $R(t)$ is an anti-derivative of $r(t)$.

:::

-------

(continued...)

::: incremental

- In fact, we can just check directly that the formula
  $x_0=ke^{-R(t)}$ gives a solution; the chain rule shows that
  $$\dfrac{dx_0}{dt} = \dfrac{d}{dt}(ke^{-R(t)}) = ke^{-R(t)}
  \left(-\dfrac{dR}{dt}\right) = x_0\cdot (-r(t)).$$

  Thus $\dfrac{dx_0}{dt} + r(t) x_0 = 0$.
  
- We now proceed as in the example. We *guess* that the solutions $x$
  to the original inhomogeneous equation can be obtained from the
  homogeneous ones $x_0$ by replacing the constant $k$ with a *maybe
  non-constant* function of $t$.  i.e. we look for solutions of the
  form $$x = k(t) e^{-R(t)}.$$

- now our job is to *find the function $k(t)$*.

:::

--------

(continued...)

::: incremental

- write $h(t) = e^{-R(t)}$ for a sol to the homog
  eqn as before. Thus
  $$h'(t) = -r(t)h(t).$$
  
- So we seek solutions of our ODE of the form $x(t) = k(t)h(t)$.

- The chain rule shows that

  \begin{align}
  x' + r(t)x &= 
  \dfrac{d}{dt}\left[k(t)h(t)\right] + r(t)k(t)h(t) \\
  &= k'(t)h(t) + k(t)h'(t)  + r(t)k(t)h(t) \\
  &= k'(t)h(t) -r(t)k(t)h(t) + r(t)k(t)h(t) \\
  &= k'(t)h(t)
  \end{align}

- Thus  $x(t) = k(t)h(t)$ is a solution of ODE $x' + r(t)x = Q(t)$ if and only if
  $$k'(t)h(t) = Q(t).$$

:::

--------

(continued...)

::: incremental

- conclude that
  \begin{align}
  k'(t) &= \dfrac{1}{h(t)} Q(t) \\
        &= e^{R(T)} Q(t)
  \end{align}

- we now find $k(t)$ by anti-differentiation

- note that the constant of integration that arises when finding
  $k(t)$ provides the expected parameter for the general solution to
  our first-order ODE.

:::

## summary of the method

For the first-order linear ODE in standard form

$$(\heartsuit) \quad \dfrac{dx}{dt} + r(t) x = Q(t).$$

::: incremental

- first find a solution to  the homogeneous equation $x' +r(t)x = 0$.   
  **Solution:**

  $$h(t) = e^{-R(t)} \quad \text{where $R(t)$ is an anti-derivative of $r(t)$}$$

- let $k(t)$ be an anti-derivative of $e^{R(t)} Q(t)$.

- then $x = (k(t) + C)\cdot h(t) = k(t)e^{-R(t)} + Ce^{-R(t)}$ is the general solution to $(\heartsuit)$.

:::

# Solutions and graphs

## Existence and Uniqueness Theorem

Consider the initial value problem 
$$(\clubsuit) \quad x' = f(t,x), \quad x(t_2) = x_2$$
for the indicated first-order ODE.

. . .

Assume that there is a rectangle
$$R = \{(t,x) \mid t_0 < t < t_1, \quad  x_0 < x < x_1\}$$
containing the point $(t_2,x_2)$ with the property that
$f$ and $\dfrac{\partial f}{\partial x}$ are continuous on $R$.

Under these assumptions, we have:

. . .

**Theorem:** For some number $\epsilon > 0$, there is a **unique**
solution $x = x(t)$ to the initial value problem $(\clubsuit)$ defined
on the interval $[t_0 - \epsilon,t_0 + \epsilon]$.

## Graphical representation of solutions

Consider as before an ODE of the form
$$(\clubsuit) \quad x' = f(t,x).$$

. . .

In order to try to get some intuition for solutions to $(\clubsuit)$, observe that $x' = f(t,x)$
should represent the slope of the tangent line to a solution $x$ at each point $(t_0,x(t_0))$.

. . .

So we consider a graphical representation of these slopes.

. . .

Namely, for each point $(t,x)$ we consider a vector (line segment)
based at $(t,x)$ whose slope is $f(t,x)$. And we draw arrows
representing these vectors (for *some* points).

Now we can approximate solutions by drawing curves with the required
tangent lines.

## An example

::: incremental

- Consider for example the ODE $x' = xt$:

- Here we've drawn solutions with $x(-2)=4$ and $x(-2)=-4$.

  :::{.image-container}
  [![ref-xt-sols]](week02-images/xt-sols.png){ width=50% }
  :::

[ref-xt-sols]: week02-images/xt-sols.png "Solutions"

:::

## isoclines 

::: incremental

- An *isocline* for the ODE $x' = f(t,x)$ is a curve in the plane on
  which the function $f$ is *constant*.
  
- so we find isoclines by graphing solutions to $f(t,x) = m$. In our
  graph, the arrows (vectors) whose basepoints lie on the isocline all
  have slope $m$.

- In particular, if the graph of a solution $x$ intersects an isocline
  $f(t,x) = k$ at some point $(t_0,x_0)$, then $x'(t_0) = k$.

:::

## example including isoclines

::: incremental 

- consider again the ODE $x' = tx$

-  let's consider isoclines with slopes $m=0,1,-1$.
  
  - $m=0$  corresponds to solutions of $tx = 0$
  - $m=1$  corresponds to the hyperbola $x = \dfrac{1}{t}$.
  - $m=-1$ corresponds to the hyperbola $x = \dfrac{-1}{t}$.

:::

------


:::{.image-container}
[![ref-xt-sols-iso]](week02-images/xt-sols-iso.png){ width=50% }
:::

[ref-xt-sols-iso]: week02-images/xt-sols-iso.png

Notice that the isocline for $m=0$ -- i.e. curve "C" -- intersects the
solutions "A" and "B" at their relative extrema.

## another example

Consider the ODEs

$$x' = x - .3(t-2)(t+1)$$


- The isocline with $m=0$ is just the graph of $x = .3(t-2)(t+1)$. 

- In the following graph, we indicate solutions with 
  $$x(-3) = 1.6, \quad x(-3) = 1.5, \quad \text{and} \quad x(-3) = 1.46.$$


-----

:::{.image-container}
[![ref-quad-sols-iso]](week02-images/quad-sols-iso.png){ width=50% }
:::

[ref-quad-sols-iso]: week02-images/quad-sols-iso.png

- Notice that the isocline with $m=0$ intersects the solutions at
  relative extrema.

