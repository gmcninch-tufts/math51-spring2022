---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 4 Wed \
  Constant Coefficient ODEs -- Real Roots
date: 2022-02-09
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 2.5].

# Solutions to Homogeneous Linear Equations: Real Roots

## Linear Operators and their Characteristic Polynomial

Let $L$ be a *constant coefficient* linear differential operator. Thus
$\displaystyle L = \sum_{i=0}^n a_i D^i$ for real numbers $a_i$.

::: incremental
- Note that $D^2 + tD$ does not have *constant coefficients, whereas $D^3 + 3D - 2$ does.
- Of course, we can *compose* linear operators; e.g. $(L \circ D) x = L[Dx] = L[x'].$
- For example, let's observe that
  \begin{align*}
  (D^2 + D + 1) \circ D &= D^3 + D^2 + D \\ &= D \circ (D^2 + D + 1)
  \end{align*}
:::

---------

::: incremental
- For a constant cofficient linear diff op $L$ as above,  let's write
  $$P(r) = a_n r^n + a_{n-1} r^{n-1} + \cdots + a_1 r + a_0$$
  for the *polynomial* determined by the coefficients of $L$.

- We say that $P(r)$ is the *characteristic polynomial* of the linear
  operator $L$.  
  
- Now our observations about composition of constant-coefficient
  linear operators boils down to the following: 
  
  Suppose that $L_1$ and $L_2$ are linear operators and that $P_1(r)$
  and $P_2(r)$ are their characteristic polynomials. Then 
  $$\text{characteristic polynomial of } L_1 \circ L_2 = P_1(r)
  \cdot P_2(r),$$ i.e. it is the *product* of the characteristic polynomials.
  
:::

------

::: incremental
  
- We often just write $L_1 \cdot L_2$ or even just $L_1L_2$ for the
  composition $L_1 \circ L_2$ of linear differential operators.

- if $P(r)$ is the characteristic polynomial of $L$, we often write $L
  = P(D)$.


:::

## Roots of the characteristic polynomial

::: incremental
- suppose that $\lambda$ is a root of the characteristic polynomial
  $P(r)$ of the operator $L = P(D)$.

- then we can write $P(r) = Q(r) (r - \lambda)$ for some polynomial
  $Q(r)$. Then
  $L = Q(D) \circ (D - \lambda)$.

- example: if $P(r) = r^3 - 1$ then $\lambda = 1$ is a root, 
  and $r^3 - 1 = (r^2 + r + 1)(r-1)$.

- so we can think if $L = D^3 - 1$ as $L = (D^2 + D + 1)(D-1)$.

:::

-----

::: incremental

- remember: $\lambda$ is a root of the char poly $P(r)$ of the operator $L$.

- and $L = Q(D) \circ (D-r) = Q(D)(D-r)$.

- Set $h(t) = e^{\lambda t}$. Then $h(t)$ is a *solution* to the homogeneous
  ODE $$L[x] = 0.$$
  
- indeed, Then $$L[e^{\lambda t}] = Q(D) (D
  -\lambda)[e^{\lambda t}] =  Q(D) \left[ \dfrac{d e^{\lambda t}}{dt} -
  \lambda e^{\lambda t}\right] = Q(D)[0] = 0.$$

- Of course, $P(r)$ might have roots which are *complex numbers*
  $\lambda$; for the moment, we'll just focus on the case where $\lambda$ is
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
  these 3 functions generate the general solution (avoiding the need to appeal
  to the Wronskian test each time). 
- in any event, the general solution to $0 = L[x] = (D^3 - 2D^2 - 3D)x$
  is $$x = A + Be^{3t} + Ce^{-t}.$$ 

:::

## Multiple roots

::: incremental
- so far we've only see examples in which the characteristic
  polynomial only has *simple roots*.
- now consider for example the case $L = D^2 -2D +1 = (D-1)^2$. Thus the
  characteristic polynomial $P(r) = (r-1)^2$ has only one root
  $\lambda = 1$; this root occurs with *with multiplicity 2*.
  
- the observation on the preceding slides only provide us one solution
  to $Lx=0$, namely $h_1(t) = e^t$.

- But since $L$ is of 2nd order, we need two linearly indep solutions
  to generate the general solution to $Lx = 0$!

:::

------


::: incremental

- Let's consider the general situation of multiple roots. Suppose
  $\lambda$ is a root of $P(r)$ occuring with some multiplicity $k \ge
  2$.
  
- Thus there is a polynomial $Q(r)$ for which
  $$P(r) = Q(r)\cdot (r-\lambda)^k$$

- we'd like to somehow find $k$ linearly independent solutions to
  $L[X] = 0$ that "correspond" to the root $\lambda$.

:::

-----

::: incremental
- in order to find these other solutions, we re-use an idea form
  before. Namely, we seek solutions to $$(D-\lambda)^kx = 0$$ of the
  form $$e^{\lambda t} y$$ where $y$ is some unknown function of $t$.
  
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

## Exponential Shift Formula

::: incremental

- in the preceding discussion, we wrote down what is known as the
  *exponential shift formula*.
  
- Let's highlight its statement

- if $L = P(D)$ is a constant coefficient differential operator, and
  if $y=y(t)$ is any (sufficiently differentiable) function of $t$, we
  have:

  $$P(D)[e^{\lambda t}y] = P(D+\lambda)[y].$$
  
- For example,

  \begin{align*}
  (D+3)^2[e^{2t} \cos(t)] &= e^{2t} (D+2+3)^2[\cos(t)]  \\
  &= e^{2t} (D+5)^2[\cos(t)] \\
  &= e^{2t} (D^2 + 10D + 25)[\cos(t)] \\
  &= e^{2t} [ -\cos(t) -10\sin(t) + 25 \cos(t)] \\
  &= e^{2t} [ 24\cos(t) - 10\sin(t)]
  \end{align*}


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

::: {.refs}
:::
