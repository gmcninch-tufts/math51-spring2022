---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 3 Mon \
  Existence & Uniqueness; Linear ODEs
date: 2022-01-31
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 1.6 and 2.2].

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
  [![ref-xt-sols]](images/xt-sols.png){ width=50% }
  :::

[ref-xt-sols]: images/xt-sols.png "Solutions"

:::

## The existence and uniqueness theorem

::: incremental

- The previous diagram "illustrates" the existence and uniqueness theorem.

- for the chosen point $(-2,4)$, the red curve is the graph of the
  unique solution $x$ to the ODE that satisfies $x(-2) = 4$.

- 

  :::{.image-container}
  [![ref-xt-sols]](images/xt-sols.png){ width=50% }
  :::

  [ref-xt-sols]: images/xt-sols.png "Solutions"


:::

<!-- ## isoclines  -->

<!-- ::: incremental -->

<!-- - An *isocline* for the ODE $x' = f(t,x)$ is a curve in the plane on -->
<!--   which the function $f$ is *constant*. -->
  
<!-- - so we find isoclines by graphing solutions to $f(t,x) = m$. In our -->
<!--   graph, the arrows (vectors) whose basepoints lie on the isocline all -->
<!--   have slope $m$. -->

<!-- - In particular, if the graph of a solution $x$ intersects an isocline -->
<!--   $f(t,x) = k$ at some point $(t_0,x_0)$, then $x'(t_0) = k$. -->

<!-- ::: -->

<!-- ## example including isoclines -->

<!-- ::: incremental  -->

<!-- - consider again the ODE $x' = tx$ -->

<!-- -  let's consider isoclines with slopes $m=0,1,-1$. -->
  
<!--   - $m=0$  corresponds to solutions of $tx = 0$ -->
<!--   - $m=1$  corresponds to the hyperbola $x = \dfrac{1}{t}$. -->
<!--   - $m=-1$ corresponds to the hyperbola $x = \dfrac{-1}{t}$. -->

<!-- ::: -->

<!-- ------ -->


<!-- :::{.image-container} -->
<!-- [![ref-xt-sols-iso]](images/xt-sols-iso.png){ width=50% } -->
<!-- ::: -->

<!-- [ref-xt-sols-iso]: images/xt-sols-iso.png -->

<!-- Notice that the isocline for $m=0$ -- i.e. curve "C" -- intersects the -->
<!-- solutions "A" and "B" at their relative extrema. -->

## another example

Consider the ODE

$$x' = x - .3(t-2)(t+1)$$

::: incremental

- Notice that the slopes of solutions are always 0 on the
  curve given by
  
  $$0 = x - .3(t+2)(t+1) \quad \text{i.e.} \quad x = .3(t+2)(t+1).$$

- In the following graph, we indicate solutions with 
  $$x(-3) = 1.6, \quad x(-3) = 1.5, \quad \text{and} \quad x(-3) = 1.46.$$

- as well as the graph of $x = .3(t+2)(t+1)$.

:::





-----

:::{.image-container}
[![ref-quad-sols-iso]](images/quad-sols-iso.png){ width=50% }
:::

[ref-quad-sols-iso]: images/quad-sols-iso.png

- Notice that the graph of $x = .3(t+2)(t+1)$ intersects solutions
  at *relative extrema*.



# Linear Ordinary Differential Equations

## Some definitions

::: incremental

- An $n$-th order ODE is *linear* if it can be written in the form

  $$(\heartsuit) \quad a_n(t) \dfrac{d^n x}{dt^n} + \cdots + a_1(t) \dfrac{dx}{dt} + a_0(t) x = E(t)$$

  for functions $a_0(t),a_1(t),\dots,a_n(t)$ and $E(t)$; the $a_i$ are
  called the *coefficients* of the equation.
  
- the linear equation $(\heartsuit)$ is *homogeneous* if $E(t) = 0$.

- of course, this matches our definition from last week for linear
  *first order* equations (i.e. the case $n=1$).

- the linear equation $(\heartsuit)$ is *normal* if there is some
  interval $I = (\alpha,\beta)$ such that the functions $a_i$ and $E$
  are *continuous* on $I$ and for which the value $a_n(t)$ of the
  leading coefficient is never zero for $\alpha < t < \beta$.

:::

## Example: springs and Hooke's Law:

Hooke's Law states that:

> a spring stretched or squeezed from its natural length $L$ to length
> $L+x$ exerts a restoring force proportional to the displacement $x$.

. . .

In symbols: the restoring force $F_{\operatorname{spr}}$ is given by
$$F_{\operatorname{spr}} = -kx \quad \text{where $k>0$ is the spring constant}$$
and where $x$ is the *displacement*.

. . .

Note that when $x>0$ the force works to *shorten* the spring, so the
force is *negative*; since we have specified $k>0$, this explains the
*sign* in the equation above.

## Example: un-damped spring

Consider a mass of $m$ g moving along a horizontal track attached
to a wall at one end of the track by a spring with natural length $L$
cm and spring constant $k$ dynes/cm.

:::{.image-container}
![](images/spring.png)
:::

. . .

When the displacement of the mass is $x$ -- i.e. when the mass is $L +
x$ cm from the wall -- Hooke's law tells us that the spring exerts a force
of $F_{\operatorname{spr}} = -kx$ dynes.

. . .

On the other hand, Newton's second law of motion relates force to
acceleration as follows:
$$F = ma = m \dfrac{d^2x}{dt^2}.$$

---------

(continued: un-damped spring)

::: incremental
 
- Equation these two descriptions of the force on the mass leads to a
  second order linear ODE describing the position of the mass:
  $$m\dfrac{d^2x}{dt^2} + kx = 0.$$

- this is not the most general second order linear ODE, since the cofficient
  of $\dfrac{dx}{dt}$ in this equation is 0.

:::

## example: damped springs

In our previous spring model, let's introduce a force resisting the
motion of the mass. Consider a device acting as a *shock absorber*:

:::{.image-container}
![](images/damped-spring.png)
:::

. . .

The mass should be subject to a force that depends on its velocity and
opposes the spring force. The simplest model is *viscous damping* in
which the magnitude of the resisting force is proportional to the
velocity:

$$F_{\operatorname{damp}} = -b\dfrac{dx}{dt} \quad \text{where $b>0$
is the damping coeff.}$$

. . .

Now the *total force* $F_{\operatorname{tot}}$ on the mass is given by

$$F_{\operatorname{tot}} = F_{\operatorname{spr}} + F_{\operatorname{damp}} = -kx - b\dfrac{dx}{dt}.$$

-----

(continued: damped spring example)

::: incremental

- combining the previous expression for $F_{\operatorname{tot}}$ with
  Newton's second law as before, we find that the displacement $x = x(t)$ of the spring
  satisfies the homogeneous 2nd order linear ODE
  
  $$m \dfrac{d^2 x}{dt^2} + b\dfrac{dx}{dt} + kx = 0$$

  where $b$ is the *damping coefficient* and $k$ is the *spring constant*.

- notice that the coefficients $m,b,k$ are all *constant* functions of
  $t$ in this case.


- one of the tasks of our course is to learn how to solve linear ODEs
  with constant coefficients.

:::

## Solutions to $n$-th order linear ODEs

**Existence and uniqueness Theorem:** Consider an $n$-th order linear
ODE which is *normal* on the interval $I = (\alpha,\beta)$. If $t_0$
is a fixed value of $t$ in the interval $I$, and if
$\alpha_0,\dots,\alpha_{n-1}$ are $n$ given real numbers, there is a unique
solution $x = x(t)$ to the ODE for which

. . .

\begin{align*}
x(t_0) &= \alpha_0 \\ 
 x'(t_0) &= \alpha_1 \\
 x^{(2)}(t_0) &= \alpha_2 \\ 
 \vdots  \\
 x^{(n-1)}(t_0) &= \alpha_{n-1}.
\end{align*}

## Differential Operators: some new notation

::: incremental

- We write $D = \dfrac{d}{dt}$ for the *operator* of differentiation.
  Thus $Dx = \dfrac{dx}{dt} = x'.$

- Similarly, for $n \ge 1$ we write $D^n = \dfrac{d^n}{dt^n}$. Thus
  $D^nx = \dfrac{d^nx}{dt^n} = x^{(n)}.$


:::

------

(continued: notation)

::: incremental

- a *linear differential operator* is an expression of the form
  $$a_n(t)D^n + a_{n-1}D^{n-1} + \cdots + a_1(t)D + a_0$$
  and it can be applied to the function $x = x(t)$:
  \begin{align*}
  &(a_n(t)D^n + a_{n-1}(t)D^{n-1} + \cdots + a_1(t)D + a_0)[x] \\
  = &  a_n(t)D^nx + a_{n-1}(t)D^{n-1}x + \cdots + a_1(t)Dx + a_0x \\
  = & a_n(t)\dfrac{d^nx}{dt^n} + a_{n-1}(t)\dfrac{d^{n-1}x}{dt^{n-1}} + \cdots + a_1(t)\dfrac{dx}{dt} + a_0x 
  \end{align*}


- With this notation, typical linear ODE has the form

  $$(a_n(t)D^n + a_{n-1}(t)D^{n-1} + \cdots + a_1(t)D + a_0)x = E(t).$$
  
:::

-----

(continued: notation)

::: incremental


- We can even write $$L = a_n(t)D^n + a_{n-1}(t)D^{n-1} + \cdots +
  a_1(t)D + a_0$$
  

- when we apply $L$ to a function $x = x(t)$, the result is a function
  $L[x] = L[x(t)]$ of $t$.

- the linear ODE may be written simply $$L x = E(t) \quad \text{or} \quad L[x] = E(t).$$

- the *order* of $L$ is $n$ provided that $a_n(t) \ne 0$.

:::

## Example



Consider for instance $L = D^2 + tD + 1$:

::: incremental

- then $L [ \sin(t) ] = -\sin(t) + t\cos(t) +  \sin(t)$.

- $L$ is a *second order* linear differential operator.

- and $L[e^{2t}] = 4e^{2t} + 2te^{2t} + e^{2t}$.

:::




## Bibliography {.unnumbered}

::: {.refs}
:::
