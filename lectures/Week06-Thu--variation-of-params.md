---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 5 Wed \
  Non-homogeneous linear equations -- undetermined coefficients 
date: 2022-02-16
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 2.7].

# Non-homogeneous linear equations: variation of parameters

## Preliminaries: multiplying a matrix and a vector

::: incremental 

- given an $n \times m$ matrix $A$, and a vector $\mathbf{x}$ in $\mathbb{R}^n$, we can 
  form the vector $A \cdot \mathbf{x}$ in $\mathbb{R}^m$.

- $$\begin{bmatrix}
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

- where the first entry of the result is 
  $$\begin{bmatrix}
  a_{11} & a_{12} & a_{13} 
  \end{bmatrix}
  \begin{bmatrix}
  x_1 \\ x_2 \\ x_3 
  \end{bmatrix} 
  =
  a_{11} x_1 + a_{12} x_2 + a_{13} x_3$$ 

- and the second entry of the result is
  $$\begin{bmatrix}
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \begin{bmatrix}
  x_1 \\ x_2 \\ x_3 
  \end{bmatrix} 
  =
  a_{21} x_1 + a_{22} x_2 + a_{23} x_3$$

:::

-----

- equivalently we can view the result $A \mathbf{x}$ as the linear
  combination of the columns of $A$ where the coefficients are the
  entries of $\mathbf{x}$.
  
  $$\begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \begin{bmatrix}
  x_1 \\ x_2 \\ x_3 
  \end{bmatrix} 
  =
  x_1 
  \begin{bmatrix}
  a_{11} \\
  a_{21} \\
  \end{bmatrix}
  +
  x_2
  \begin{bmatrix}
  a_{12} \\
  a_{22} \\
  \end{bmatrix}
  +
  x_3 
  \begin{bmatrix}
  a_{13} \\
  a_{23} \\
  \end{bmatrix}  
  =
  \begin{bmatrix}
  a_{11} x_1 + a_{12} x_2 + a_{13} x_3 \\
  a_{21} x_1 + a_{22} x_2 + a_{23} x_3 \\  
  \end{bmatrix}
  $$

----

For example
$$\begin{bmatrix} \sin(t) & \cos(t) \\
t & 1 \end{bmatrix}
\begin{bmatrix}
a \\
b 
\end{bmatrix}
=
\begin{bmatrix}
a \sin(t) + b\cos(t) \\
at + b
\end{bmatrix}
$$


## Overview

::: incremental

- We want to solve linear ODEs of the form $$(\clubsuit) \quad P(D) x = E(t)$$

- to do so, we first find the general solution $H(t)$ to the homog. equation 
  $$P(D)x = 0$$
  
- We have  a *particular* solution $q(t)$ to $P(D)x =
  E(t)$. 
  
- Since given $q(t)$, the general solution to $(\clubsuit) \quad P(D) x = E(t)$ is given by
  $$x(t) = q(t) + H(t).$$

:::

-----

::: incremental

- previously, we learned the *method of undetermined coefficients* for finding $q(t)$.

  this method has two limitations, namely:
  
  - $L$ must be a constant coefficient operator
  - $E(t)$ must be a solution to $A(D)x=0$ for some constant
    coefficient operator

- to get around these problems, we are going to adapt the method 
  of *variation of parameters*
  used in the case of *first-order linear equations*

:::

## Description for 2nd order linear ODEs

::: incremental

- Consider a  general second order linear ODE:
  $$\left(a_2(t)D^2 + a_1(t)D + a_0(t)\right)x = E(t).$$

- as in the case of first order eqns, we put this eqn in *standard
  form* by dividing by $a_2(t)$:
  
  $$(\clubsuit) \quad \left(D^2 + b_1(t)D + b_0(t)\right)x = q(t).$$

- we need these ODEs to be *normal* -- $b_1(t), b_0(t)$ and $q(t)$
  should be *continuous* (on the relevant interval).

:::

## 
::: incremental

- we are going to suppose that the general solution $H(t) = c_1 h_1(t) + c_2
  h_2(t)$ to the corresponding *homogeneous* eqn 
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

- denote by $M(h_1,h_2)(t)$ the *Wronskian matrix*.
  Thus
  $$M(h_1,h_2)(t) = \begin{bmatrix}
  h_1(t) & h_2(t) \\
  h_1'(t) & h_2'(t)
  \end{bmatrix}$$

- the choice that 
  $$(\clubsuit) \quad c_1'(t) h_1(t) + c_2'(t) h_2(t)=0.$$
  hold is motivated by the fact this it is the *first entry* in
  the result of the matrix product

  $$M(h_1,h_2)(t) \cdot   \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix}
  = \begin{bmatrix}
  h_1(t) & h_2(t) \\
  h_1'(t) & h_2'(t)
  \end{bmatrix} \cdot 
  \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix} = \begin{bmatrix}
  c_1'(t) h_1(t) + c_2'(t) h_2(t) \\
  * 
  \end{bmatrix}$$



:::

##
::: incremental

- and we find that
  $$D^2[p(t)] = c_1(t)h_1''(t) + c_1'(t)h_1'(t) + c_2(t)h_2''(t) + c_2'(t)h_2'(t)$$

- For $p(t) = c_1(t) h_1(t) + c_2(t) h_2(t)$ where $(\clubsuit)$ holds, we now form

  $$(D^2 + b_1(t) D + b_0(t))[p(t)] = (\diamondsuit);$$
  
- thus $p(t)$ is a *particular solution* provided that $(\diamondsuit)
  = q(t)$.
  
- using the fact that

  $$(D^2 + b_1(t) D + b_0(t))[h_i(t)] = 0 \quad i=1,2$$

- we find after some algebra -- see [@gutermanNitecki, sec. 2.8, pp. 148] -- that
  $$(\diamondsuit) = c_1'(t) h_1'(t) + c_2'(t)h_2'(t)$$

  i.e. we need
  $c_1'(t) h_1'(t) + c_2'(t)h_2'(t) = q(t).$
:::

##
::: incremental

- we now notice that $$(\diamondsuit) = c_1'(t) h_1'(t) + c_2'(t)h_2'(t)$$
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
  M(h_1,h_2)(t) \cdot   \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix}
  = \begin{bmatrix}
    * \\
  c_1'(t) h_1'(t) + c_2'(t)h_2'(t)
  \end{bmatrix}$$

- thus we need to solve the *matrix equation*
  $$M(h_1,h_2)(t) \cdot   \begin{bmatrix}
  c_1'(t) \\
  c_2'(t)
  \end{bmatrix}
  = 
  \begin{bmatrix}
  0 \\
  q(t)
  \end{bmatrix}$$

- since $h_1(t)$ and $h_2(t)$ generate the general solution $H(t)$ to
  the homog eqn, the Wronskian $W(h_1,h_2)(t) = \det M(h_1,h_2)(t)$ is never zero (on the
  interval under consideration). Thus, this matrix equation has a
  solution, by *Cramer's Rule*.

:::

---

::: incremental

- having solved the matrix equation, 
 
  $$M(h_1,h_2)(t) \cdot \begin{bmatrix} c_1'(t) \\ c_2'(t)
  \end{bmatrix} = \begin{bmatrix} 0 \\ q(t) \end{bmatrix}$$ we know
  $c'_i(t)$ ($i=1,2$).  In principle, we can now find anti-derivatives
  $c_i(t)$ by integration.  We then find our particular solution
  $$p(t) = c_1(t) h_1(t) + c_2(t) h_2(t).$$

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
$$2x'' - 6x' + 4x = 6e^{2t}$$
which in standard form becomes
$$x'' - 3x' + 2x = 3e^{2t}$$

::: incremental

- Note that the characteristic polynomial factors:
  $$2r^2 - 6r +4 = (2r -4)(r-1)$$
  so its roots are $\lambda = 1,2$.

- Thus the general solution to the corresponding homog. eqn is generated by
  $h_1(t) = e^t$ and $h_2(t) = e^{2t}$.

:::

---

::: incremental

- Now we consider the matrix equation

  
  $$M(h_1,h_2)(t) \cdot \begin{bmatrix}
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
  

- we solve this matrix equation using *Cramer's Rule*

- first note that $\det   \begin{bmatrix}
  e^t & e^{2t} \\
  e^t & 2e^{2t}
  \end{bmatrix}= 2e^{3t} - e^{3t} = e^{3t}.$
  
- thus Cramer's Rule gives

  - $$c_1'(t) = \dfrac{1}{e^{3t}} \det \begin{bmatrix}
    0 & e^{2t} \\
    3e^{2t} & 2e^{2t}  
    \end{bmatrix} = \dfrac{-3e^{4t}}{e^{3t}} = -3e^t$$
  
  - and
    $$c_2'(t) = \dfrac{1}{e^{3t}} \det \begin{bmatrix}
    e^t & 0 \\
    e^t & 3e^{2t}
    \end{bmatrix} = \dfrac{3e^{3t}}{e^{3t}} = 3$$

:::

##

::: incremental

- finally, we find

  - $$c_1(t) = \int c_1'(t) dt = -3 \int e^t dt = -3e^t + C$$
  
  - and
  
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

  $$M \cdot 
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
  
  where $M = M(h_1,\cdots,h_n)(t)$ is the *Wronskian matrix* determined by the $h_i$.

:::

-----

::: incremental

- Now, we find the $c_i(t)$ by integration:

  $$\displaystyle c_i(t) = \int c_i'(t) dt$$

- and $$p(t) =
  \sum_{i=1}^n c_i(t) h_i(t)$$ is a particular solution to
  $(\clubsuit)$.

:::

## Bibliography {.unnumbered}

::: {.refs}
:::
