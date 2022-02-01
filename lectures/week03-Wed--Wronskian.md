---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 3 Mon \
  Cramer’s Rule and the Wronskian
date: 2022-01-31
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 2.2 and 2.3].

# Linear ordinary differential equations

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



## Linear differential operators

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
  
- The equation $$(D^5 + D^3)x + x = (D^4 + tD^2)x$$ is already homogeneous.

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
has general solution $H(t) = A + Bt$ for constants $A,B$ (you can confirm
that this is the general solution by *antidifferentiating twice*).

. . .

Thus the general solution to $D^2 x = 1$ has the form $$x = p(t) +
H(t) = \dfrac{t^2}{2}+A+ Bt$$

# Homogeneous Linear ODEs

## Determinants

::: incremental

- The determinant of a $2 \times 2$ matrix is given by
  $$\det \begin{bmatrix} a & b \\
  c & d \end{bmatrix} = ad - bc.$$

- The determinant of a $3 \times 3$ matrix can be computed using row
  expansion:

  $$\det \begin{bmatrix}
  b_{11} & b_{12} & b_{13} \\
  b_{21} & b_{22} & b_{23} \\
  b_{31} & b_{32} & b_{33} 
  \end{bmatrix} =
  b_{11} \cdot \det 
  \begin{bmatrix}
  b_{22} & b_{23} \\
  b_{32} & b_{33} 
  \end{bmatrix}
  - b_{12} \cdot \det 
  \begin{bmatrix}
  b_{21} & b_{23} \\
  b_{31} & b_{33} 
  \end{bmatrix}
  + b_{13} \cdot \det 
  \begin{bmatrix}
  b_{21} & b_{22} \\
  b_{31} & b_{32} 
  \end{bmatrix}$$

:::

---

example:

$$\det \begin{bmatrix}
10 & 0 & 0 \\
1 & 1 & 0 \\
2 & 7 & 20
\end{bmatrix}
= 10 \det \begin{bmatrix} 1 & 0 \\ 7 & 20 \end{bmatrix} = 200.$$

. . .

More examples in practicums this week!!


## Linear systems of equations and Cramer's Rule

See [@gutermanNitecki, App. A of Ch. 2] for more on determinants.


Consider a linear system of $n$ equations in $n$ unknowns.

If $n=3$ and the unknowns are $u_1,u_2,u_3$, then such a system has the form

$$(\clubsuit) \quad \left\{
\begin{matrix}
b_{11} u_1 + b_{12} u_2 + b_{13} u_3 = c_1 \\
b_{21} u_1 + b_{22} u_2 + b_{23} u_3 = c_2 \\
b_{31} u_1 + b_{32} u_2 + b_{33} u_3 = c_2 \\
\end{matrix} \right .
$$
for coefficients $b_{ij}$ and $c_k$.

. . .

We extract matrices & vectors from this system:
$$B = \begin{bmatrix}
b_{11} & b_{12} & b_{13} \\
b_{21} & b_{22} & b_{23} \\
b_{31} & b_{32} & b_{33} 
\end{bmatrix}
\quad
\mathbf{u} = \begin{bmatrix}
u_1 \\ u_2 \\ u_3
\end{bmatrix}
\quad
\mathbf{c} = \begin{bmatrix}
c_1 \\ c_2 \\ c_3
\end{bmatrix}$$

. . .

To solve the system $(\clubsuit)$ means to find $\mathbf{u}$ making all of the equations valid.

----

**Theorem:** (*Cramer's Rule*) The following conditions are logically equivalent:

1. $\det B \ne 0$.
2. for a fixed vector $\mathbf{c}$, the system of equations $(\clubsuit)$ has a unique solution $\mathbf{u}$.
3. the system of equations $(\clubsuit)$ has at least one a solution
   $\mathbf{u}$ for every vector $\mathbf{c}$.

Moreover, when $\det B \ne 0$, the entries 
of the solution $\mathbf{u}$ are given by the formula

$$u_i = \dfrac{\det B_i}{\det B}$$

where $B_i$ is the matrix obtained by replacing the $i$th column of
$B$ with the vector $\mathbf{c}$.

----

When $n=3$, $(\clubsuit)$ has the solution $\begin{bmatrix}
u_1 \\ u_2 \\ u_3
\end{bmatrix}$ where

$$u_1 = \dfrac{\det \begin{bmatrix}
c_1 & b_{12} & b_{13} \\
c_2 & b_{22} & b_{23} \\
c_3 & b_{32} & b_{33} 
\end{bmatrix}}{\det \begin{bmatrix}
b_{11} & b_{12} & b_{13} \\
b_{21} & b_{22} & b_{23} \\
b_{31} & b_{32} & b_{33} 
\end{bmatrix}}
,\quad
u_2 = \dfrac{\det \begin{bmatrix}
b_{11} & c_1 & b_{13} \\
b_{21} & c_2 & b_{23} \\
b_{31} & c_3 & b_{33} 
\end{bmatrix}}{\det \begin{bmatrix}
b_{11} & b_{12} & b_{13} \\
b_{21} & b_{22} & b_{23} \\
b_{31} & b_{32} & b_{33} 
\end{bmatrix}}
,\quad
u_3 = \dfrac{\det \begin{bmatrix}
b_{11} & b_{12} & c_1 \\
b_{21} & b_{22} & c_2 \\
b_{31} & b_{32} & c_3 
\end{bmatrix}}{\det \begin{bmatrix}
b_{11} & b_{12} & b_{13} \\
b_{21} & b_{22} & b_{23} \\
b_{31} & b_{32} & b_{33} 
\end{bmatrix}}
$$


## Solutions to homogeneous linear ODEs

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

------

::: incremental

- As we observed above, if $h_1(t),\dots,h_n(t)$ are solutions to a
  homogeneous equation $Lx =0$, then we obtain a whole family of
  solutions $$(S) \quad x(t) = c_1 h_1(t) + c_2 h_2(t) + \cdots + c_n
  h_n(t),$$ where each choice of the constants $c_1,c_2,\dots,c_n$
  determines a different solution.

- If every solution is described by the formula $(S)$, we say that
  $(S)$ is the general solution and that the functions $h_i(t)$ are a
  *complete set of solutions* for the homogeneous equation.

- important question: how can we decide when the $h_i$ are a complete set
  of solutions?

- answer: existence and uniqueness theorem!

:::

## When is $(S)$ the general solution to $L[x] = 0$?

$$(S) \quad x(t) = c_1 h_1(t) + c_2 h_2(t) + \cdots + c_n
  h_n(t)$$ 

::: incremental

- Fix $t_0$. Since $L$ is an $n$th order linear differential operator,
  the existence and uniqueness theorem tells us that for any values
  $\alpha_0,\dots,\alpha_{n-1}$, there is a solution $x$ with

  \begin{align*}
  x(t_0) &= \alpha_0 \\ 
  x'(t_0) &= \alpha_1 \\
  \vdots  \\
  x^{(n-1)}(t_0) &= \alpha_{n-1}.
  \end{align*}
   
- if $(S)$ describes the general solution, there are  values
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

- we view $(\diamondsuit)$ as a *system of $n$ linear equations* in
  the $n$ unknowns $c_1,c_2,\dots,c_n$.

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

- If $(S)$ described the general solution, then the system of equations
  with coefficient matrix $M$ has a solution for all values
  $\alpha_0,\alpha_1,\dots,\alpha_{n-1}$ (existence and uniqueness
  theorem!!). Thus **Cramer's Rule** tells us that the determinant $\det M$
  must be non-zero.
  
- conversely, if we know that $\det M \ne 0$, Cramer's Rule tells us
  that the system $(\diamondsuit)$ has a unique solution for any
  vector $\mathbf{\alpha} = \begin{bmatrix} \alpha_0 \\ \alpha_1 \\
  \vdots \\ \alpha_{n-1} \end{bmatrix}$ and thus $(S)$ describes
  the general solution to $L[x] = 0$.
  
- this determinant
  $$W(h_1,\dots,h_n)(t) = 
  \det \begin{bmatrix}
  h_1(t) & h_2(t) & \cdots & h_n(t) \\
  h_1'(t) & h_2'(t) & \cdots & h_n'(t) \\
  \vdots & \vdots & \ddots & \vdots \\
  h_1^{(n-1)}(t) & h_2^{(n-1)}(t) & \cdots & h_n^{(n-1)}(t) \\
  \end{bmatrix}$$
  is called the *Wronskian* of the functions $h_1,\dots,h_n$.


:::

## Summary: Wronskian test for homog. sols 

Let $L x = 0$ be an $n$-th order homog. linear ODE that is normal
on some interval.

If $h_1(t),\dots,h_n(t)$ are solutions, then the $h_i$ generate the
general solution to $Lx = 0$ if and only if $$W(h_1,\cdots,h_n)(t_0)
\ne 0$$ for some point $t_0$ be a point in this interval.

. . .

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


## Bibliography {.unnumbered}

::: {.refs}
:::
