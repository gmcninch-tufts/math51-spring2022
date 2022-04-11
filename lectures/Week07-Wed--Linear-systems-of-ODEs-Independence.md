---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 7 Wed \
  Linear ODEs & independence
date: 2022-02-28
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 3.4].

# Linear systems and linear independence


## Properties 

::: incremental

- We consider linear systems of ODEs given by a matrix equation 
  $$(S) \quad D \mathbf{x} = 
  A \mathbf{x} + \mathbf{E}$$
  for an $n \times n$ matrix $A$ and $n \times 1$ vector $\mathbf{E}$.
  
- We observed last time that if $\mathbf{H}$ is a formula representing
  the general solution to the homogeneous equation $$(H) \quad D
  \mathbf{x} = A \mathbf{x},$$ and if $\mathbf{p}$ is a particular
  solution to $(S)$, then the general solution to $(S)$ is given by
  $$\mathbf{x} = \mathbf{p} + \mathbf{H}.$$

:::

## Solutions of homogeneous systems

::: incremental

- Suppose that $\mathbf{h}_1, \mathbf{h}_2, \cdots, \mathbf{h}_m$ are solutions
  to the homogeneous system
  $$D\mathbf{x} = A \mathbf{x}.$$
  
  Then any linear combination of the vectors $\mathbf{h}_i$ is also a
  solution to the homogeneous system.
  
- Indeed,
  \begin{align*}
  D[c_1 \mathbf{h}_1 + \cdots + c_m \mathbf{h}_m] &= 
  c_1 D\mathbf{h}_1 + \cdots + c_m D\mathbf{h}_m \\
  &= c_1 A\mathbf{h}_1 + \cdots + c_m A\mathbf{h}_m \\
  &= A[c_1 \mathbf{h}_1 + \cdots + c_m \mathbf{h}_m]
  \end{align*}

:::


## Existence and Uniqueness Theorem

::: incremental 

- Consider $$D \mathbf{x} = A \mathbf{x} + \mathbf{E}$$ where $A$ is
  an $n \times n$ matrix and $\mathbf{E}$ is a vector with $n$-components.

- Assume that the entries $a_{ij}$ of $A$ and the entries $E_i$ of
  $\mathbf{E}$ are continuous functions of $t$ on some interval $I$,
  and let $t_0$ be a fixed value in $I$.

- For any $n$-vector $\mathbf{v}$ there is a solution $$\mathbf{x} =
  \vec \phi(t)$$ defined for $t$ in the interval $I$ with the
  property that $\mathbf{x}(t_0) = \mathbf{v}$.

- If $\mathbf{x} = \vec \psi(t)$ is a second solution and if $\vec
  \psi(t_0) = \mathbf{v}$, then $\vec \phi(t) =\vec \psi(t)$ for all
  $t$ in $I$.

:::

----

::: incremental

- We saw last time that the general solution to the homogeneous equation
  $$(\diamondsuit) \quad D\mathbf{x} = \begin{bmatrix} 0 & 1 \\ -1 & 2
  \end{bmatrix} \mathbf{x}$$
  is given by
  $\mathbf{H}(t) = c_1\mathbf{h}_1 + c_2 \mathbf{h}_2 = c_1\begin{bmatrix}
  e^t \\ e^t
  \end{bmatrix} + c_2 \begin{bmatrix}
  te^t \\ (t+1)e^t
  \end{bmatrix}.$

- if we want to find the solution $\mathbf{x}(t)$ with $\mathbf{x}(0) = \begin{bmatrix} 1 \\ -1 \end{bmatrix}$, 
  we must solve the equation
  $$\begin{bmatrix} 1 \\ -1 \end{bmatrix} = c_1\mathbf{h}_1(0) + c_2 \mathbf{h}_2(0) 
  = c_1 \begin{bmatrix} 1 \\ 1 \end{bmatrix} + c_2 \begin{bmatrix} 0 \\ 1 \end{bmatrix}    
  = \begin{bmatrix} c_1 \\ c_1 + c_2 \end{bmatrix}$$

- thus $c_1 = 1$ and $c_2 = -2$ and so the required solution is
  $\mathbf{x} = \begin{bmatrix}
  e^t \\ e^t
  \end{bmatrix} -2 \begin{bmatrix}
  te^t \\ (t+1)e^t
  \end{bmatrix}$

:::

## General solution to a homog system

::: incremental

- one consequence of the **Existence & Uniqueness Theorem** is a
  characterization of the general solution to a homogeneous system
  
- Suppose that $\mathbf{h_1},\cdots,\mathbf{h_m}$ are solutions to $D
  \mathbf{x} = A \mathbf{x}$ where $A$ is an $n \times n$ matrix.

- **Q**: under what conditions do the $\mathbf{h_i}$ generate the
  general solution??

- according to the **Existence and Uniqueness Theorem**, for any
  vector $\mathbf{v}$ in $\mathbb{R}^n$ we must be able to find
  coefficients $c_i$ for which $$\mathbf{v} = c_1 \mathbf{h_1}(t_0) +
  c_2 \mathbf{h_2}(t_0) + \cdots + c_m \mathbf{h_m}(t_0).$$

:::

-----

::: incremental

- notice for each $i$ that $\mathbf{h}_i$ has the form $\mathbf{h_i}=
  \begin{bmatrix} h_{1i}(t) \\ h_{2i}(t) \\ \vdots \\ h_{ni}(t)
  \end{bmatrix}$
  for functions $h_{ij}$.

- thus the equation $\mathbf{v} = c_1 \mathbf{h_1}(t_0) + c_2
  \mathbf{h_2}(t_0) + \cdots + c_m \mathbf{h_m}(t_0)$
  means that
  $$\begin{bmatrix}
  h_{11}(t_0) & h_{12}(t_0) & \cdots & h_{1m}(t_0) \\
  h_{21}(t_0) & h_{22}(t_0) & \cdots & h_{2m}(t_0) \\
  \vdots & \vdots & \ddots & \vdots \\
  h_{n1}(t_0) & h_{n2}(t_0) & \cdots & h_{nm}(t_0) \\
  \end{bmatrix}
  \begin{bmatrix}
  c_1 \\ c_2 \\ \vdots \\ c_m
  \end{bmatrix}
  =
  \begin{bmatrix}
  v_1 \\ v_2 \\ \vdots \\ v_n
  \end{bmatrix}  
  $$

- **Linear Algebra Results** imply: this eqn has a solution for every
  $\mathbf{v}$ if and only $n$ is equal to $m$ and the determinant of
  the coefficient matrix is $\ne 0$.

:::

## The Wronskian

For vectors (or vector-valued functions)
$\mathbf{h_1},\cdots,\mathbf{h_n}$ in $\mathbb{R}^n$, we define their
*Wronskian* -- or *Wronskian determinant* -- to be
$$W[\mathbf{h_1},\cdots,\mathbf{h_n}] = \det \begin{bmatrix} h_{11}(t)
& h_{12}(t) & \cdots & h_{1n}(t) \\ h_{21}(t) & h_{22}(t) & \cdots &
h_{2n}(t) \\ \vdots & \vdots & \ddots & \vdots \\ h_{n1}(t) &
h_{n2}(t) & \cdots & h_{nn}(t) \\ \end{bmatrix}$$

. . .

For example, if
$$\mathbf{h_1} = \begin{bmatrix}
 e^t \\ 1
\end{bmatrix} \quad
\mathbf{h_2} = \begin{bmatrix}
 e^{-t} \\ te^{t}
\end{bmatrix}$$
then
$$W[\mathbf{h_1},\mathbf{h_2}] = te^{2t} - e^{-t}.$$

## Wronskian test for general solution

::: incremental

- Suppose that $\mathbf{h_1},\cdots,\mathbf{h_n}$ are solutions to the
  homogeneous system $D \mathbf{x} = A \mathbf{x}$ where $A$ is an $n
  \times n$ matrix.

- Assume that the coefficients $a_{ij}$ of $A$ are continuous functions
  of $t$ on some interval $I$.

- The general solution to this equation is given by $$\mathbf{x} = c_1
  \mathbf{h_1} + \cdots + c_n \mathbf{h_n}$$ if and only if
  $W[\mathbf{h_1},\cdots,\mathbf{h_n}](t_0) \ne 0$ for some point $t_0$
  in $I$.

- important facts:

  - The general solution can not be generated by fewer than $n$ vectors.

  - Any collection of $n+1$ solutions is *always linearly dependent*

:::  

## Example:

Consider the homogeneous equation $(\diamondsuit) \quad D\mathbf{x} = A \mathbf{x}$ where $$A = \begin{bmatrix}
5 & -3 \\
3 & -5
\end{bmatrix}$$ and let
$$\mathbf{h_1} = \begin{bmatrix}
3e^{4t}\\
e^{4t}
\end{bmatrix}, \quad
\mathbf{h_2} = \begin{bmatrix}
e^{-4t} \\
3e^{-4t}
\end{bmatrix}$$

::: incremental

- check that $\mathbf{h_1}$ is a  solution to $(\diamondsuit)$.

  - $D \mathbf{h_1} = D \begin{bmatrix} 3e^{4t} \\ e^{4t}
    \end{bmatrix} = \begin{bmatrix} 12e^{4t} \\ 4e^{4t}
    \end{bmatrix}$.

  - $A \mathbf{h_1} = \begin{bmatrix}
    5 & -3 \\
    3 & -5
    \end{bmatrix}\begin{bmatrix} 3e^{4t} \\ e^{4t}
    \end{bmatrix} = 
	\begin{bmatrix} 
	5 \cdot 3e^{4t} - 3 e^{4t} \\
	3 \cdot 3e^{4t} - 5 e^{4t}
    \end{bmatrix}
	=
	\begin{bmatrix} 
	12 e^{4t} \\
	4 e^{4t}
    \end{bmatrix}	
	.$

  - this shows that $D \mathbf{h_1} = A \mathbf{h_1}$.

:::

----

::: incremental

- check that $\mathbf{h_2}$ is a  solution to $(\diamondsuit)$.

  - $D \mathbf{h_2} = D \begin{bmatrix} e^{-4t} \\ 3e^{-4t}
    \end{bmatrix} = \begin{bmatrix} -4e^{4t} \\ -12e^{4t}
    \end{bmatrix}$.

  - $A \mathbf{h_2} = \begin{bmatrix}
    5 & -3 \\
    3 & -5
    \end{bmatrix}\begin{bmatrix} e^{-4t} \\ 3e^{-4t}
    \end{bmatrix} = 
	\begin{bmatrix} 
	5 e^{-4t} - 3 \cdot 3e^{-4t} \\
	3 e^{-4t} - 5 \cdot 3e^{-4t}
    \end{bmatrix}
	=
	\begin{bmatrix} 
	-4 e^{-4t} \\
	-12 e^{-4t}
    \end{bmatrix}	
	.$

  - this shows that $D \mathbf{h_2} = A \mathbf{h_2}$.

- conclude that 
  $$c_1 \mathbf{h_1} + c_2 \mathbf{h_2} = 
  c_1 \begin{bmatrix}
  3e^{4t}\\
  e^{4t}
  \end{bmatrix} + 
  c_2 \begin{bmatrix}
  e^{-4t} \\
  3e^{-4t}
  \end{bmatrix} = 
  \begin{bmatrix}
  c_1 3 e^{4t} + c_2 e^{-4t}\\
  c_1 e^{4t} + c_2 3e^{-4t}
  \end{bmatrix}$$
  is a solution for every $c_1,c_2$.

:::

---

::: incremental

- we now check that
  $$\mathbf{x} = c_1 \begin{bmatrix}
  3e^{4t}\\
  e^{4t}
  \end{bmatrix} + 
  c_2 \begin{bmatrix}
  e^{-4t} \\
  3e^{-4t}
  \end{bmatrix}$$
  is the *general solution*. 
  
- For this we use the Wronskian test. We compute
  $$W[\mathbf{h_1}, \mathbf{h_2}] = \det \begin{bmatrix}
  3e^{4t} & e^{-4t} \\
  e^{4t} & 3e^{-4t}
  \end{bmatrix} = 9e^{4t} e^{-4t} - e^{4t}e^{-4t} = 9 - 1 = 8.$$

- Since $W[\mathbf{h_1}, \mathbf{h_2}](0)$ is non-zero, we conclude
  that $\mathbf{x}$ is the general solution to $D \mathbf{x} = A
  \mathbf{x}$ on $(-\infty,\infty)$.

:::


# Linear independence of vectors

## Recall

::: incremental

- If $A$ is an $n\times n$ matrix, we observed that the $n$-vectors
  $\mathbf{h_1},\cdots,\mathbf{h_n}$ generate the general solution to
  $D\mathbf{x} = A\mathbf{x}$ if and only if their Wronskian
  determinant is non-zero at some $t_0$.
  
- The preceding is really a statement about the *constant* vectors
  $\mathbf{h_1}(t_0),\cdots,\mathbf{h_n}(t_0)$ in $\mathbb{R}^n$.
  
- in our earlier example, the solutions were given by
  $$\mathbf{h_1} = \begin{bmatrix}
  3e^{4t}\\
  e^{4t}
  \end{bmatrix}, \quad
  \mathbf{h_2} = \begin{bmatrix}
  e^{-4t} \\
  3e^{-4t}
  \end{bmatrix}$$
  The constant vectors   $\mathbf{h_1}(0),\mathbf{h_2}(0)$ are given
  by
  $$\mathbf{h_1}(0) = \begin{bmatrix}
  3e^{4 \cdot 0 }\\
  e^{4 \cdot 0}
  \end{bmatrix} = 
  \begin{bmatrix}
  3\\
  1
  \end{bmatrix}
  , \quad
  \mathbf{h_2}(0) = \begin{bmatrix}
  1 \\
  3
  \end{bmatrix}$$

:::

## Linear independence of vectors

::: incremental

- $\mathbf{v}$ is a vector in $\mathbb{R}^n$ means:
  $\mathbf{v} = \begin{bmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{bmatrix}$ for $v_i$ in $\mathbb{R}$.

- The $\mathbf{v_1},\mathbf{v_2},\cdots,\mathbf{v_k}$ in
  $\mathbb{R}^n$ are *linearly dependent* if there are scalars
  $c_1,c_2,\cdots,c_k$ with at least one $c_i \ne 0$ such that
  $$c_1\mathbf{v_1} + c_2 \mathbf{v_2} + \cdots + c_k \mathbf{v_k} =
  \mathbf{0}.$$ Otherwise, the vectors are *linearly independent*.
  
- Note that all $\mathbf{v_i}$ must be vectors in $\mathbb{R}^n$ -
  i.e. they must have the same size.  But we don't require that the
  *number* of vectors $k$ be equal to $n$ in the definition.

:::

## Linear independence examples

::: incremental

- check for independence
  $$\mathbf{v_1}= \begin{bmatrix}
  1 \\ 1 \\ 1
  \end{bmatrix}
  \quad
  \mathbf{v_2}= \begin{bmatrix}
  1 \\ 2 \\ -1
  \end{bmatrix}
  \quad
  \mathbf{v_3}= \begin{bmatrix}
  1 \\ 0 \\ 3
  \end{bmatrix}$$
  
- suppose that $c_1 \mathbf{v_1} + c_2 \mathbf{v_2} + c_3 \mathbf{v_3}  = \mathbf{0}$.  

- thus
  $$\begin{bmatrix} 0\\0\\0 \end{bmatrix}=
  c_1 \begin{bmatrix}
  1 \\ 1 \\ 1
  \end{bmatrix}
  + c_2 \begin{bmatrix}
  1 \\ 2 \\ -1
  \end{bmatrix}
  + c_3 \begin{bmatrix}
  1 \\ 0 \\ 3
  \end{bmatrix}
  =
  \begin{bmatrix}
  c_1 + c_2 + c_3 \\
  c_1 + 2c_2  \\
  c_1 -c_2 + 3c_3
  \end{bmatrix}$$

:::

----

::: incremental

- Thus we get three equations
  $$\left\{\begin{matrix}
  0 & = & c_1 + c_2 + c_3 \\
  0 & = & c_1 + 2c_2 \\
  0 & = & c_1 - c_2 + 3c_3
  \end{matrix}\right.$$

- subtracting the 1st equation from the 2rd gives $0 =  c_2 -
  c_3$. 
  
- the first equation now becomes $c_1 + 2c_2 = 0$.

- for any value $c_3$, if we take $c_2 = c_3$ and $c_1 = -2c_3$, we
  get a solution.


- in other words, 


  $$(-2c_3) \begin{bmatrix}
  1 \\ 1 \\ 1
  \end{bmatrix}
  + c_3 \begin{bmatrix}
  1 \\ 2 \\ -1
  \end{bmatrix}
  + c_3 \begin{bmatrix}
  1 \\ 0 \\ 3
  \end{bmatrix}
  =
  \begin{bmatrix}
  -2c_3 + c_3 + c_3 \\
  -2c_3 + 2c_3  \\
  -2c_3 -c_3 + 3c_3
  \end{bmatrix} =
  \begin{bmatrix} 0\\0\\0 \end{bmatrix}$$

:::

----

::: incremental

- for a numerical example, take 
  $\begin{bmatrix} c_1 \\ c_2 \\ c_3
  \end{bmatrix}
  = \begin{bmatrix} -2 \\ 1 \\ 1
  \end{bmatrix}.$

- then
  $$(-2) \begin{bmatrix}
  1 \\ 1 \\ 1
  \end{bmatrix}
  +  \begin{bmatrix}
  1 \\ 2 \\ -1
  \end{bmatrix}
  +  \begin{bmatrix}
  1 \\ 0 \\ 3
  \end{bmatrix}
  =
  \begin{bmatrix}
  -2 + 1 + 1 \\
  -2 + 2  \\
  -2 -1 + 3
  \end{bmatrix} =
  \begin{bmatrix} 0\\0\\0 \end{bmatrix}$$

:::

## Linear independence via determinant

::: incremental

- Given $n$ vectors $\mathbf{v_1},\cdots,\mathbf{v_n}$ in $\mathbb{R}^n$,
  we can detect their linear independence using the *determinant*.
  
- Indeed, write $\mathbf{v_i} = \begin{bmatrix}
  v_{1i} \\ v_{2i} \\ \vdots \\ v_{ni}
  \end{bmatrix}$ for $1 \le i \le n$.
  
- Then the vectors are linearly independent if and only if 
  $$\det \begin{bmatrix}
  v_{11} & v_{12} & \cdots & v_{1n} \\
  v_{21} & v_{22} & \cdots & v_{2n} \\
  \vdots & \vdots & \ddots & \vdots \\
  v_{n1} & v_{n2} & \cdots & v_{nn} \\
  \end{bmatrix} \ne 0$$

:::

-----

::: incremental

- this *determinant* technique only works to test the independence of
  $n$ vectors in $\mathbb{R}^n$.

- e.g. it can't be used *directly* to decide whether the vectors
  $\mathbf{v_1},\mathbf{v_2},\mathbf{v_3}$ in $\mathbb{R}^4$ are
  linearly independent

:::

## example again

::: incremental

- a couple of slides back we asked about the dependence of the vectors

  $$\mathbf{v_1}= \begin{bmatrix}
  1 \\ 1 \\ 1
  \end{bmatrix}
  \quad
  \mathbf{v_2}= \begin{bmatrix}
  1 \\ 2 \\ -1
  \end{bmatrix}
  \quad
  \mathbf{v_3}= \begin{bmatrix}
  1 \\ 0 \\ 3
  \end{bmatrix}$$

- notice that
  \begin{align*}
  \det \begin{bmatrix}
  1 & 1 & 1 \\
  1 & 2 & 0 \\
  1 & -1 & 3
  \end{bmatrix} =&
  \det\begin{bmatrix} 2 & 0 \\ -1 & 3
  \end{bmatrix}
  - \det\begin{bmatrix} 1 & 0 \\ 1 & 3\end{bmatrix}
  + \det\begin{bmatrix} 1 & 2 \\ 1 & -1 \end{bmatrix} \\
  =& 6 -3 + (-1-2) = 0
  \end{align*}

- thus the vectors are dependent (as we saw earlier in a different way)

:::

## Another example

::: incremental

- check for independence:
  $$\mathbf{v_1}  = \begin{bmatrix}
   0 \\ -1 \\ 0 \\ 2
  \end{bmatrix}, \quad 
  \mathbf{v_2}  = \begin{bmatrix}
  0 \\ 0 \\ 2 \\ -2
  \end{bmatrix}, \quad 
  \mathbf{v_3}  = \begin{bmatrix}
  1 \\ 0 \\ 0 \\ \sqrt{2}
  \end{bmatrix}$$

- since we consider three vectors in $\mathbb{R}^4$, we can't use the
  determinant directly.
  
- consider constants $c_1,c_2,c_3$ for which 
  $$\mathbf{0} = c_1 \mathbf{v_1} + c_2 \mathbf{v_2} + c_3 \mathbf{v_3}.$$

:::

----

::: incremental

- then
  $$\begin{bmatrix} 0 \\ 0 \\ 0 \\0 \end{bmatrix} = 
  c_1 \begin{bmatrix}
   0 \\ -1 \\ 0 \\ 2
  \end{bmatrix} + c_2 \begin{bmatrix}
  0 \\ 0 \\ 2 \\ -2
  \end{bmatrix} + c_3 \begin{bmatrix}
  1 \\ 0 \\ 0 \\ \sqrt{2}
  \end{bmatrix}
  = \begin{bmatrix}
  c_3 \\ -c_1 \\ 2c_2 \\ 2c_1 -2c_2 + \sqrt{2}c_3
  \end{bmatrix}$$

- equality of the first three coefficients shows that $c_3 = 0$, $-c_1
  = 0$ and $2c_2 = 0$, so that $c_1=c_2=c_3=0$. This confirms that the
  vectors are linearly independent.

:::

## Solutions to homogeneous systems

::: incremental

- Consider an $n \times n$ matrix $A$ and the homogeg. system
  $(\diamondsuit) \quad D \mathbf{x} = A \mathbf{x}$.

- suppose that the entries $a_{ij} = a_{ij}(t)$ of $A$ are all
  continuous functions of $t$ on some interval $I$, and let $t_0$ be a
  point in $I$.

- if the $n$-solutions $\mathbf{h_1}, \cdots, \mathbf{h_n}$ are
  *solutions* to $(\diamondsuit)$, then the $\mathbf{h_i}$ *generate
  the general solution* provided that the vectors $$\mathbf{h_1}(t_0) \quad, \quad
  \mathbf{h_2}(t_0)\quad ,\quad \cdots \quad , \quad \mathbf{h_n}(t_0)$$ in $\mathbb{R}^n$ are
  *linearly independent*.

::: 



## Bibliography {.unnumbered}

::: {.refs}
:::
