---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 2 Wednesday \
  First order linear ODEs
date: 2022-01-26
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 1.3].

# First-order linear ODEs

## First, an example

Consider the first order linear ODE
$\quad \quad (\diamondsuit) \quad x' + x = t+1.$

To solve this ODE, we proceed as follows:

::: incremental

- we first solve the corresponding *homogeneous* equation 
  $x' + x = 0.$

- here we use the method of *separation of variables*; we find that
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
  form $x(t) = k(t)e^{-t}$, where $k$ is a function depending on
  $t$ (rather than a constant)

- choosing $k=k(t)$ as a function of $t$ is often referred to as
  *variation of parameters*.

- "explanation" for our guess: remember we are solving $(\diamondsuit)
  \quad x' + x = t+1$.  Over a very short interval of time $\Delta
  t$, we can view the quantity $t+1$ as essentially constant. On a
  small $t$-interval, we can approximate the solution to
  $(\diamondsuit)$ with a homogeneous solution $kh(t)$ for a suitable
  $k$. Since this $k$ will depend on the relevant interval, we are led
  to guess that $k$ should depend on $t$.

- but, explanations aside, in the end we are going to exhibit proposed
  solutions to the ODE, and *check that they work*. (So in some real
  sense, it doesn't matter how we guessed the correct form).

:::

------

(continued...)

::: incremental

- To find the condition on $k(t)$ for which $x=k(t)h(t)$ solves
  $(\diamondsuit)$, we first compute

  \begin{align}
  x' + x &= \dfrac{d}{dx}(k(t) e^{-t}) + k(t)e^{-t} \\
  &= k'(t) e^{-t} - k(t)e^{-t} + k(t)e^{-t} \\
  &= k'(t) e^{-t}
  \end{align}

  


- Now we need $x' + x = t+1$, i.e.
  $$k'(t)e^{-t} = t+1 \quad \implies \quad k'(t) = (t+1)e^{t}.$$

- Thus 
  \begin{align}
  k(t) &= \int (t+1)e^tdt = \int (e^t + te^t)dt \\
  &= e^t + \int te^t dt = e^t + te^t - e^t + C \\
  &= te^t + C
  \end{align}


:::

------

::: incremental

- using the condition
  \begin{align}
  k(t) = te^t + C
  \end{align}
  that we just found,
- one can now check that $$x(t) = k(t) h(t) = (te^t + C)e^{-t} = t +
  Ce^{-t}$$ gives a solution to $(\diamondsuit)$ for all constants
  $C$.

:::

## Some definitions

The method used in the preceding example works for a general class of
equations, namely *first-order linear ODEs which are normal*. We need
to define this terminology

::: incremental


- A first-order linear ODE has the form $$(\heartsuit) \quad \alpha(t)
  \dfrac{dx}{dt} + \beta(t) x = E(t)$$ for functions $\alpha,\beta,E$
  of $t$. Note that $\alpha,\beta,E$ are functions of  $t$ but
  not of $x$.


- for example,  $x\dfrac{dx}{dt} + x^2 = t$ is first order, but *not linear*

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

- now our job is to *find the functions $k(t)$* for which $x$ is a solution.

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
        &= e^{R(t)} Q(t)
  \end{align}

- we now find $k(t)$ by anti-differentiation

  $$k(t) = \int k'(t) dt = \int  e^{R(t)} Q(t) dt$$

- We have now showed that the general solution to our first order ODE
  is given by $$x(t) = k(t) h(t) = k(t) e^{-R(t)}.$$

- note that the constant of integration that arises when finding
  $k(t)$ provides the expected *parameter* for the general solution to
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

## Example

::: incremental

- Let's find the solution to $x' + \dfrac{1}{t} x = e^t; t>0$ for which $x(1) = 2$.

- We first solve the homog. equation $x' + \dfrac{1}{t} x = 0; t>0$. We find that

  \begin{align*}
  \dfrac{1}{x} dx = - \dfrac{1}{t} dt \implies & \int \dfrac{1}{x} dx = - \int \dfrac{1}{t} dt \\
  \implies & \ln |x| = - \ln |t|  + C \\
  \implies & |x| = e^C e^{-\ln|t|} = e^C (|t|)^{-1} = \dfrac{e^C}{|t|}
  \end{align*}

- since we only consider $t>0$, we find that $|x| = \dfrac{e^C}{t}$ so that
  $x = \dfrac{\pm e^C}{t}$
  
  and we can choose for homogeneous solution the function $h(t) = \dfrac{1}{t}$.

:::

--------

::: incremental

- we now seek solutions $x(t) = k(t) h(t) = \dfrac{1}{t} k(t)$.

- we need $k'(t) = h(t)^{-1} q(t) = h(t)^{-1} e^t = te^t.$

- and we find $k(t)$ by integration (where we integrate by parts in this case, with
  $u =t$ and $dv = e^t dt$):

  \begin{align*}
  k(t) &= \int k'(t)dt = \int te^t dt \\
  &= te^t - \int e^t dt \\
  &= (t-1)e^t + C
  \end{align*}
  
- thus the *general solution* is given by $$x(t) = h(t)k(t) = \dfrac{1}{t}((t-1)e^t + C)$$

:::

-----

::: incremental

- we now use the *general solution* $$x(t) = h(t)k(t) =
  \dfrac{1}{t}((t-1)e^t + C)$$ to find the solution to the given
  *initial value problem*

- to find the solution with $x(1) = 2$, we solve for $C$:

  $$2 = x(1) = \dfrac{1}{1} ((1-1)e^1 + C) = C$$
  
- thus the required solution is

  $$x(t) = \dfrac{1}{t}((t-1)e^t + 2)$$

:::




## Bibliography {.unnumbered}

::: {.refs}
:::
