---
author: George McNinch (Math 51 Fall 2021)
title: Week 3 - Linear ODES and the Wronskian
date: 2021-09-24
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture follows [@gutermanNitecki §2.1, 2.2, 2.3].

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
![](week03-images/spring.png)
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
![](week03-images/damped-spring.png)
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
  &(a_n(t)D^n + a_{n-1}(t)D^{n-1} + \cdots + a_1(t)D + a_0)x \\
  = &  a_n(t)D^nx + a_{n-1}(t)D^{n-1}x + \cdots + a_1(t)Dx + a_0x \\
  = & a_n(t)\dfrac{d^nx}{dt^n} + a_{n-1}(t)\dfrac{d^{n-1}x}{dt^{n-1}} + \cdots + a_1(t)\dfrac{dx}{dt} + a_0x 
  \end{align*}


- With this notation, typical lin ODE has the form

  $$(a_n(t)D^n + a_{n-1}(t)D^{n-1} + \cdots + a_1(t)D + a_0)x = E(t).$$
  
:::

-----

(continued: notation)

::: incremental


- We can even write $$L = a_n(t)D^n + a_{n-1}(t)D^{n-1} + \cdots +
  a_1(t)D + a_0$$
  

- when we apply $L$ to a function $x = x(t)$, the result is a function
  $Lx = (Lx)(t)$ of $t$.

- the linear ODE may be written simply $$L x = E(t).$$

- the *order* of $L$ is $n$ provided that $a_n(t) \ne 0$.

:::

## Example



Consider for instance $L = D^2 + tD + 1$:

::: incremental

- then $L [ \sin(t) ] = -\sin(t) + t\cos(t) +  \sin(t)$.

- $L$ is a *second order* linear differential operator.

- and $L e^{2t} = 4e^{2t} + 2te^{2t} + e^{2t}$.

:::

## What is meant by "Linear"

Consider a general linear differential operator $$L = a_n(t)D^n +
a_{n-1}(t)D^{n-1} + \cdots + a_1(t)D + a_0$$

The *reason* we say that $L$ is *linear* is because it satisfies the
following two conditions:

::: incremental

- for functions $x_1 = x_1(t)$ and $x_2 = x_2(t)$, we have
  $$L[x_1 + x_2] = Lx_1 + Lx_2.$$
  
- for a constant $c$ (i.e. a real number), and a function $x = x(t)$
  we have $$L[cx] = cLx.$$
  
:::

## Homogeneous linear ODEs

A linear ODE is *homogeneous* if it has the form $Lx = 0$.

If $Lx = E(t)$ is a linear ODE, the related homogeneous equation is
$Lx = 0$.

For example:

::: incremental
- The equation $$(D^3 + D + t)x = t^2 + 1$$ has related homogeneous equation
  $$(D^3 + D + t)x = 0.$$ 
  
- The equation $$(D^5 + D^3)x + x = (D^4 + tD^2)x$$ is already homogenous.
:::

## General properties of solutions to linear ODEs.

::: incremental

- Consider a linear ODE $\quad (\clubsuit) \quad Lx = E(t)$.

- S'pose we have a formula $H(t)$ for the sol to  corresp.
  homog eqn $Lx = 0$.
  
- And suppose that $p(t)$ is any solution to $Lx = E(t)$.

- then $x = p(t) + H(t)$ gives a formula for the general solution to
  the ODE $(\clubsuit)$.
:::

--------

(continued: properties of solutions)

::: incremental


- indeed: first notice that $$L[p(t) + H(t)] = Lp(t) + LH(t) = E(t) +
  0 = E(t)$$ which shows that $p(t) + H(t)$ is a solution to
  $(\clubsuit)$.
  
- on the other hand if $q(t)$ is any other solution to $(\clubsuit)$
  then $$L[p(t) - q(t)] = Lp(t) - Lq(t) = E(t) - E(t) = 0$$ so that
  $p(t) - q(t)$ is a homog sol hence is described by formula $H(t)$.


- we refer to $p(t)$ as a *particular solution*. 

- The point here is that to find the general solution to $Lx = E(t)$,
  we need the *general* homogeneous solution, and a *single particular
  solution*.

:::

## Example

Consider $D^2 x = 1$. A particular solution is $p(t) =
\dfrac{t^2}{2}$.  


. . .

The corresponding homogeneous equation $D^2 x = 0$
has general solution $H(t) = A + Bt$ for constants $A,B$ (you can firm
that this is the general solution by *antidifferentiating twice*).

. . .

Thus the general solution to $D^2 x = 1$ has the form $$x = p(t) +
H(t) = \dfrac{t^2}{2}+A+ Bt$$



# Solutions to homogeneous linear ODEs

## Homogeneous equations

Consider a homogeneous linear ODE $Lx = 0$.

::: incremental

- Suppose that $h_1(t), h_2(t), \cdots, h_n(t)$ are solutions to this homogeneous equation.

- Then for any constants $c_1,c_2,\dots,c_n$, the *linear combination*
  $$c_1 h_1(t) + c_2 h_2(t) + \cdots + c_n h_n(t) = \sum_{i=1}^n c_i h_i(t)$$
  is also a solution.
  
- Indeed: using the fact that $L$ is *linear* we find that
  \begin{align*} 
  L[c_1 h_1(t) + c_2 h_2(t) + \cdots + c_n h_n(t)] &= 
  c_1 L[h_1(t)] + c_2 L[h_2(t)] + \cdots + c_n L[h_n(t)]\\
  &= c_1 \cdot 0 + c_2 \cdot 0 + \cdots + c_n \cdot 0 \\
  &= 0.  \end{align*} 
  
:::

## describing solutions of a homog linear eqn

::: incremental
- As we observed above, if $h_1(t),\dots,h_n(t)$ are solutions to a
  homogeneous equation $Lx =0$, then we obtain a whole family of
  solutions $$(S) \quad x(t) = c_1 h_1(t) + c_2 h_2(t) + \cdots + c_n
  h_n(t),$$ where each choice of the constants $c_1,c_2,\dots,c_n$
  determines a different solution.

- If every solution is described by the formula $(S)$, we say that the
  functions $h_i(t)$ are a *complete set of solutions* for the
  homogeneous equation.

- important question: how to decide when $(S)$ describes the general
  solution??

- answer: existence and uniqueness theorem!

:::

----

::: incremental

- choose some fixed $t_0$. if $L$ is $n$-order then given values
  $\alpha_0,\dots,\alpha_{n-1}$ the existence and uniqueness theorem
  implies that there is a solution $x$ with

  \begin{align*}
  x(t_0) &= \alpha_0 \\ 
  x'(t_0) &= \alpha_1 \\
  \vdots  \\
  x^{(n-1)}(t_0) &= \alpha_{n-1}.
  \end{align*}
   
- if $(S)$ describes the general solution, there should be values
  $c_1,c_2,\dots,c_n$ such that
  $$x(t) = c_1 h_1(t) + c_2 h_2(t) + \cdots + c_nh_n(t)$$
  for all $t$.
:::

------

::: incremental

-  thus we have
  $$(\diamondsuit) \quad \begin{matrix}
  c_1 h_1(t_0) + c_2 h_2(t_0) + \cdots + c_nh_n(t_0) &=& \alpha_0 \\ 
  c_1 h_1'(t_0) + c_2 h_2'(t_0) + \cdots + c_nh_n'(t_0) &=& \alpha_1 \\
   \vdots & & \vdots \\
  c_1 h_1^{(n-1)}(t_0) + c_2 h_2^{(n-1)}(t_0) + \cdots + c_nh_n^{(n-1)}(t_0) &=& \alpha_{n-1}.
  \end{matrix}$$

- $(\diamondsuit)$ is a *system of $n$ linear equations* in the $n$
  unknowns $c_1,c_2,\dots,c_n$.

- the *coefficient matrix* of the system of equations $(\diamondsuit)$ is
  $$M=\begin{bmatrix}
  h_1(t_0) & h_2(t_0) & \cdots & h_n(t_0) \\
  h_1'(t_0) & h_2'(t_0) & \cdots & h_n'(t_0) \\
  \vdots & \vdots & \ddots & \vdots \\
  h_1^{(n-1)}(t_0) & h_2^{(n-1)}(t_0) & \cdots & h_n^{(n-1)}(t_0) \\
  \end{bmatrix}$$

:::

-----

::: incremental

- now, it follows from *Cramer's Rule* that the system of equations
  $(\diamondsuit)$ with coefficient matrix $M$ has a solution for all
  $\alpha_0,\alpha_1,\dots,\alpha_{n-1}$ if and only if the
  determinant $\det M$ is non-zero.
  
- this determinant
  $$W(h_1,\dots,h_n)(t) = 
  \det \begin{bmatrix}
  h_1(t) & h_2(t) & \cdots & h_n(t) \\
  h_1'(t) & h_2'(t) & \cdots & h_n'(t) \\
  \vdots & \vdots & \ddots & \vdots \\
  h_1^{(n-1)}(t) & h_2^{(n-1)}(t) & \cdots & h_n^{(n-1)}(t) \\
  \end{bmatrix}$$
  is called the *Wronskian* of the functions $h_1,\dots,h_n$.

- we'll talk more in the smaller lecturers, and in recitation, about
  how to compute determinants.

:::

## Summary: Wronskian test for homog. sols 

Let $L x = 0$ be an $n$-th order homog. linear ODE that is normal
on some interval, and let $t_0$ be a point in this interval.

If $h_1(t),\dots,h_n(t)$ are solutions, then the $h_i$ generate the
general solution to $Lx = 0$ if and only if $$W(h_1,\cdots,h_n)(t_0)
\ne 0.$$

Thus if $W(h_1,\cdots,h_n)(t_0) \ne 0$, then every solution to $Lx =
0$ has the form $$x = c_1h_1(t) + \cdots + c_nh_n(t)$$ for some constants
$c_1,\dots,c_n$.


## Applications of Wronskian test

Consider the 3rd order eqn $(D^3 + D^2)x = 0$. Notice $h_1 = 1$, $h_2
= t$ and $h_3 = 2t+3$ are sols.

. . .

The Wronskian at $t$ is
$$W(1,t,2t+3)(t) = \det\begin{bmatrix}
1 & t & 2t + 3 \\
0 & 1 & 2 \\
0 & 0 & 0
\end{bmatrix}
= 0.$$

(any square matrix with a row of all 0's has determinant 0).

. . .

Since this Wronskian is 0 *for all values of $t$*, conclude that the
indicated functions *do not generate the general solution*.
  
## Applications of Wronskian test {#applications}

Let's again consider the 3rd order eqn $(D^3 + D^2)x = 0$. **Now**
notice that $h_1 = 1$, $h_2 = t$ and $h_3 = e^{-t}$ are sols.

. . .

The Wronskian at $t=0$ is
\begin{align*}
W(1,t,e^{-t})(0) &= \det\begin{bmatrix}
1 & t & e^{-t} \\
0 & 1 & -e^{-t} \\
0 & 0 & e^{-t}
\end{bmatrix}\Bigg \vert_{t=0}
= \det\begin{bmatrix}
1 & 0 & 1 \\
0 & 1 & -1 \\
0 & 0 & 1
\end{bmatrix} \\
&= 1 \det \begin{bmatrix}
  1 & -1 \\
  0 & 1
\end{bmatrix} 
- 0 \det \begin{bmatrix}
0 & -1 \\
0 & 1
\end{bmatrix}
+ 1 \det \begin{bmatrix}
0 & 1 \\
0 & 0 
\end{bmatrix}
= 1 \cdot 1 - 0 + 0 = 1.
\end{align*}


. . .

Thus $h_1,h_2,h_3$ generate the general solution, i.e. the general solution has the form
$$x = a + bt + ce^{-t}$$
for constants $a,b,c$.

# Bibliography {.unnumbered}

::: {#references}
:::
