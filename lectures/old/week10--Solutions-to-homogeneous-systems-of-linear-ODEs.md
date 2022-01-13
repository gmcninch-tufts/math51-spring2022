---
author: George McNinch (Math 51 Fall 2021)
title: Week 10 - Solutions to homogeneous systems of linear ODEs
date: 2021-11-12
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture follows [@gutermanNitecki §3.7 & 3.8].


# Homogeneous systems: real roots

## Some terminology

Given an $n \times n$ matrix $A$ and an eigenvalue $\lambda$ of $A$,
we are going to refer to the *solution space* of the homogeneous
equation $(A - \lambda \mathbf{I_n})\mathbf{x} = \mathbf{0}$ as the $\lambda$-eigenspace of
$A$.

The non-zero vectors in this solution space are precisely the
$\lambda$-eigenvectors of $A$.


## Solutions from eigenvalues/eigenvectors

Consider a homogeneous system of linear ODEs *with constant coefficients*
$$(\clubsuit) \quad D \mathbf{x} = A \mathbf{x}$$
where $A$ is an $n\times n$ matrix.

. . .

If the *real number* $\lambda$ is an eigenvalue of $A$ and if
$\mathbf{v}$ is a corresponding eigenvector, then the vector-valued
function $$\mathbf{h}(t) = e^{\lambda t} \mathbf{v}$$ is a *solution*
to $(\clubsuit)$.

-------

Indeed, e.g. $\mathbf{h}(t) = e^{\lambda
t}\mathbf{v} = e^{\lambda t} \begin{bmatrix} v_1 \\ v_2 \\ \vdots \\  v_n
\end{bmatrix} = \begin{bmatrix} v_1 e^{\lambda t} \\ v_2 e^{\lambda t}
\\ \vdots \\ v_n e^{\lambda t} \end{bmatrix}.$

. . .

Then differentiation gives $D[\mathbf{h}(t)] = \lambda e^{\lambda t}
\mathbf{v}$.

. . .

While the fact that $\mathbf{v}$ is an eigenvector gives
$A \mathbf{h}(t) = e^{\lambda t} A \mathbf{v} = \lambda e^{\lambda t}
\mathbf{v}.$

## Towards the general solution

Supose that there are $n$ *linearly independent* eigenvectors
$\mathbf{v_1},\mathbf{v_2}, \cdots, \mathbf{v_n}$ for the matrix $A$.

. . .

Set $\mathbf{h_i}(t) = e^{\lambda_i t} \mathbf{v_i}$ for $1
\le i \le n$.

. . .

Since $\mathbf{h_i}(0) = \mathbf{v_i}$ and since the $\mathbf{v_i}$
are linearly independent, we see that the $\mathbf{h_i}$ generate the
general solution to the homogeneous equation $(*) \quad D \mathbf{x} = A \mathbf{x}$;

. . .

i.e. the general solution to $(*)$ is
$$\mathbf{x}(t) = c_1 \mathbf{h_1}(t) + c_2 \mathbf{h_2}(t) + \cdots + c_n \mathbf{h_n}(t).$$

. . .

- So a natural first question is this: under what conditions does an
  $n\times n$ matrix $A$ have $n$ linearly independent eigenvectors?

## Matrices with $n$ distinct eigenvalues.

Let $A$ be an $n \times n$ matrix.

::: incremental

- if $A$ has $n$ *distinct* eigenvalues $\lambda_1,\lambda_2,\dots,\lambda_n$
  choose an eigenvector $\mathbf{v_i}$ for each $\lambda_i$. \
  
- **Fact:** with these assumptions, the vectors
  $\mathbf{v_1},\dots,\mathbf{v_n}$ are always linearly independent.

:::

## Example

::: incremental

- let $A = \begin{bmatrix}
  3 & 1 \\
  -2 & 0
  \end{bmatrix}$

- the char. poly is $p(\lambda) = -\lambda(3-\lambda) + 2 =
  \lambda^2 - 3\lambda + 2 = (\lambda -2)(\lambda-1)$. 
  
- thus $A$ has eigenvalues $\lambda = 1,2$. In particular, it has two distinct eigenvalues.

- to find a $1$-eigenvector for $A$, we must consider the matrix
  equation $(A-\mathbf{I_2})\mathbf{x} = \mathbf{0}$.
  
- We have $A - \mathbf{I_2} = \begin{bmatrix} 2 & 1 \\ -2 & -1 \end{bmatrix}
  \sim \begin{bmatrix} 2 & 1 \\ 0 & 0 \end{bmatrix}$.
  
- Thus a $1$-eigenvector is $\begin{bmatrix} -1/2 \\ 1 \end{bmatrix}$ or
  $\mathbf{v} = \begin{bmatrix} -1 \\ 2 \end{bmatrix}$.

:::

-----

::: incremental

- to find a $2$-eigenvector for $A$ we must consider the eqn $(A -
  2\mathbf{I_2}) \mathbf{x} = \mathbf{0}$.

- we have $(A - 2\mathbf{I_2}) = \begin{bmatrix}1 & 1 \\ -2 & -2 
  \end{bmatrix} \sim \begin{bmatrix}1 & 1 \\ 0 & 0  
  \end{bmatrix}$.

- thus a $2$-eigenvector is $\mathbf{w} = \begin{bmatrix} -1 \\ 1
  \end{bmatrix}$.

- now the fact asserted earlier is that 
  $\mathbf{v}$ and $\mathbf{w}$ are *linearly independent*.
  
- recall that   $$\mathbf{v} = \begin{bmatrix} -1 \\ 2 \end{bmatrix},
\quad \mathbf{w} = \begin{bmatrix} -1 \\ 1
  \end{bmatrix}.$$

- we could of course just check this linearly independence directly.
  since $$\det \begin{bmatrix} -1 & -1 \\ 2 & 1 \end{bmatrix} = -1 +2
  =1 \ne 0$$ the vectors $\mathbf{v}$ and $\mathbf{w}$ are indeed
  linearly independent.  
  
:::

------

The linear independence just noted implies that the general solution
to the equation 
$$D \mathbf{x} = \begin{bmatrix}
  3 & 1 \\
  -2 & 0
  \end{bmatrix} \mathbf{x}$$
is given by 
$$\mathbf{x}(t) = c_1 e^t \mathbf{v} + c_2 e^{2t} \mathbf{w}
= c_1 e^t \begin{bmatrix} -1 \\ 2
\end{bmatrix} + c_2 e^{2t} \begin{bmatrix} -1 \\ 1
\end{bmatrix}
= \begin{bmatrix}
- c_1 e^t  - c_2 e^{2t} \\
2c_1e^t + c_2e^{2t} 
\end{bmatrix}$$

## The distinct eigenvalues of a square matrix

::: incremental

- let $A$ be an $n \times n$ matrix.

- Suppose that $\lambda_1,\dots,\lambda_m$ are the distinct
  eigenvalues of $A$ (each of which may have some multiplicity). 
  
  Note that $m \le n$.

- For each $i$, find linearly independent vectors which generate the
  $\lambda_i$-eigenspace 
  
  (i.e. the solution space to $(A -\lambda_i \mathbf{I_n})\mathbf{x} =
  \mathbf{0}$).
  
- **Fact**: the full list of vectors found in this way will be
  linearly independent.

- **Fact**: if $\lambda$ has multiplicity $d$ as root of the
  characteristic polynomial $p(\lambda)$, then the solution space
  to $(A - \lambda \mathbf{I_n}) \mathbf{x} = \mathbf{0}$ is generated
  by no more than $d$ linearly independent vectors.

:::

## Example

::: incremental

- Suppose the $3 \times 3$ matrix has two eigenvalues $\lambda = 2$
  and $\lambda = -3$, where $\lambda = -3$ has multiplicity two.

- since $\lambda=2$ has multiplicity one, the $2$-eigenspace of $A$ --
  i.e. the solution space to $(A - 2\mathbf{I_2})\mathbf{x} =
  \mathbf{0}$ -- is generated by a single vector $\mathbf{v}$.

- since $\lambda=-3$ has multiplicity two, the $(-3)$-eigenspace is
  generated by *at most two* linearly independent vectors.

- *if* the $(-3)$-eigenspace is generated by two linearly indep
  vectors $\mathbf{w}$ and $\mathbf{u}$, then the three vectors
  $\mathbf{v},\mathbf{w},\mathbf{u}$ are linearly indep and
  
  $$\mathbf{h_1}(t) = e^{2t} \mathbf{v}, \quad \mathbf{h_2}(t) = 
  e^{-3t}\mathbf{w}, \quad \mathbf{h_3}(t) = e^{-3t}\mathbf{u}$$
  
  generate the general solution to the system of ODEs $D \mathbf{x} = A \mathbf{x}$.

:::

----

::: incremental

- if the $(-3)$-eigenspace is generated by only one vector
  $\mathbf{w}$, then we know how to find two solutions to the system
  of ODEs $D \mathbf{x} = A \mathbf{x}$, namely
  
  $$\mathbf{h_1}(t) = e^{2t} \mathbf{v}, \quad  \mathbf{h_2}(t) = 
  e^{-3t}\mathbf{w}$$
  
- but we not yet seen how to find the general solution to this system
  (there are no other eigenvectors available, so we will need an
  alternate way to construct a solution -- we'll return to this
  later on!)
  

:::

## Example

::: incremental

- let $A = \begin{bmatrix} 1 & 2 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 1
  \end{bmatrix}$.
  
- the characteristic polynomial is $p(\lambda) = (1-\lambda)^2(2-\lambda)$.

- the eigenvalue $\lambda = 2$ has multiplicity one; to find an eigenvector we study
  the matrix $A - 2\mathbf{I_3} = \begin{bmatrix} -1 & 2 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & -1
  \end{bmatrix} \sim 
  \begin{bmatrix} 1 & -2 & 0 \\  0 & 0 & 1\\  0 & 0 & 0 
  \end{bmatrix}$

- The equation $(A - 2\mathbf{I_3})\mathbf{x} = \mathbf{0}$ has solution generated
  by $\mathbf{v} = \begin{bmatrix} 2 \\ 1 \\ 0 \end{bmatrix}.$
  
- so $\mathbf{v}$ is a $2$-eigenvector

:::

------

::: incremental

- The eigenvalue $\lambda = 1$ has multiplicity 2. So before we start,
  we know we will either find 1 or 2 linearly independent
  $1$-eigenvectors which generate the $1$-eigenspace.
  
- To find the generators, we consider the matrix
  $$A - \mathbf{I_3} = \begin{bmatrix} 0 & 2 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 0 \end{bmatrix}
  \sim \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{bmatrix}$$

- Looking for solutions to the matrix equation $(A - \mathbf{I_3}) \mathbf{x} = \mathbf{0}$, we see
  that $x_2$ is a "pivot variable" and $x_1,x_3$ are free variables. We thus find two linearly independent
  $1$-eigenvectors
  $$\mathbf{w} = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} \quad \text{and } \quad 
  \mathbf{u} = \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}.$$
  

:::

-----

::: incremental

- now the **Fact** from a previous slide tells us that $\mathbf{v},
  \mathbf{w}, \mathbf{u}$ are linearly independent.
  
- in particular, the general solution to the system of ODEs
  $D\mathbf{x} = A \mathbf{x}$ is given by
  
  $$\mathbf{x}(t) = c_1 e^{2t}\mathbf{v} + c_2 e^t\mathbf{w} + c_3 e^t \mathbf{u}
  = c_1 e^{2t} \begin{bmatrix} 2 \\ 1 \\ 0 \end{bmatrix}
  + c_2 e^t \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}
  + c_3 e^t \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}$$
   

:::

## An example we can't yet solve

::: incremental

- Let $A = \begin{bmatrix} 1 & 0 \\ 1 & 1 \end{bmatrix}$.

- the characteristic polynomial is $(1-\lambda)^2$, and the only
  eigenvalue is $\lambda = 1$ (with multiplicity two).
  
- the $1$-eigenspace is generated by the single vector
  $\mathbf{v} = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$
  
- $\mathbf{h}(t) = e^t \mathbf{v} = \begin{bmatrix} 0 \\ e^t
  \end{bmatrix}$ is a *solution* to $D \mathbf{x} = A \mathbf{x}$, but
  by itself it does not generate the general solution

:::

# Complex roots of the characteristic polynomial

## Complex eigenvalues

::: incremental

- Suppose that $\lambda = a + bi$ is a root of the characteristic
  polynomial of the $n \times n$ matrix $A$, where $a,b$ are real
  numbers and $b \ne 0$.

- then $\lambda$ is an eigenvalue of $A$

- corresponding eigenvectors will have complex number entries -- i.e.
  they will be vectors in $\mathbb{C}^n$ rather than $\mathbb{R}^n$.

:::

-----

::: incremental

- let's see this in action. Consider $A = \begin{bmatrix} 
  1 & -1 \\ 1 & 1
  \end{bmatrix}$.

- the characteristic polynomial is
  $$p(\lambda) = \det \begin{bmatrix} 1-\lambda & -1 \\ 1 & 1-\lambda \end{bmatrix}
  = (1-\lambda)^2 + 1 = \lambda^2 -2 \lambda + 2.$$
  
- it has roots $\lambda = 1 \pm i$ 

  (*one can use the quadratic formula to find them!*)

- let's find an eigenvector for $\lambda = 1+i$.

- we need to solve $\mathbf{0} = (A - (1+i)\mathbf{I_2})\mathbf{x}
  = \begin{bmatrix}   -i & -1 \\ 1 & -i \end{bmatrix}\mathbf{x}$.

:::

------

::: incremental

- as usual, we use row reduction:

  $$\begin{bmatrix}   -i & -1 \\ 1 & -i \end{bmatrix} \sim 
  \begin{bmatrix}   1 & -i \\ 1 & -i \end{bmatrix} \sim 
  \begin{bmatrix}   1 & -i \\ 0 & 0 \end{bmatrix}
  $$

- For a solution, $x_2$ is the free variable, and $x_1 - i x_2 = 0$.
  Setting $x_2 = 1$ gives the solution
  
  $$\mathbf{v} = \begin{bmatrix} i \\ 1 \end{bmatrix} =
  \begin{bmatrix} 0 \\ 1 \end{bmatrix} + i\begin{bmatrix} 1 \\ 0
  \end{bmatrix}.$$

- this vector $\mathbf{v}$ in $\mathbb{C}^2$ is a $(1+i)$-eigenvector
  for $A$.

- a similar calculation gives the $(1-i)$-eigenvector
  $$\mathbf{w} = \begin{bmatrix} -i \\ 1 \end{bmatrix} =
  \begin{bmatrix} 0 \\ 1 \end{bmatrix} + i\begin{bmatrix} -1 \\ 0
  \end{bmatrix} = 
  \begin{bmatrix} 0 \\ 1 \end{bmatrix} - i\begin{bmatrix} 1 \\ 0
  \end{bmatrix}.$$

- notice that $\mathbf{w}$ is the *complex conjugate* of the vector $\mathbf{v}$.

:::


-----

::: incremental

- now let's use the eigenvectors to find solutions
  to the system 
  $D \mathbf{x} = \begin{bmatrix} 
  1 & -1 \\ 1 & 1
  \end{bmatrix}\mathbf{x}.$

- the idea is that 
  $$\mathbf{x_1}(t) = e^{(1+i)t} \mathbf{v} = e^{(1+i)t} \begin{bmatrix} i \\ 1 \end{bmatrix}$$
  should be a "solution". It's only defect is that it is not *real-valued*.

- now use Euler's formula to write $e^{(1+i)t} = e^t(\cos(t) + i
  \sin(t))$. Then: \begin{align*} \mathbf{x_1}(t) &= e^t(\cos(t) + i
  \sin(t))\begin{bmatrix} i \\ 1 \end{bmatrix} = e^t\begin{bmatrix}
  (\cos(t) + i \sin(t))i \\ \cos(t) + i \sin(t) \end{bmatrix} \\ &=
  e^t\begin{bmatrix} -\sin(t) + i \cos(t) \\ \cos(t) + i \sin(t)
  \end{bmatrix}\\ &= e^t\begin{bmatrix} -\sin(t) \\ \cos(t)
  \end{bmatrix} + ie^t \begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix} \end{align*}
  
:::

----

::: incremental

- similarly for the eigenvalue $\lambda = 1-i$ we find that 
  $$\mathbf{x_2}(t) = e^{(1-i)t} \mathbf{w} = e^{(1-i)t} \begin{bmatrix} -i \\ 1 \end{bmatrix}$$
  should be a "solution" to $D \mathbf{x} = A \mathbf{x}$.

- this time Euler's formula says that $e^{(1-i)t} = e^t(\cos(-t) + i
  \sin(-t)) = e^t(\cos(t) - i \sin(t))$. Then:

  \begin{align*} \mathbf{x_2}(t) &= e^t(\cos(t) - i
  \sin(t))\begin{bmatrix} -i \\ 1 \end{bmatrix} = e^t\begin{bmatrix}
  -(\cos(t) - i \sin(t))i \\ \cos(t) - i \sin(t) \end{bmatrix} \\ &=
  e^t\begin{bmatrix} -\sin(t) - i \cos(t) \\ \cos(t) - i \sin(t)
  \end{bmatrix}\\ &= e^t\begin{bmatrix} -\sin(t) \\ \cos(t)
  \end{bmatrix} - ie^t\begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix} \end{align*}

:::

-----

::: incremental

- now let's observe that $\dfrac{1}{2}(\mathbf{x_1} + \mathbf{x_2})$ is also a
  solution to $D \mathbf{x} = A \mathbf{x}$, and  we see that 
  
  $$\dfrac{1}{2}(\mathbf{x_1} + \mathbf{x_2}) = \dfrac{1}{2} e^t
  \left[\left(\begin{bmatrix} -\sin(t) \\ \cos(t) \end{bmatrix} +
  i\begin{bmatrix} \cos(t) \\ \sin(t) \end{bmatrix}\right) +
  \left(\begin{bmatrix} -\sin(t) \\ \cos(t) \end{bmatrix} -
  i\begin{bmatrix} \cos(t) \\ \sin(t) \end{bmatrix}\right)\right] =
  e^t\begin{bmatrix} -\sin(t) \\ \cos(t) \end{bmatrix}$$

  is a *real valued* solution.
  
- similarly, $\dfrac{-i}{2}(\mathbf{x_1} - \mathbf{x_2})$ is also a
  solution, and $$\dfrac{-i}{2}(\mathbf{x_1} - \mathbf{x_2}) =
  \dfrac{-i}{2}e^t\left[\left(\begin{bmatrix} -\sin(t) \\ \cos(t)
  \end{bmatrix} + i\begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix}\right) - \left(\begin{bmatrix} -\sin(t) \\ \cos(t)
  \end{bmatrix} - i\begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix}\right) \right]= \dfrac{-i}{2} \cdot 2i \cdot e^t \begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix}$$
  which shows that $e^t\begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix}$ is also a *real-valued* solution.

:::


------

::: incremental

- We have now found real-valued solutions to $D \mathbf{x} = A \mathbf{x}$ as follows:
  $$\mathbf{y_1}(t) = e^t\begin{bmatrix} -\sin(t) \\ \cos(t)
  \end{bmatrix} \quad \text{and} \quad  \mathbf{y_2}(t) =e^t\begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix}$$

- since $$\det \begin{bmatrix} -e^t\sin(t) & e^t\cos(t) \\ e^t\cos(t)
  & e^t\sin(t) \end{bmatrix} =-e^t$$ is not zero e.g. when $t=0$, we conclude
  that the general solution is given by $$c_1 \mathbf{y_1} + c_2
  \mathbf{y_2} = c_1e^t\begin{bmatrix} -\sin(t) \\ \cos(t)
  \end{bmatrix} + c_2 e^t\begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix}$$

:::

-----

::: incremental

- recall that  our "non-real" solution was

  $$\mathbf{x_1} = e^{(1+i)t} \begin{bmatrix} i \\ 1 \end{bmatrix} = \begin{bmatrix}
  -\sin(t) \\ \cos(t) \end{bmatrix} + i\begin{bmatrix} \cos(t) \\
  \sin(t) \end{bmatrix}$$

- the argument(s) on the preceding slides showed that
  the *real part*
  $$\mathbf{y_1} = \operatorname{Re}(\mathbf{x_1}) = \begin{bmatrix} -\sin(t) \\ \cos(t)
  \end{bmatrix}$$
  and the *imaginary part*
  $$\mathbf{y_2} = \operatorname{Im}(\mathbf{x_1}) = \begin{bmatrix} \cos(t) \\ \sin(t)
  \end{bmatrix}$$

  are solutions to $D\mathbf{x} = A \mathbf{x}$ with linearly independent  initial vectors.
  
- in fact this construction works quite generally, as we'll record on
  the next slide.

:::

## Summarizing our observations

Let $A$ be an $n\times n$ matrix, and let $\lambda = a+ bi$ be an
eigenvalue for $A$ with $b \ne 0$ (thus $\lambda$ is a complex but not
real number).

. . .

Choose a $\lambda$-eigenvector $\mathbf{v}$ in $\mathbb{C}^n$ for $A$.

Then 

$$\mathbf{h_1} = \operatorname{Re}(e^{\lambda t} \mathbf{v}) \quad
\text{and} \quad
\mathbf{h_2} = \operatorname{Im}(e^{\lambda t} \mathbf{v})$$

are real-valued solutions to $D \mathbf{x} = A \mathbf{x}$ with
linearly independent initial vectors.

## Strategy

Given an $n \times n$ matrix, find a list of real-valued functions as follows:

- to each real eigenvalue $\lambda$, find as many linearly independent
  eigenvectors as possible. To each such eigenvector $\mathbf{v}$,
  associated the vector-valued function $e^{\lambda t} \mathbf{v}$.
  
- to each pair of complex eigenvalues $\lambda = a \pm bi$ with $b \ne
  0$, find as many linearly independent eigenvectors as possible. To
  each such eigenvector $\mathbf{w}$ in $\mathbb{C}^n$, associated the
  vector-valued functions $\operatorname{Re}(e^{\lambda t}\mathbf{w})$
  and $\operatorname{Im}(e^{\lambda t}\mathbf{w})$

- then the resulting list consists of solutions to the system $D
  \mathbf{x} = A \mathbf{x}$ with linearly independent initial
  vectors.  In particular, if there are $n$ such functions, they
  generate the general solution.

## Example

::: incremental

- $A = \begin{bmatrix} 1 & 0 & -9 \\ 0 & 2 & 0 \\ 1 & 0 & 1 \end{bmatrix}$

- the char poly is 
  \begin{align*}
  p(\lambda) &= \det \begin{bmatrix} 1-\lambda & 0 & -9 \\ 0 & 2-\lambda
  & 0 \\ 1 & 0 & 1-\lambda \end{bmatrix} \\
  &= (1-\lambda) \det \begin{bmatrix} 2-\lambda & 0 \\ 0 & 1 - \lambda \end{bmatrix}
  + (-9)\begin{bmatrix} 0 & 2-\lambda \\ 1 & 0 \end{bmatrix} \\
  &= (1-\lambda)(2-\lambda)(1-\lambda) + 9(2-\lambda) \\
  &= (2-\lambda)[(1-\lambda)^2 + 9] \\
  &= (2-\lambda)(\lambda^2 - 2\lambda + 10) \\
  \end{align*}

- so the eigenvalues are $\lambda=2$ and the roots of $\lambda^2 -
  2\lambda + 10$, which are $\lambda = 1 \pm 3i$.
  

:::

------

::: incremental

- let's find an eigenvector for $\lambda = 1+3i$, using row reduction
  on $A - (1+3i)\mathbf{I_3}$.

  $$A - (1+3i)\mathbf{I_3} = 
  \begin{bmatrix} -3i & 0 & -9 \\ 0 & 1-3i & 0 \\ 1 & 0 & -3i \end{bmatrix} \sim
  \begin{bmatrix} 3 & 0 & -9i \\ 0 & 1-3i & 0 \\ 1 & 0 & -3i \end{bmatrix} \sim 
  \begin{bmatrix} 1 & 0 & -3i \\ 0 & 1 & 0 \\ 0 & 0 & 0 \end{bmatrix}
  $$
  
- we find the eigenvector 
  $\mathbf{v} = \begin{bmatrix} 3i \\ 0 \\ 1 \end{bmatrix}.$
  
- to find the corresponding solutions to $D \mathbf{x} = A
  \mathbf{x}$, we must find the real and imaginary parts of the
  expression $e^{(1+3i)t} \begin{bmatrix} 3i \\ 0 \\ 1 \end{bmatrix}$.
  
:::

----

::: incremental

- we compute:

  \begin{align*} e^{(1+3i)t} \begin{bmatrix} 3i \\ 0 \\ 1
  \end{bmatrix} &= e^t(\cos(3t) + i\sin(3t))\begin{bmatrix} 3i \\ 0 \\
  1 \end{bmatrix} \\ &= e^t\begin{bmatrix} -3\sin(3t) + 3\cos(3t)i \\ 0
  \\ \cos(3t) + i \sin(3t) \end{bmatrix} = e^t\begin{bmatrix} -3\sin(3t)
  \\ 0 \\ \cos(3t) \end{bmatrix}
  + ie^t\begin{bmatrix} 3\cos(3t) \\ 0 \\  \sin(3t) \end{bmatrix}
  \end{align*}

- thus we find solutions
  $$\mathbf{h_1} = e^t\begin{bmatrix} -3\sin(3t)
  \\ 0 \\ \cos(3t) \end{bmatrix} \quad \text{and} \quad
  \mathbf{h_2} = e^t\begin{bmatrix} 3\cos(3t) \\ 0 \\  \sin(3t) \end{bmatrix}$$

:::

----

::: incremental

- to find the general solution it remains to find solution
  corresponding to a $2$-eigenvector.
  
- we have
  $$A - 2 \mathbf{I_3} = \begin{bmatrix} -1 & 0 & -9 \\
  0 & 0 & 0 \\
  1 & 0 & -1
  \end{bmatrix} \sim 
  \begin{bmatrix}
  1 & 0 & -1 \\
  0 & 0 & -10 \\
  0 & 0 & 0 \end{bmatrix} \sim 
  \begin{bmatrix}
  1 & 0 & -1 \\
  0 & 0 & 1 \\
  0 & 0 & 0 \end{bmatrix}$$
  
- we conclude that the $2$-eigenspace is generated by $\mathbf{u} =
  \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}$.

- so we find a solution $\mathbf{h_3} = e^{2t} \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}$.

:::

----

We may now conclude that 

  $$\mathbf{h_1} = e^t\begin{bmatrix} -3\sin(3t)
  \\ 0 \\ \cos(3t) \end{bmatrix}, \qquad
  \mathbf{h_2} = e^t\begin{bmatrix} 3\cos(3t) \\ 0 \\  \sin(3t) \end{bmatrix}, \quad
  \text{and} \quad
  \mathbf{h_3} = e^{2t} \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}$$

generate the general solution to $D \mathbf{x} = A \mathbf{x}$.


## Bibliography {.unnumbered}

::: {.refs}
:::
