---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 9 Wed \
  Homogeneous linear systems (complex roots)
date: 2022-03-16
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 3.8].

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
