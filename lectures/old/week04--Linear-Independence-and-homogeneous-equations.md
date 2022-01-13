---
author: George McNinch (Math 51 Fall 2021)
title: Week 4 - Linear Independence and Homogeneous Equations
date: 2021-10-01
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture follows [@gutermanNitecki §2.4 and 2.5].

# Linear Independence of Functions

## Overview

In a previous lecture, we argued that if $h_1(t),\cdots,h_n(t)$ are
solutions to an $n$-th order homogeneous linear ODE $Lx = 0$ on the
interval $I$, these functions *generate the general solution* provided
that the *Wronskian*
$$W(h_1,\dots,h_n)(t_0) = \det \begin{bmatrix}
h_1(t_0) & h_2(t_0) & \cdots & h_n(t_0) \\
h_1'(t_0) & h_2'(t_0) & \cdots & h_n'(t_0) \\
\vdots & \vdots & \ddots & \vdots \\
h_1^{(n-1)}(t_0) & h_2^{(n-1)}(t_0) & \cdots & h_n^{(n-1)}(t_0) \\
\end{bmatrix}$$
is non-zero for some $t_0$ in the interval $I$.

. . .

We are now going to argue that the Wronskian is detecting a more
fundamental property of the functions $h_1(t),\dots,h_n(t)$.

## Linear dependence

::: incremental
- Consider a  whole number $n \ge 1$ and $n$ functions $f_1(t),\dots,f_n(t)$
  defined on some interval $I$

- we say that the functions $f_1(t),\dots,f_n(t)$ are *linearly
  dependent* provided that there are constants $c_1,\cdots,c_n$ such
  that at least one $c_i$ is non-zero and such that $$0 = c_1f_1(t) +
  c_2f_2(t) + \cdots + c_nf_n(t) = \sum_{i=1}^n c_i f_i(t)$$ for all
  values of $t$ in the interval $I$.

- in words, "the $f_i(t)$ are linearly dependent if some non-trivial
  linear combination of the $f_i(t)$ is equal to $0$".

:::

## Examples of linear dependence

::: incremental
- The polynomials $1, t+1, 2t+3$ are linearly dependent.
  Indeed,
  $$1 \cdot (2t+3) - 2\cdot (t+1) + (-1) \cdot 1 = 0.$$
  
- The functions $f_1(t) = 1, f_2(t) = \sin^2(t), f_3(t) = \cos^2(t), f_4(t) = t$ are linearly dependent.
  Indeed,
  $$f_2(t) + f_3(t) - f_1(t) + 0 \cdot f_4(t) = \sin^2(t) + \cos^2(t) - 1 = 0.$$

:::

## Linear independence

::: incremental
- The functions $f_1(t),\cdots,f_n(t)$ are *linearly independent* on
  the interval $I$ provided that they are not linearly dependent on
  $I$.

- to argue that the $f_i(t)$ are linearly independent, one must argue
  that if $$0 = c_1f_1(t) + \cdots + c_nf_n(t)$$ then it must be the
  case that $c_1 = c_2 = \cdots = c_n = 0$.

:::

## Example of linear independence

::: incremental
- Example: the functions $f_1(t) = 1$, $f_2(t) = t-1$, and $f_3(t) =
  e^{4t}$ are linearly independent.
  
- Indeed, suppose that
  $$0 = c_1  + c_2(t-1) + c_3 e^{4t}.$$

- applying $D^2 = \dfrac{d^2}{dt^2}$ to each side, one finds that $0 =
  4^2 c_3 e^{4t}$ for all $t$, and thus $c_3 = 0$.

- now $0 = c_1 + c_2(t-1) = c_1-c_2 + c_2 t$. Again, applying the
  operator $D$ we find that $c_2 = 0$.

- finally, we are left with the equation $0 = c_1 \cdot 1 = c_1$, and
  we have thus argued that $c_1 = c_2 = c_3 = 0$. This shows that
  $f_1(t),f_2(t),f_3(t)$ are *linearly independent*.

:::

## Wronskian test for linear indep
If $f_1(t),\cdots,f_n(t)$ are lin
dependent on interval $I$, then there are consts
$c_1,\cdots,c_n$ with $c_i \ne 0$ for at least one $i$ such that $$0 =
c_1f_1(t) + c_2f_2(t) + \cdots + c_nf_n(t).$$ 

. . .

Applying $D,D^2,\cdots$ in turn, one finds that the system of linear
equations 
$$(\clubsuit) \quad \left \{\begin{matrix} 
0 &= & c_1f_1(t) + c_2f_2(t) + \cdots + c_nf_n(t) \\ 
0 &= & c_1f_1'(t) + c_2f_2'(t) + \cdots + c_nf_n'(t) \\ 
& \vdots & \\ 
0 &= & c_1f_1^{(n-1)}(t) + c_2f_2^{(n-1)}(t) + \cdots + c_nf_n^{(n-1)}(t) \\ 
\end{matrix} \right .$$ has a solution with
$$\begin{bmatrix} c_1  \\ \vdots \\ c_n \end{bmatrix} \ne \vec
0 \quad \text{i.e.} \quad \begin{bmatrix} c_1  \\ \vdots \\ c_n \end{bmatrix} \ne 
\begin{bmatrix} 0 \\ \vdots \\ 0 \end{bmatrix}.$$

-----------

Now, a Theorem in *linear algebra* tells us that since the system of equations
$(\clubsuit)$ has a non-trivial solution, the determinant of its coefficient matrix 
$$\begin{bmatrix}
f_1(t) & f_2(t) & \cdots & f_n(t) \\
f_1'(t) & f_2'(t) & \cdots & f_n'(t) \\
\vdots & \vdots & \ddots & \vdots \\
f_1^{(n-1)}(t) & f_2^{(n-1)}(t) & \cdots & f_n^{(n-1)}(t) \\
\end{bmatrix}$$
is equal to 0 for every value $t$.

. . .

Thus, we have shown that if $f_1(t),\cdots,f_n(t)$ are linearly
dependent, then the Wronskian $W(f_1,\cdots,f_n)(t)$ is equal to
$0$ for all $t$.

---------------

The preceding result is usually formulated as follows, and is known as
the Wronskian test for linear independence.

**Theorem:** Let $f_1(t),f_2(t),\cdots,f_n(t)$ be functions on an
interval $I$. If for some $t_0$ in $I$ the Wronskian satisfies
$$W(f_1,f_2,\cdots,f_n)(t_0) \ne 0,$$ then the functions
$f_1(t),\cdots,f_n(t)$ are *linearly independent* on $I$.

## Ex: application of Wronskian test

::: incremental
- Let's again consider the functions $f_1(t) = 1$, $f_2(t) = t-1$, and
  $f_3(t) = e^{4t}$. We already showed they are lin. independent using
  the definition. Let's instead show their linear independence using
  the Wronskian test.
  
- let's compute the Wronskian of these functions at $t_0 = 0$:
  \begin{align*}
  W(1,t-1,e^{4t})(0) =& \det \begin{bmatrix}
  1 & t-1 & e^{4t} \\
  0 & 1 & 4e^{4t} \\
  0 & 0 & 16e^{4t}
  \end{bmatrix} \Bigg \vert_{t=0} \\
  =& \det \begin{bmatrix}
  1 & -1 & 1 \\
  0 & 1 & 4 \\
  0 & 0 & 16
  \end{bmatrix} = 16 \ne 0
  \end{align*}

- Thus the Wronskian test shows that $1,t-1,e^{4t}$ are linearly
  independent on $\mathbb{R} = (-\infty,\infty)$
  
:::

## Solutions for homogeneous linear ODEs, revisited


Let $L$ be an $n$-th order linear differential operator, and let
$h_1(t),\dots,h_n(t)$ be solutions to the homogeneous linear ODE $Lx =
0$.

**Theorem**: The functions $h_1(t),\dots,h_n(t)$ generate the general
solution to $Lx = 0$ if and only if $h_1(t),\dots,h_n(t)$ are
*linearly independent*.

. . .

This result was previously formulated using the Wronskian test. But
the linear independence is the crucial property.

# Solutions to Homogeneous Linear Equations: Real Roots

## Linear Operators and their Characteristic Polynomial

Let $L$ be a *constant coefficient* linear differential operator. Thus
$\displaystyle L = \sum_{i=0}^n a_i D^i$ for real numbers $a_i$.

::: incremental
- Of course, we can *compose* linear operators; e.g. $(L \circ D) x = L[Dx] = L[x'].$
- For example, let's observe that
  \begin{align*}
  (D^2 + D + 1) \circ D &= D^3 + D^2 + D \\ &= D \circ (D^2 + D + 1)
  \end{align*}
- For a constant cofficient linear diff op $L$ as above,  let's write
  $$P(r) = a_n r^n + a_{n-1} r^{n-1} + \cdots + a_1 r + a_0$$
  for the *polynomial* determined by the coefficients of $L$.
:::

---------

::: incremental
- We say that $P(r)$ is the *characteristic polynomial* of the linear
  operator $L$.  
  
- Now our observations about composition of constant-coefficient
  linear operators boils down to the following: 
  
  Suppose that $L_1$ and $L_2$ are linear operators and that $P_1(r)$
  and $P_2(r)$ are their characteristic polynomials. Then the
  characteristic polynomial of $L_1 \circ L_2$ is equal to $P_1(r)
  P_2(r)$, i.e. it is the *product* of the characteristic polynomials.
  
- We often just write $L_1 \cdot L_2$ or even just $L_1L_2$ for the
  composition $L_1 \circ L_2$ of linear differential operators.

- we often write $L = P(D)$.

:::

## Roots of the characteristic polynomial

::: incremental
- suppose that $\lambda$ is a root of the characteristic polynomial
  $P(r)$ of the operator $L = P(D)$.

- then we can write $P(r) = Q(r) (r - \lambda)$ for some polynomial
  $Q(r)$. Then
  $L = Q(D) \circ (D - \lambda)$.

- now consider $h(t) = e^{\lambda t}$. Then $$L[h(t)] = (Q(D) \circ (D
  -\lambda))[e^{\lambda t}] =  Q(D) \left[ \dfrac{d e^{\lambda t}}{dt} -
  \lambda e^{\lambda t}\right] = Q(D)[0] = 0.$$

- thus $h(t) = e^{\lambda t}$ is a *solution* to the homogeneous equation $Lx = 0$.

- Of course, $P(r)$ might have roots which are *complex numbers*
  $\lambda$; for now, we'll just focus on the case where $\lambda$ is
  a *real root* of $P(r)$.

:::

## Example

::: incremental
- Let $L = D^3 - 2D^2 - 3D$ and consider the ODE $Lx = 0$.
- The characteristic polynomial is 
  $$P(r) = r^3 - 2r^2  -3r = r(r^2 - 2r -3) = r(r-3)(r+1).$$
- The roots of the char. poly are $\lambda = 0,3,-1$.
- Thus  $Lx=0$ has solutions $h_1(t) = e^{0t} = 1$, $h_2(t) = e^{3t}$ and $h_3(t) = e^{-t}$.
- You can check using the Wronskian test that $h_1,h_2,h_3$ generate the general solution
  to $Lx = 0$.
- However, we'll state a result below that immediately implies that
  these 3 functions generate the general solution (avoiding an appeal
  to the Wronskian test).  
- in any event, the general solution to $0 = Lx = (D^3 - 2D^2 - 3D)x$ is
  $$x = A + Be^{3t} + Ce^{-t}.$$
:::

## Multiple roots

::: incremental
- consider for example the case $L = D^2 -2D +1 = (D-1)^2$. Thus the
  characteristic polynomial $P(r) = (r-1)^2$ has only one root
  $\lambda = 1$; this root occurs with *with multiplicity 2*.
  
- the observation on the preceding slides only provide us one solution
  to $Lx=0$, namely $h_1(t) = e^t$.

- But since $L$ is of 2nd order, we need two linearly indep solutions
  to generate the general solution to $Lx = 0$!

- Let's consider this problem in general. Suppose $\lambda$ is a root
  of $P(r)$ occuring with some multiplicity $k \ge 2$.
  
- Thus there is a polynomial $Q(r)$ for which
  $$P(r) = Q(r)\cdot (r-\lambda)^k$$

- we'd like to find $k$ linearly independent solutions that somehow
  correspond to the root $\lambda$.

:::

-----

::: incremental
- in order to find these other solutions, we re-use an idea form
  before. Namely, we seek solutions to $(D-\lambda)^kx = 0$ of the
  form $e^{\lambda t} y$ where $y$ is some unknown function of $t$.
  
- differentiating and using the product rule, we find that
  $$D[e^{\lambda t}y] = e^{\lambda t}Dy + \lambda e^{\lambda t} y =
  e^{\lambda t}(D+\lambda)y.$$
  
- differentiating again, we find that
  $$D^2[e^{\lambda t}y]  = D[e^{\lambda t}(D+\lambda)y]
  = e^{\lambda t}(D+\lambda)(D+\lambda)y = e^{\lambda t} (D+\lambda)^2 y$$
  
- continuing in this way, we find for all $m \ge 1$ that
  $$D^m[e^{\lambda t}y] = e^{\lambda t} (D+\lambda)^m y.$$
  
:::

------------

::: incremental

- It is now straightforward to see for any linear differential
  operator $L=P(D)$ with constant coefficients that $$P(D)[e^{\lambda
  t}y] = e^{\lambda t}P(D+\lambda)y.$$
  
- Let's apply this with $P(D) = (D-\lambda)^k$.

- The formula shows that
  $(D-\lambda)^k[e^{\lambda t}y] = e^{\lambda t}(D+\lambda - \lambda)^ky =
  e^{\lambda t}D^ky$
  
- thus we need $y$ to be a solution to $D^ky = 0$. The general
  solution to $D^ky =0$ is generated by $1,t,t^2,\cdots,t^{k-1}$.

- And in turn we find that the functions $$(\heartsuit) \quad
  e^{\lambda t} \quad , \quad te^{\lambda t} \quad , \quad t^2
  e^{\lambda t} \quad , \quad \cdots \quad , \quad t^{k-1} e^{\lambda
  t}$$ generate the general solution to $(D-\lambda)^kx = 0$.

- in particular, the functions $(\heartsuit)$ are *linearly independent*
:::


---------


- returning to our previous example, we now see that the general
  solution to $(D-1)^2 x = 0$ has the form
  $$x = A\cdot e^t + B \cdot te^{t} \quad \text{for constants $A,B$}.$$



--------

**Proposition:** Let $\lambda_1,\lambda_2,\dots,\lambda_d$ be distinct
real numbers. Then the functions
$$t^i \cdot e^{\lambda_j t}$$
for $1 \le j \le d$ and $0 \le i$ are linearly independent.

------------

::: incremental

- If $P(r)$ has degree $d$, the proposition enables us now to describe
  the general solution to $P(D)x =0$ whenever $P(r)$ has $d$ real
  roots.

- Consider the ODE $(D-4)^2(D+1)^3x  = (D+1)^3(D-4)^2x =  0$.

- The general solution is generated by the functions
  $$e^{4t}, te^{4t}, e^{-t}, te^{-t}, t^2e^{-t}.$$

- indeed, these 5 functions are solutions to the ODE, and they are
  linearly indep by the Proposition.

:::

## Springs, revisited

Let's recall our *damped spring model*:

:::{.image-container}
![](images/damped-spring.png)
:::

Remember that the position of the object (measured in cm from the
natural length of the spring) is given as a function of $t$ by $x(t)$,
and $x$ is a solution to the 2nd order linear homogeneous ODE

$$(\clubsuit) \quad (mD^2 + bD + k)x = 0$$

where $m$ is the *mass* of the object, $b$ is the *damping
coefficient* and $k$ is the *spring constant*.

------------

So the characteristic polynomial is

$$P(r) = mr^2 + br + k.$$

. . .

Using the quadratic formula, we see that $P$ has roots

$$\lambda = \dfrac{-b + \sqrt{b^2 -4mk}}{2m} \quad \text{and} \quad
\mu = \dfrac{-b - \sqrt{b^2 -4mk}}{2m}$$

. . .

The roots $\lambda,\mu$ are *real numbers* provided that $b^2 \ge
4mk$.

If $b^2 >
4mk$, the general solution to the ODE is given by

$$x = a \cdot e^{\lambda t}  + b \cdot e^{\mu t}.$$

If $b^2 = 4mk$, then $\lambda = \mu = -b/2m$.

Then the general solution is

$$x = a \cdot e^{\lambda t} + b \cdot te^{\lambda t}$$

## Bibliography {.unnumbered}

::: {#references}
:::
