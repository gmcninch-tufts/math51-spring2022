---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 4 Mon \
  Linear Independence of Functions
date: 2022-02-07
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 2.4 ].

# Linear Independence of Functions

## Overview

::: incremental

- Last week, we argued that if $h_1(t),\cdots,h_n(t)$ are solutions to
  an $n$-th order homogeneous linear ODE $Lx = 0$ on the interval $I$,
  these functions *generate the general solution* provided that the
  *Wronskian* $$W(h_1,\dots,h_n)(t_0) = \det \begin{bmatrix} h_1(t_0)
  & h_2(t_0) & \cdots & h_n(t_0) \\ h_1'(t_0) & h_2'(t_0) & \cdots &
  h_n'(t_0) \\ \vdots & \vdots & \ddots & \vdots \\ h_1^{(n-1)}(t_0) &
  h_2^{(n-1)}(t_0) & \cdots & h_n^{(n-1)}(t_0) \\ \end{bmatrix}$$ is
  non-zero for some $t_0$ in the interval $I$.

- i.e. if $W(h_1,\dots,h_n)(t_0) \ne 0$, then the *general solution*
  to $Lx = 0$ is given by $$x(t) = c_1 h_1(t) + c_2 h_2(t) + \cdots +
  c_n h_n(t)$$ for arbitrary constants $c_1,c_2,\cdots,c_n$.


:::


-----

We are now going to argue that the Wronskian is detecting a more
fundamental property of the functions $h_1(t),\dots,h_n(t)$ known as
*linear independence*.



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
  that it is *impossible* to write $0$ as an "interesting" linear combination
  of $f_1(t),\dots,f_n(t)$.
  
- more precisely, to show that the $f_i(t)$ are linearly independent,
  one must argue that whenever $$0 = c_1f_1(t) + \cdots + c_nf_n(t)$$
  (for every value of $t$) then it must be the case that $c_1 = c_2 =
  \cdots = c_n = 0$.

:::

## Example of linear independence

::: incremental
- Example: the functions $f_1(t) = 1$, $f_2(t) = t-1$, and $f_3(t) =
  e^{4t}$ are linearly independent.
  
- Indeed, suppose that
  $$0 = c_1  + c_2(t-1) + c_3 e^{4t}.$$

- applying $D^2 = \dfrac{d^2}{dt^2}$ to each side, one finds that $$0 =
  4^2 c_3 e^{4t}$$ for all $t$, and thus $c_3 = 0$.

- now we know that $0 = c_1 + c_2(t-1) = c_1-c_2 + c_2 t$. Applying the
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
the *Wronskian test for linear independence*.

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

## Linear independence and *solutions to linear ODEs*

Let $L$ be an $n$-th order linear differential operator, and let
$$h_1(t),\dots,h_n(t)$$ be solutions to the homogeneous linear ODE $$Lx =
0.$$

. . . 

**Theorem**: The functions $h_1(t),\dots,h_n(t)$ generate the general
solution to $Lx = 0$ if and only if $h_1(t),\dots,h_n(t)$ are
*linearly independent*.

. . .

This result was previously formulated using the Wronskian test. But
the linear independence is the crucial property.


## Solutions and linear independence -- a remark

::: incremental

- Consider functions $f_1(t),f_2(t),f_3(t)$ on the interval
  $(-\infty,\infty)$.  It is possible that $$W(f_1,f_2,f_3)(t_0) \ne 0
  \quad \text{while} \quad W(f_1,f_2,f_3)(t_1) = 0$$ for $t_0 \ne
  t_1$. The Wronskian test nevertheless guarantees that $f_1,f_2,f_3$ are
  linearly independent.

- Consider for example $f_1(t) = t$, $f_2(t) = t^2$ and $f_3(t) = t^3$:
  
  - Then $W(t) = W(t,t^2,t^3)(t) = \det \begin{bmatrix} t & t^2 &
    t^3 \\ 1 & 2t & 3t^2 \\ 0 & 0 & 6t \end{bmatrix} = 12t^3$ 
	
  - thus $W(1) = 12$ while $W(0) = 0$.  
	
  - The functions $t,t^2,t^3$ are linearly independent (e.g. since $W(1) = 12$).

:::

-------

::: incremental

- On the other hand, suppose that $$(\clubsuit) \quad L[x] = 0$$ is a
  *normal* linear ODE on the interval $I$ of order $3$.
  
- Suppose $h_1(t),h_2(t),h_3(t)$ are solutions to $(\clubsuit)$

- we've seem that if $W(h_1,h_2,h_3)(t_0)$ is non-zero for some $t_0$
  in $I$, the general solution to $(\clubsuit)$ is given by $$x(t) =
  c_1h_1(t) + c_2h_2(t) + c_3h_3(t0).$$
  
- But more is true! $(\diamondsuit)$ If $W(h_1,h_2,h_3)(t_0) \ne 0$
  for *some* $t_0$ in $I$, then $W(h_1,h_2,h_3)(t_1) \ne 0$ for
  *every* $t$ in $I$.
  
- $(\diamondsuit)$ is a conseq of the *Existence and Uniqueness Theorem*.

- The example of $t,t^2,t^3$ shows that $(\diamondsuit)$ does not hold
  in general -- the argument for $(\diamondsuit)$ using the existence
  and uniqueness theorem applies only to functions $h_i$ which
  describe the general solution to a normal, linear ODE.

:::


## Bibliography {.unnumbered}

::: {.refs}
:::
