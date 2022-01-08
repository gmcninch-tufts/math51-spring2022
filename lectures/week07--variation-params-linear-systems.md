---
author: George McNinch (Math 51 Fall 2021)
title: Week 7 - Variation of parameters & Linear Systems
date: 2021-10-22
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture follows [@gutermanNitecki §2.8 & §3.2].

In this lecture, we discuss a (second) method for solving
inhomogeneous ODEs known as *variation of parameters*, and we begin
our discussion of *linear systems of ODEs*.

# Variation of parameters

## Overview

::: incremental

- We are interested in finding solutions to inhomogeneous linear ODEs.

  $$Lx = E(t)$$

- We already introduced the *method of undetermined coefficients*

  It has two limitations, namely:
  
  - $L$ must be a constant coefficient operator
  - $E(t)$ must be a solution to $A(D)x=0$ for some constant
    coefficient operator

- to get around these problems, we are going to adapt the method we
  used in the case of *first-order linear equations*

:::

## Desc for 2nd order ODEs

::: incremental

- Consider a  general second order linear ODE:
  $$\left(a_2(t)D^2 + a_1(t)D + a_0(t)\right)x = E(t).$$

- as in the case of first order eqns, we put this eqn in *standard
  form* by dividing by $a_2(t)$:
  
  $$(\clubsuit) \quad \left(D^2 + b_1(t)D + b_0(t)\right)x = q(t).$$

- suppose we know already the general solution to  the
  corresp *homog eqn*
  
  $$\left(D^2 + b_1(t)D + b_0(t)\right)x = 0;$$

:::

## 
::: incremental

- we are supposing that the general solution $H(t) = c_1 h_1(t) + c_2
  h_2(t)$ to the homogeneous eqn 
  $$\left(D^2 + b_1(t)D + b_0(t)\right)x = 0$$
  is already known to us.

- We are going to look for a particular solution to the
  *inhomogeneous* ODE $(\clubsuit)$ which is of the form $$p(t) =
  c_1(t) h_1(t) + c_2(t) h_2(t)$$ for *unknown functions*
  $c_1(t),c_2(t)$.

- in order to apply the linear operator $L= D^2 + b_1(t)D + b_0(t)$ to
  $p(t)$, we must compute $D[p(t)]$ and $D^2[p(t)]$.

:::

## 
::: incremental

- we find using the *product rule* that
  \begin{align*}
  D[p(t)] &= D[c_1(t) h_1(t) + c_2(t) h_2(t)] \\
  &= c_1'(t) h_1(t) + c_1(t)h_1'(t) + c_2'(t) h_2(t) + c_2(t)h_2'(t) \\
  &= c_1(t)h_1'(t) + c_2(t)h_2'(t) + [ c_1'(t) h_1(t) + c_2'(t) h_2(t) ] \\
  \end{align*}

- there is some *freedom* in choosing the parameter-functions
  $c_i(t)$, and so we may choose to require that the expression in
  brackets is zero -- i.e.

  $$(\clubsuit) \quad c_1'(t) h_1(t) + c_2'(t) h_2(t)=0.$$

:::

##
::: incremental

- under assumption $(\clubsuit)$, we find that
  $$D[p(t)] = c_1(t)h_1'(t) + c_2(t)h_2'(t)$$

- we have some freedom in choosing the $c_i(t)$, and so we may choose
  to impose the assumption that the expression in brackets is zero --
  i.e.

  $$(\clubsuit) \quad c_1'(t) h_1(t) + c_2'(t) h_2(t)=0.$$

- this choice is motivated by the fact this it is the *first entry* in
  the result of the matrix product

  $$\begin{bmatrix}
  h_1(t) & h_2(t) \\
  h_1'(t) & h_2'(t)
  \end{bmatrix} \cdot 
  \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix} = W(h_1,h_2)(t) \cdot   \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix}
  = \begin{bmatrix}
  c_1'(t) h_1(t) + c_2'(t) h_2(t) \\
  * 
  \end{bmatrix}$$

- when $(\clubsuit) = 0$, we find that 
  $D[p(t)] = c_1(t)h_1'(t) + c_2(t)h_2'(t)$

:::

##
::: incremental

- and we find that
  $$D^2[p(t)] = c_1(t)h_1''(t) + c_1'(t)h_1'(t) + c_2(t)h_2''(t) + c_2'(t)h_2'(t)$$

- We now form

  $$(D^2 + b_1(t) D + b_0(t))[p(t)] = (\diamondsuit);$$
  
  thus $p(t)$ is a *particular solution* provided that $(\diamondsuit)
  = q(t)$.
  
- and if we use the fact that

  $$(D^2 + b_1(t) D + b_0(t))[h_i(t)] = 0 \quad i=1,2$$

- we find after some algebra that
  $$(\diamondsuit) = c_1'(t) h_1'(t) + c_2'(t)h_2'(t)$$

  i.e. we need
  $c_1'(t) h_1'(t) + c_2'(t)h_2'(t) = q(t).$
:::

##
::: incremental

- we now notice that $(\diamondsuit) = c_1'(t) h_1'(t) + c_2'(t)h_2'(t)$
  is the *last entry* in the vector obtained by the matrix product
  
  $$\begin{bmatrix}
  h_1(t) & h_2(t) \\
  h_1'(t) & h_2'(t)
  \end{bmatrix} \cdot 
  \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix}
  =
  W(h_1,h_2)(t) \cdot   \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix}
  = \begin{bmatrix}
    * \\
  c_1'(t) h_1'(t) + c_2'(t)h_2'(t)
  \end{bmatrix}$$

- thus we need to solve the *matrix equation*
  $$W(h_1,h_2)(t) \cdot   \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix}
  = 
  \begin{bmatrix}
  0 \\
  q(t)
  \end{bmatrix}$$

- since $h_1(t)$ and $h_2(t)$ generate the general solution $H(t)$ to
  the homog eqn, the Wronskian $W(h_1,h_2)(t)$ is never zero (on the
  interval under consideration). Thus, this matrix equation has a
  solution (by *Cramer's Rule*, as usual).

- having solved this matrix equation, we know $c'_i(t)$ ($i=1,2$).  In
  principle, we can now find $c_i(t)$ by integration.  We then find
  our particular solution $$p(t) = c_1(t) h_1(t) + c_2(t) h_2(t).$$

:::

## Statement of Cramer's Rule for $2 \times 2$ matrices

See [@gutermanNitecki,Ch. 2, App. A].

Consider the matrix equation
$\begin{bmatrix}
a_{11} && a_{12} \\
a_{21} && a_{22}
\end{bmatrix}
\begin{bmatrix}
c_1 \\
c_2 \\
\end{bmatrix}
=
\begin{bmatrix}
b_1 \\
b_2 \\
\end{bmatrix}$

Assume $\det\begin{bmatrix}
a_{11} && a_{12} \\
a_{21} && a_{22}
\end{bmatrix} \ne 0$.


Then the equation has a unique solution $\vec{c} =\begin{bmatrix} c_1
\\ c_2 \\ \end{bmatrix}$ given by the formulas

$$c_1 = \dfrac{\det\begin{bmatrix}
b_1 & a_{12} \\
b_2 & a_{22}
\end{bmatrix}}{\det\begin{bmatrix}
a_{11} & a_{12}\\
a_{21} & a_{22}
\end{bmatrix}}
\quad \text{and} \quad
c_2 = \dfrac{\det\begin{bmatrix}
a_{11} & b_1 \\
a_{21} & b_2
\end{bmatrix}}{\det\begin{bmatrix}
a_{11} & a_{12}\\
a_{21} & a_{22}
\end{bmatrix}}.$$


## Example

Find the general solution of
$$2x'' - 6x' + 4x = 6e^{2t}.$$

::: incremental

- Note that the characteristic polynomial factors:
  $$2r^2 - 6r +4 = (2r -4)(r-1)$$
  so its roots are $\lambda = 1,2$.

- Thus the general solution to the corresponding homog. eqn is generated by
  $h_1(t) = e^t$ and $h_2(t) = e^{2t}$.
  
- Now we consider the matrix equation

  
  $$W(h_1,h_2)(t) \cdot \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix} =
  \begin{bmatrix}
  e^t & e^{2t} \\
  e^t & 2e^{2t}
  \end{bmatrix}
  \cdot \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix} =
  \begin{bmatrix}
  0 \\
   3e^{2t}
  \end{bmatrix}
  $$
  
:::

##

::: incremental

- we solve this matrix equation using *Cramer's Rule*

- first note that $\det   \begin{bmatrix}
  e^t & e^{2t} \\
  e^t & 2e^{2t}
  \end{bmatrix}= 2e^{3t} - e^{3t} = e^{3t}.$
  
- thus Cramer's Rule gives

  $$c_1'(t) = \dfrac{1}{e^{3t}} \det \begin{bmatrix}
  0 & e^{2t} \\
  3e^{2t} & 2e^{2t}  
  \end{bmatrix} = \dfrac{-3e^{4t}}{e^{3t}} = -3e^t$$
  and
  $$c_2'(t) = \dfrac{1}{e^{3t}} \det \begin{bmatrix}
  e^t & 0 \\
  e^t & 3e^{2t}
  \end{bmatrix} = \dfrac{3e^{3t}}{e^{3t}} = 3$$

:::

##

::: incremental

- finally, we find

  $$c_1(t) = \int c_1'(t) dt = -3 \int e^t dt = -3e^t + C$$
  
  and
  
  $$c_2(t) = \int c_2'(t) dt = 3\int dt = 3t + D.$$

- since we only want a particular solution, we choose $C=D=0$ and find that

  \begin{align*}
  p(t) &= c_1(t)h_1(t) + c_2(t)h_2(t) \\
  &= -3e^t \cdot e^t   + 3t \cdot e^{2t} \\
  &= (3t-3)e^{2t}
  \end{align*}

:::

-----

::: incremental

- so the general solution is

  $$x = p(t) + H(t) = (3t-3)e^{2t} + c_1 e^t + c_2 e^{2t}$$

:::

## Remarks

::: incremental

- the same procedure works for *higher order* linear equations

- consider an $n$-th order linear equation $(\clubsuit) \quad Lx = q(t)$ in standard
  form, and suppose that $h_1(t) ,\cdots,h_n(t)$ generate the general
  solution to the  homog eqn $Lx = 0$.
  
- to find a particular solution, first solve the matrix equation

  $$W \cdot 
  \begin{bmatrix}
  c_1'(t) \\
  \vdots \\
  c_{n-1}'(t) \\
  c_n'(t)
  \end{bmatrix} 
  =
  \begin{bmatrix}
  0 \\ 
  \vdots \\
  0 \\
  q(t)
  \end{bmatrix}$$
  
  where $W = W(h_1,\cdots,h_n)(t)$ is the *Wronskian matrix* determined by the $h_i$.

:::

-----

::: incremental

- Now, we find the $c_i(t)$ by integration:

  $$\displaystyle c_i(t) = \int c_i'(t) dt$$

- and $$p(t) =
  \sum_{i=1}^n c_i(t) h_i(t)$$ is a particular solution to
  $(\clubsuit)$.

:::

# Linear systems of ODEs

## Definition

We now consider *systems* of several linear ODEs.

::: incremental

- $t$ is still the independent variable

- we now consider $n$ unknown functions $x_1 = x_1(t), \cdots, x_n = x_n(t)$.

- and each $x_i$ is a solution to a linear differential equation involving all the $x_j$

:::

-------

::: incremental

- in symbols:

  $$\begin{matrix}
  x_1' & = & a_{11} x_1  +  a_{12} x_2 + \cdots + a_{1n} x_n  + E_1(t) \\
  x_2' & = & a_{21} x_1  +  a_{22} x_2 + \cdots + a_{2n} x_n  + E_2(t) \\
  \vdots & &  \vdots  \\
  x_n' & = & a_{n1} x_1  +  a_{n2} x_2 + \cdots + a_{nn} x_n  + E_n(t) \\
  \end{matrix}$$

  for coefficients $a_{ij}$ and *constants* $E_j$
  
- homogeneous provided that $E_1 = E_2 = \cdots = E_n = 0$.

:::

##

::: incremental

- we write $A = \begin{bmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\
  a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots &
  \vdots\\ a_{n1} & a_{n2} & \cdots & a_{nn} \\ \end{bmatrix}$ for the
  *coefficient matrix* of the system.

- and we consider the *column vectors* $\vec E = \begin{bmatrix}
  E_1(t) \\ E_2(t) \\ \vdots \\ E_n(t) \end{bmatrix}$ and $\vec x =
  \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{bmatrix}$

- we write $D \vec x = \dfrac{d}{dt} \vec x = \dfrac{d}{dt}
  \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{bmatrix} =
  \begin{bmatrix} x_1' \\ x_2' \\ \vdots \\ x_n' \end{bmatrix}$

:::

## 

::: incremental

- the original system of linear ODEs  
  
  $$\begin{matrix}
  x_1' & = & a_{11} x_1  +  a_{12} x_2 + \cdots + a_{1n} x_n  + E_1(t) \\
  x_2' & = & a_{21} x_1  +  a_{22} x_2 + \cdots + a_{2n} x_n  + E_2(t) \\
  \vdots & &  \vdots  \\
  x_n' & = & a_{n1} x_1  +  a_{n2} x_2 + \cdots + a_{nn} x_n  + E_n(t) \\
  \end{matrix}$$

  can now be rewritten as a single matrix equation:

  $$D \vec x = A \vec x + \vec E.$$
:::

## 

::: incremental

- suppose given a system of ODEs represented as a matrix equation
  $$D\vec x = A \vec x + \vec E$$
  for an $n \times n$ matrix $A$

- a *solution* is a *vector* $\vec x = \vec x(t) = \begin{bmatrix}
  x_1(t) \\
  x_2(t) \\
  \vdots \\
  x_n(t)
  \end{bmatrix}$ -- i.e. an $n\times
  1$ matrix -- whose entries are functions of $t$

- we'll investigate the matrix product $A \vec x$ more carefully in
  recitation & live-lectures.

:::

## Matrix and vector operations

::: incremental

- consider a matrix with $m$ rows and $n$ columns -- for short, an $m
  \times n$ matrix $$A = \begin{bmatrix} a_{11} & a_{12} & \cdots &
  a_{1n} \\ a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots &
  \ddots & \vdots \\ a_{m1} & a_{m2} & \cdots & a_{mn} \\ \end{bmatrix}$$

- a special case is a *column vector* -i.e. an $m \times 1$ matrix
  $\vec v = \begin{bmatrix} v_1 \\ v_2 \\ \vdots \\ v_m \end{bmatrix}$.

:::

---------

::: incremental

- we can *add* two matrices with the same *dimensions*. if $A$ and $B$
  are $m \times n$ matrices, then $A+B$ is the $m \times n$ matrix whose
  $i,j$ entry is $A_{ij} + B_{ij}$.

- e.g. 
  $$\begin{bmatrix}
  a_{11} & a_{12} \\
  a_{21} & a_{22} \\
  a_{31} & a_{32} \\
  \end{bmatrix} 
  +
  \begin{bmatrix}
  b_{11} & b_{12} \\
  b_{21} & b_{22} \\
  b_{31} & b_{32} \\  
  \end{bmatrix} 
  =
  \begin{bmatrix}
  a_{11} + b_{11} & a_{12} + b_{12} \\
  a_{21} + b_{21} & a_{22} + b_{22} \\
  a_{31} + b_{31} & a_{32} + b_{32} \\
  \end{bmatrix}$$

- we can *multiply* a matrix with $n$ columns and a matrix with $n$ rows.
  If $A$ is $m \times n$ and $B$ is $n \times k$ then $AB$ is $m \times k$.
  See [@gutermanNitecki, §3.2] for more details.

:::

-----

::: incremental

- e.g. 
  $$\begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \begin{bmatrix}
  x_1 \\ x_2 \\ x_3 
  \end{bmatrix} 
  =
  \begin{bmatrix}
  a_{11} x_1 + a_{12} x_2 + a_{13} x_3 \\
  a_{21} x_1 + a_{22} x_2 + a_{23} x_3 \\  
  \end{bmatrix}$$
  
- and

  \begin{align*}
  &\begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \cdot
  \begin{bmatrix}
  b_{11} & b_{12} \\
  b_{21} & b_{22} \\
  b_{31} & b_{32} \\
  \end{bmatrix} \\
  &=
  \begin{bmatrix}
  \begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \cdot
  \begin{bmatrix}
  b_{11} \\ b_{21} \\ b_{31}
  \end{bmatrix}   
  &
  \begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \cdot  
  \begin{bmatrix}
  b_{12} \\ b_{22} \\ b_{32}
  \end{bmatrix}   
  \end{bmatrix}
  \end{align*}   

:::

##

::: incremental

:::


## Rewriting $n$-th order linear equations using systems of linear ODEs

::: incremental

- consider an example: $(D^2 - 2D + 1)x = e^{2t}.$

- suppose $x$ is a solution and set $x_1 = x$, $x_2 = x'$.

- Since $(D^2 -2 D + 1)x = e^{2t}$, find that
  $$x_2' = x'' = (2D - 1)x +  e^{2t} = -x_1  +2x_2 + e^{2t}.$$

- so $x_1$ and $x_2$ solve the system of equations
  $$\begin{matrix}
  x_1' = 0x_1 + x_2 + 0 \\
  x_2' = -x_1 +2x_2 + e^{2t} 
  \end{matrix}$$

:::

---

::: incremental

- the matrix form of this system is
  $$D\vec x = \begin{bmatrix}
  0 & 1 \\
  -1 & 2
  \end{bmatrix} \vec x + \begin{bmatrix}
  0 \\
  e^{2t}
  \end{bmatrix}$$

:::

##
::: incremental
- solutions to the matrix equation 
  
  $$(\diamondsuit) \quad D\vec x = \begin{bmatrix} 0 & 1 \\ -1 & 2
  \end{bmatrix} \vec x + \begin{bmatrix} 0 \\ e^{2t} \end{bmatrix}$$


  have the form
  $\vec x = \begin{bmatrix}
  x_1 \\
  x_2 
  \end{bmatrix}
  =
  \begin{bmatrix}
  x(t) \\
  x'(t)
  \end{bmatrix}$ where $x(t)$ is a solution to $(D^2-2D + 1)x = e^{2t}$.

- a particular solution to $(D^2-2D + 1)x = e^{2t}$ is
  $p(t) = \dfrac{1}{2}t^2 e^t.$

- thus a particular solution to $(\diamondsuit)$ is 
  $\vec p = \begin{bmatrix} p(t) \\ p'(t) \end{bmatrix}
  = \begin{bmatrix}
  \dfrac{1}{2}t^2 e^t \\
  \dfrac{1}{2}(2t + t^2)e^t
  \end{bmatrix}.$

:::

##

::: incremental

- the homogeneous system equation $D\vec x = \begin{bmatrix} 0 & 1 \\ -1 & 2
  \end{bmatrix} \vec x$
  has solutions arising from the homogeneous equation $(D^2 - 2D + 1)x = 0$-- i.e.
  from $h_1(t) = e^t$ and $h_2(t) = te^t$.

- so the vector solutions to the homogeneous eqn are 
  $$\vec h_1 = \begin{bmatrix}
  h_1(t) \\
  h_1'(t)
  \end{bmatrix} = \begin{bmatrix}
  e^t \\ e^t
  \end{bmatrix}
  \quad \text{and} \quad
  \vec h_2 = \begin{bmatrix}
  h_2(t) \\
  h_2'(t)
  \end{bmatrix} = \begin{bmatrix}
  te^t \\ (t+1)e^t
  \end{bmatrix}$$

:::

##
::: incremental

- finally, the general solution to the vector equation is given by

  \begin{align*}
  \vec x & = \vec p + c_1 \vec h_1 + c_2 \vec h_2 \\
  & = \begin{bmatrix}
  \dfrac{1}{2}t^2 e^t \\
  \dfrac{1}{2}(2t + t^2)e^t
  \end{bmatrix}
  + c_1 \begin{bmatrix}
  e^t \\ e^t
  \end{bmatrix}
  + c_2 \begin{bmatrix}
  te^t \\ (t+1)e^t
  \end{bmatrix} \\
  & = 
  \begin{bmatrix}
  \dfrac{1}{2}t^2 e^t + c_1 e^t + c_2 te^t \\
  \dfrac{1}{2}(2t + t^2)e^t + c_1 e^t + c_2 (t+1)e^t
  \end{bmatrix}
  \end{align*}

:::

## Bibliography {.unnumbered}

::: {.refs}
:::
