---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 7 Mon \
  Linear ODEs
date: 2022-02-28
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 3.2, 3.3].

# Linear systems of ODEs

## Definition

We now consider *systems* of several linear ODEs.

::: incremental

- here $t$ is still the independent variable

- we now consider $n$ unknown functions $x_1 = x_1(t), \cdots, x_n = x_n(t)$, often bundled as a *vector*
  $$\mathbf{x} = \begin{bmatrix}
  x_1 \\ x_2 \\ \vdots \\ x_n \end{bmatrix}.$$

- each function $x_i(t)$ is to be a solution of a linear differential
  equation involving *all* of the $x_j$, $1 \le j \le n$.

:::

-------

::: incremental

- in symbols:

  $$\begin{matrix}
  x_1' & = & a_{11} x_1  +  a_{12} x_2 + \cdots + a_{1n} x_n  + E_1(t) \\
  x_2' & = & a_{21} x_1  +  a_{22} x_2 + \cdots + a_{2n} x_n  + E_2(t) \\
  \vdots &  &  \vdots  \\
  x_n' & = & a_{n1} x_1  +  a_{n2} x_2 + \cdots + a_{nn} x_n  + E_n(t) \\
  \end{matrix}$$

  for coefficients $a_{ij} = a_{ij}(t)$ and *"constants"* $E_j(t)$
  
- this system is said to be *homogeneous* provided that $\mathbf{E}
  = \begin{bmatrix} E_1 \\ E_2 \\ \vdots \\ E_n \end{bmatrix} =
  \mathbf{0}$, i.e. that $E_1 = E_2 = \cdots = E_n = 0$.

:::

##

::: incremental

- we write $A = \begin{bmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\
  a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots &
  \vdots\\ a_{n1} & a_{n2} & \cdots & a_{nn} \\ \end{bmatrix}$ for the
  *coefficient matrix* of the system.

- note that $A$ is an $n \times n$ matrix -- the number of rows and
  number of columns of $A$ coincide.


- we write $D \mathbf{x} = \dfrac{d}{dt} \mathbf{x} = \dfrac{d}{dt}
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

  $$D \mathbf{x} = A \mathbf{x} + \mathbf{E}.$$
  
- where $A = \begin{bmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\
  a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots &
  \vdots\\ a_{n1} & a_{n2} & \cdots & a_{nn} \\ \end{bmatrix}$,  $\mathbf{E} = \begin{bmatrix}
  E_1 \\ E_2 \\ \vdots \\ E_n \end{bmatrix}$, and $\mathbf{x} =
  \begin{bmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{bmatrix}$

- (remember the definition of the *matrix product* $A \mathbf{x}$).

:::

## Example

::: incremental

- $\left\{\begin{matrix}
  x' & = & a_{11} x  +  a_{12} y +  a_{13} z  + E_1(t) \\
  y' & = & a_{21} x  +  a_{22} y +  a_{23} z  + E_2(t) \\
  z' & = & a_{31} x  +  a_{32} y +  a_{33} z  + E_3(t) \\
  \end{matrix}\right.$
  
  corresponds to 
  $D\begin{bmatrix} x \\ y \\ z \end{bmatrix} = \begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  a_{31} & a_{32} & a_{33} \\
  \end{bmatrix}\begin{bmatrix} x \\ y \\ z \end{bmatrix}
  + \begin{bmatrix} E_1 \\ E_2 \\ E_3 \end{bmatrix}.$

- $\left\{\begin{matrix}
  x' & = & x  +  ty +  e^t z  + 1 \\
  y' & = &   y +  z/t  -1 \\
  z' & = & x  +    z  + t+1 \\
  \end{matrix}\right.$
  
  corresponds to 
  $D\begin{bmatrix} x \\ y \\ z \end{bmatrix} = \begin{bmatrix}
  1 & t & e^t \\
  0 & 1 & 1/t \\
  1 & 0 & 1 \\
  \end{bmatrix}\begin{bmatrix} x \\ y \\ z \end{bmatrix}
  + \begin{bmatrix} 1 \\ -1 \\ t+1 \end{bmatrix}.$


:::

##  Solutions

::: incremental

- Consider a system of ODEs represented as a matrix equation
  $$(\clubsuit) \quad D\mathbf{x} = A \mathbf{x} + \mathbf{E}$$
  for an $n \times n$ matrix $A$

- a *solution* to $(\clubsuit)$is a *vector* $\mathbf{x} = \mathbf{x}(t) =
  \begin{bmatrix} x_1(t) \\ x_2(t) \\ \vdots \\ x_n(t) \end{bmatrix}$
  whose entries are functions of $t$ which satisfies the equation.

:::

## Matrix and vector operations

::: incremental

- last week we described the product $A \mathbf{x}$ for an $n \times m$
  matrix $A$ and a vector $\mathbf{x} \in \mathbb{R}^m$.

- we can also *add* two matrices provided that they have the same
  *dimensions*. if $A$ and $B$ are $m \times n$ matrices, then $A+B$
  is the $m \times n$ matrix whose $i,j$ entry is $A_{ij} + B_{ij}$.

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


- this sort of addition is being done in the right-hand-side of our
  linear systems of ODEs $$(\clubsuit) \quad D\mathbf{x} = A
  \mathbf{x} + \mathbf{E}$$


:::



## Rewriting $n$-th order linear equations using systems of linear ODEs

::: incremental

- consider an example: $(D^2 - 2D + 1)x = e^{2t}.$

- suppose $x$ is a solution and set $x_1 = x$, $x_2 = x'$.

- Since $x$ is a solution we know by definition that
  $$x'' - 2x' + x = e^{2t}$$
  and so 
  $$x_2' = x'' = 2x' - x +  e^{2t} = 2x_2 - x_1 + e^{2t}.$$

- so the entries of $\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} =
  \begin{bmatrix} x \\ x' \end{bmatrix}$ solve the system of equations
  $$\begin{matrix} x_1' = 0x_1 + x_2 + 0 \\ x_2' = -x_1 +2x_2 + e^{2t}
  \end{matrix}$$

:::

---

##
::: incremental
- solutions to the matrix equation 
  
  $$(\diamondsuit) \quad D\mathbf{x} = \begin{bmatrix} 0 & 1 \\ -1 & 2
  \end{bmatrix} \mathbf{x} + \begin{bmatrix} 0 \\ e^{2t} \end{bmatrix}$$


  have the form
  $\mathbf{x}(t) = \begin{bmatrix}
  x_1(t) \\
  x_2(t) 
  \end{bmatrix}
  =
  \begin{bmatrix}
  x(t) \\
  x'(t)
  \end{bmatrix}$ where $x(t)$ is a solution to $(D^2-2D + 1)x = e^{2t}$.

- note that $r^2 -2r+1=(r+1)^2$ so the general solution to the
  homogeneous equation $(D^2-2D+1)x =0$ is generated by $h_1(t) =e^t$ and
  $h_2(t) = te^t$.

- using the method of undetermined coefficients, we find that a
  particular solution to $(D^2-2D + 1)x = e^{2t}$ is $p(t) =
  \dfrac{1}{2}t^2 e^t.$

- thus a particular solution to $(\diamondsuit)$ is 
  $\mathbf{p} = \begin{bmatrix} p(t) \\ p'(t) \end{bmatrix}
  = \begin{bmatrix}
  \dfrac{1}{2}t^2 e^t \\
  \dfrac{1}{2}(2t + t^2)e^t
  \end{bmatrix}.$

:::

##

::: incremental

- the homogeneous system equation $D\mathbf{x} = \begin{bmatrix} 0 & 1 \\ -1 & 2
  \end{bmatrix} \mathbf{x}$
  has solutions arising from the homogeneous equation $(D^2 - 2D + 1)x = 0$-- i.e.
  from $h_1(t) = e^t$ and $h_2(t) = te^t$.

- so the vector solutions to the homogeneous eqn are 
  $$\mathbf{h}_1 = \begin{bmatrix}
  h_1(t) \\
  h_1'(t)
  \end{bmatrix} = \begin{bmatrix}
  e^t \\ e^t
  \end{bmatrix}
  \quad \text{and} \quad
  \mathbf{h}_2 = \begin{bmatrix}
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
  \mathbf{x} & = \mathbf{p} + c_1 \mathbf{h}_1 + c_2 \mathbf{h}_2 \\
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

## Another example

::: incremental

- Consider the homogeneous linear system given by
  $$D \begin{bmatrix} x \\ y \end{bmatrix} =
  \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix}$$

- Unlike the previous example, this example does not arise directly
  from a single linear ODE.
  
- We are going to learn how to find solutions to such systems of ODEs.

- Meanwhile, we can check directly that $\mathbf{h}_1 = \begin{bmatrix}
  e^t \\ 0 \end{bmatrix}$ and $\mathbf{h}_2 = \begin{bmatrix} e^{2t} \\ e^{2t}
  \end{bmatrix}$ are solutions.

:::

---

::: incremental 

- Indeeed $D \mathbf{h}_1 = D\begin{bmatrix}
  e^t \\ 0 \end{bmatrix} = \begin{bmatrix}
  e^t \\ 0 \end{bmatrix}$ while
  $$A \mathbf{h}_1 = \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} \begin{bmatrix}
  e^t \\ 0 \end{bmatrix} = \begin{bmatrix}
  e^t \\ 0 \end{bmatrix}$$

- and $D \mathbf{h}_2 = D\begin{bmatrix}
  e^{2t} \\ e^{2t} \end{bmatrix} = \begin{bmatrix}
  2e^{2t} \\ 2e^{2t} \end{bmatrix} = 
  2\begin{bmatrix}
  e^{2t} \\ e^{2t} \end{bmatrix}$ while
  $$A \mathbf{h}_2 = \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} \begin{bmatrix}
  e^{2t} \\ e^{2t} \end{bmatrix} = \begin{bmatrix}
  e^{2t} + e^{2t} \\ 0 + 2e^{2t} \end{bmatrix} = 
  2\begin{bmatrix}
  e^{2t} \\ e^{2t} \end{bmatrix}$$

- we'll argue later that the *general solution* is given by
  $$\mathbf{x} = c_1 \mathbf{h}_1 + c_2 \mathbf{h}_2 = 
  c_1 \begin{bmatrix}
  e^t \\ 0 \end{bmatrix}
  + c_2 \begin{bmatrix}
  e^{2t} \\ e^{2t} \end{bmatrix}
  = \begin{bmatrix}
  c_1 e^t + c_2 e^{2t} \\
  c_2 e^{2t}
  \end{bmatrix}$$

:::


## Example: radioactive decay

::: incremental

- Consider three substances $A$, $B$, $C$ in some container. Suppose
  that substance $A$ decays into substance $B$. Although $B$ is more
  stable than $A$, substance $B$ nevertheless also decays into the
  stable substance $C$.

- Assume that both $A$ and $B$ decay at rates proportional to the
  amount of substance present, with constants of proportionality $k_A>0$
  and $k_B>0$. 

- And assume that 1 gram of substance $A$ decays into 1 gram of
  substance $B$, and similarly that 1 gram of substance $B$ decays
  into 1 gram of substance $C$.


:::

-----

::: incremental

- Let's write $a=a(t),b=b(t),c=c(t)$ to indicate the amount of each
  substance present in the container after $t$ years.

- the system of equations modeling these quantities is homogeneous and
  is given by

  \begin{align*}
  a' & = - k_A a \\ 
  b' & = k_A a - k_B b \\
  c' & = k_B b \\
  \end{align*}

- in matrix form, this can be written as

  $$D \begin{bmatrix}
  a \\ b \\ c
  \end{bmatrix} = 
  \begin{bmatrix}
  -k_A & 0 & 0 \\
  k_A & -k_B & 0 \\
  0 & k_B & 0
  \end{bmatrix}
  \cdot 
  \begin{bmatrix}
  a \\ b \\ c
  \end{bmatrix}$$
  
:::


----

::: incremental

- now suppose that in addition, substance $A$ is added to the
  container at a constant rate of $\alpha$ grams per year
  
- and substance $C$ is extracted from the container at a
  constant rate of $\gamma$ grams per year.

- now the quantities $a,b,c$ are modeled by the inhomogeneous system


  \begin{align*}
  a' & = - k_A a + \alpha \\ 
  b' & = k_A a - k_B b \\
  c' & = k_B b - \gamma \\
  \end{align*}

- in matrix form, this system is

  $$D \begin{bmatrix}
  a \\ b \\ c
  \end{bmatrix} = 
  \begin{bmatrix}
  -k_A & 0 & 0 \\
  k_A & -k_B & 0 \\
  0 & k_B & 0
  \end{bmatrix}
  \cdot 
  \begin{bmatrix}
  a \\ b \\ c
  \end{bmatrix}
  + \begin{bmatrix}
  \alpha \\ 0 \\ -\gamma
  \end{bmatrix}$$
  
:::

## Properties

::: incremental

- Consider a system 
  $$(S) \quad D \mathbf{x} = 
  A \mathbf{x} + \mathbf{E}$$
  for an $n \times n$ matrix $A$ and $n \times 1$ vector $\mathbf{E}$.
  
- If $\mathbf{H}$ is a formula representing the general solution to the homogeneous
  equation $$(H) \quad D \mathbf{x} = A \mathbf{x},$$  and if $\mathbf{p}$ is a
  particular solution to $(S)$, then 
  the general solution to $(S)$ is given by
  $$\mathbf{x} = \mathbf{p} + \mathbf{H}.$$

:::

-----
  
::: incremental 
  
- Indeed, $\mathbf{p} + \mathbf{H}$ gives solutions to $(S)$ since
  \begin{align*} D[\mathbf{p} + \mathbf{H}] &= D\mathbf{p} &+
  D\mathbf{H} & \\ &= (A\mathbf{p} + \mathbf{E}) & + A\mathbf{H} \\ &=
  A(\mathbf{p} + \mathbf{H}) & & + \mathbf{E} \end{align*}
  
- and on the other hand, if $\mathbf{q}$ is any solution to $(S)$,
  then $\mathbf{q} - \mathbf{p}$ is a solution to $(H)$ since

  \begin{align*}
  D[\mathbf{q} - \mathbf{p}] &=  (A\mathbf{q} + \mathbf{E}) -  (A\mathbf{p} + \mathbf{E}) \\
  &= A(\mathbf{q} - \mathbf{p}) 
  \end{align*}
  
- Thus $\mathbf{q} - \mathbf{p}$ is one of the solutions described by
  the formula $\mathbf{H}$, so that 
  $\mathbf{q}$ is one of the solutions described by $\mathbf{p} + \mathbf{H}$.
  
   
:::

----

## Examples
    
- We saw earlier that the general solution to
  the homogeneous system
  $$(H) \quad D\mathbf{x} = \begin{bmatrix} 0 & 1 \\ -1 & 2
  \end{bmatrix} \mathbf{x}$$
  is given by
  \begin{align*}
  \mathbf{h} & = c_1 \begin{bmatrix}
  e^t \\ e^t
  \end{bmatrix}
  + c_2 \begin{bmatrix}
  te^t \\ (t+1)e^t
  \end{bmatrix}
  \end{align*}
  
---

- and the general solution to the non-homogeneous system  
  $$(\diamondsuit) \quad D\mathbf{x} = \begin{bmatrix} 0 & 1 \\ -1 & 2
  \end{bmatrix} \mathbf{x} + \begin{bmatrix} 0 \\ e^{2t} \end{bmatrix}$$
  is given by
  \begin{align*}
  \mathbf{x} & = \mathbf{p} + \mathbf{h} \\
  & = \begin{bmatrix}
  \dfrac{1}{2}t^2 e^t \\
  \dfrac{1}{2}(2t + t^2)e^t
  \end{bmatrix}
  + c_1 \begin{bmatrix}
  e^t \\ e^t
  \end{bmatrix}
  + c_2 \begin{bmatrix}
  te^t \\ (t+1)e^t
  \end{bmatrix}
  \end{align*}

## Bibliography {.unnumbered}

::: {.refs}
:::
