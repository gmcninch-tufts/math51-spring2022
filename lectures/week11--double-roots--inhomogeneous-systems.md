---
author: George McNinch (Math 51 Fall 2021)
title: Week 11 - Multiple roots & Inhomogeneous systems
date: 2021-11-12
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture follows [@gutermanNitecki, sec. 3.9 & 3.10].


# Multiple roots

## Goal

Recall that if the square matrix $A$ has an eigenvalue $\lambda$ with
multiplicity $d \ge 1$, we have seen that there can be no more than
$d$ linearly independent $\lambda$-eigenvectors.

. . .

Our aim is to find the general solution to $D \mathbf{x} = A
\mathbf{x}$.  If there are *fewer than* $d$ linearly independent
$\lambda$-eigenvectors, we will not be able to describe the general
solution using only eigenvectors.

. . .

Thus, we require a new method of constructing solutions, which we are
now going to describe.


## The Cayley-Hamilton Theorem

::: incremental

- Let $A$ be an $n \times n$ matrix, and consider a polynomial
  $$q(T) = a_0 + a_1 T + a_2 T^2 + \cdots + a_n T^n$$
  where each $a_i$ is a scalar.

- We can compute *powers* of the square matrix $A$:

  \begin{align*}
  A^0 &= \mathbf{I_n}, \quad A^1 = A, \quad A^2 = A \cdot A, \quad
  A^3 = A \cdot A^2 \\ 
  A^n &= A \cdot A^{n-1}, \quad \cdots
  \end{align*}

- And thus we may *evaluate* $q(T)$ at the matrix $A$:

  $$q(A) = a_0 + a_1 A + a_2 A^2 + \cdots + a_n A^n$$

  Then $q(A)$ is an $n\times n$ matrix.

:::

-----

::: incremental

- The [*Cayley-Hamilton
  Theorem*](https://en.wikipedia.org/wiki/Cayley%E2%80%93Hamilton_theorem)
  asserts that if $p(T)$ is the *characteristic polynomial* of
  $A$, then
  
  $$p(A) = \mathbf{0}.$$

- e.g. if $A$ is $2 \times 2$ and has characteristic polynomial
  $$T^2 + aT + b,$$ then
  $$A^2 + aA + b\mathbf{I_n} = \mathbf{0}  = \begin{bmatrix} 0 & 0 \\
  0 & 0 \end{bmatrix}.$$
:::

## Matrices with only one eigenvalue


::: incremental


- let's consider  the situation where $A$ is $2 \times 2$ and has
  only one *real* eigenvalue $\lambda$ occuring with multiplicity $2$.
  
- Since the char. polynomial is $p(T) = (T - \lambda)^2$, The
  Cayley-Hamilton Theorem says that $$(A - \lambda \mathbf{I_n})^2 =
  \mathbf{0}.$$

- If there are $2$ linearly independent $\lambda$-eigenvectors for $A$,
  then in fact $A - \lambda \mathbf{I_2} = \mathbf{0}$.

- If there is only one linearly independent $\lambda$-eigenvector for
  $A$, we may find some vector $\mathbf{v}$ in $\mathbb{R}^2$ which is
  not a $\lambda$-eigenvector.

- then $(A-\lambda\mathbf{I_2}) \mathbf{v} \ne \mathbf{0}$
  while 
  $$(A-\lambda\mathbf{I_2})^2 \mathbf{v} = \mathbf{0}.$$

:::

------

::: incremental

- in the setting of the previous slide, suppose that
  $$(A-\lambda\mathbf{I_2})^2 \mathbf{v} = \mathbf{0} 
  \quad \text{while} \quad
  \mathbf{v_1} = (A-\lambda\mathbf{I_2}) \mathbf{v} \ne \mathbf{0} $$

- Let's define

  $$\mathbf{h}(t) = e^{\lambda t} ( \mathbf{v} + t\mathbf{v_1})$$

- we claim that $\mathbf{h}(t)$ is a *solution* to $D\mathbf{x} = A
  \mathbf{x}$.
  
  
- we first notice that since $\mathbf{v_1} = (A-\lambda\mathbf{I_2})
  \mathbf{v} = A\mathbf{v} -\lambda\mathbf{v}$, we have $$A \mathbf{v}
  = \lambda \mathbf{v} + \mathbf{v_1}.$$

- Moreover, since $(A-\lambda \mathbf{I_2})\mathbf{v_1} = (A-\lambda
  \mathbf{I_2})^2\mathbf{v} = \mathbf{0}$, we know that $\mathbf{v_1}$ is an
  eigenvector -- i.e. $$A \mathbf{v_1} = \lambda \mathbf{v_1}.$$

:::

----

::: incremental

- Let's check that $\mathbf{h}(t) = e^{\lambda t}(\mathbf{v} + t
  \mathbf{v_1})$ is a solution to $D \mathbf{x} = A\mathbf{x}$:

- we have
  \begin{align*}
  D[\mathbf{h}(t)] &= D[e^{\lambda t}\mathbf{v}] + D[te^{\lambda
  t}\mathbf{v_1}] \\
  &= \lambda e^{\lambda t} \mathbf{v} + e^{\lambda t}
  (D+\lambda)[t\mathbf{v_1}] \\
  &= e^{\lambda t} \left[\lambda  \mathbf{v} + 
  (D+\lambda)[t\mathbf{v_1}]\right] \\
  &= e^{\lambda t} [\lambda \mathbf{v} + \mathbf{v_1} 
  + \lambda t  \mathbf{v_1}].
  \end{align*}
  
- and using the formulas $A \mathbf{v} = \lambda
  \mathbf{v} + \mathbf{v_1}$ and $A \mathbf{v_1} = \lambda \mathbf{v_1}$ we get
  
  \begin{align*}
  A \mathbf{h}(t) &= e^{\lambda t} A \mathbf{v} + te^{\lambda t}A\mathbf{v_1} \\
  &= e^{\lambda t} \left[A \mathbf{v} + tA\mathbf{v_1}\right] \\
  &= e^{\lambda t} \left [\lambda \mathbf{v} + \mathbf{v_1} + \lambda t  \mathbf{v_1} \right ].
  \end{align*}

  
:::

## Example

::: incremental

- Let $A = \begin{bmatrix} 2 & 1 \\ -1 & 4 \end{bmatrix}$; find the
  general solution to $D \mathbf{x} = A \mathbf{x}$.

- The char. poly of $A$ is $$\det \begin{bmatrix} 2-\lambda & 1 \\ -1 &
  4-\lambda \end{bmatrix} = (2-\lambda)(4-\lambda) + 1 = \lambda^2
  -6\lambda + 9 = (\lambda - 3)^2$$

- so $3$ is the only eigenvalue

- to find eigenvector(s), consider the equation $(A - 3\mathbf{I_2})\mathbf{x} = 0$:
  $$A - 3\mathbf{I_2}= \begin{bmatrix} -1 & 1 \\ -1 & 1\end{bmatrix}
  \sim \begin{bmatrix} 1 & -1 \\ 0 & 0\end{bmatrix}.$$
  So $\begin{bmatrix} 1 \\ 1 \end{bmatrix}$ generates the $3$-eigenspace.

:::

-----

::: incremental

- Let's confirm the Cayley-Hamilton theorem in this case. Note that
  $$(A - 3\mathbf{I_2})^2 = \begin{bmatrix} -1 & 1 \\ -1 & 1\end{bmatrix}^2 
  =\begin{bmatrix} -1 & 1 \\ -1 & 1\end{bmatrix}\cdot \begin{bmatrix} -1 & 1 \\ -1 & 1\end{bmatrix}
  = \begin{bmatrix} 0 & 0  \\ 0 & 0 \end{bmatrix}$$
  
- to find another solution to $D \mathbf{x} = A\mathbf{x}$, proceed as follows

- choose any non-zero solution $\mathbf{v}$ to $(A - 3\mathbf{I_2})^2\mathbf{x} =
  \mathbf{0}$ which is not an eigenvector.
  
- in this case, any vector in $\mathbf{R}^2$ is a solution, and we can take for example  
  $$\mathbf{v} = \begin{bmatrix} 1\\0\end{bmatrix}.$$
  
:::

------

::: incremental

- let's notice that $\mathbf{v_1} = (A-3\mathbf{I_2})\mathbf{v}$ is an eigenvector:

  $$\mathbf{v_1} = (A-3\mathbf{I_2})\mathbf{v} = \begin{bmatrix} -1 & 1 \\ -1 & 1\end{bmatrix}
  \begin{bmatrix} 1\\0\end{bmatrix}= \begin{bmatrix} -1 \\ -1 \end{bmatrix} 
  = (-1)\begin{bmatrix} 1 \\ 1 \end{bmatrix}.$$

- following our early construction, we find a solution as follows:
  \begin{align*}
  \mathbf{h}(t) =& e^{3t} [ \mathbf{v} + t\mathbf{v_1} ]
  = e^{3t} [ \mathbf{v} + t(A - 3\mathbf{I_2})\mathbf{v} ] \\
  =& e^{3t} \left( \begin{bmatrix} 1\\0\end{bmatrix}  + t\begin{bmatrix} -1 \\ -1 \end{bmatrix}  \right) \\
  =& e^{3t} \begin{bmatrix} 1 -t \\ -t \end{bmatrix}
  \end{align*}

:::

-----

let's check that $\mathbf{h}(t) = e^{3t} \begin{bmatrix} 1 -t \\ -t \end{bmatrix}$ is a solution.

. . .

  \begin{align*}
  D[\mathbf{h}(t)] &= D\left[e^{3t} \begin{bmatrix} 1 -t \\ -t \end{bmatrix}\right] \\
  &= e^{3t} (D+3)\begin{bmatrix} 1 -t \\ -t \end{bmatrix} \\
  &= e^{3t} \left(\begin{bmatrix}-1 \\ -1\end{bmatrix} + 3\begin{bmatrix}1-t \\ -t\end{bmatrix} \right)
  = e^{3t} \begin{bmatrix} 2 - 3t \\ -1 -3t\end{bmatrix}
  \end{align*}

. . .

  \begin{align*}
  A\mathbf{h}(t) &= e^{3t} \begin{bmatrix} 2 & 1 \\ -1 & 4 \end{bmatrix}\begin{bmatrix} 1 -t \\ -t \end{bmatrix} \\
  &= e^{3t} \begin{bmatrix} 2(1-t) -t \\ -1(1-t) -4t \end{bmatrix}
  = e^{3t} \begin{bmatrix} 2 - 3t \\ -1 -3t \end{bmatrix}
  \end{align*}


---


::: incremental

- **Conclusion**:  the solutions
  $$e^{3t} \begin{bmatrix} 1 \\ 1 \end{bmatrix}
  \quad \text{and} \quad
  e^{3t} \begin{bmatrix} 1 -t \\ -t \end{bmatrix}$$
  generate the general solution to 
  $$D \mathbf{x} = \begin{bmatrix} 2 & 1 \\ -1 & 4 \end{bmatrix} \mathbf{x}$$
  
- Indeed, both are solutions, and their initial vectors 
  $$\begin{bmatrix} 1 \\ 1 \end{bmatrix} 
  \quad \text{and} \quad
  \begin{bmatrix} 1 \\ 0 \end{bmatrix}$$ 
  at $t=0$ are linearly independent
  
:::

## Double roots, in general

::: incremental

- the procedure used in the previous example works in general for *double roots*.

- Suppose that the characteristic polynomial of the $n \times n$ matrix $A$
  is 
  
  $$p(T) = (T-\lambda)^2 q(T)$$
  
  where $\lambda$ is *real* and not a root of $q(T)$, so $2$ is the multiplicity
  of $\lambda$ as a root of $p(T)$.
  
- A refinement of the Cayley-Hamilton theorem shows that the
  matrix equation $$(A-\lambda \mathbf{I_n})^2 \mathbf{x} =
  \mathbf{0}$$ has exactly $2$ linearly independent solutions.
  
:::

-----

::: incremental
  
- as a remark, if $\mu$ is an eigenvalue with multiplicity $d$,
  solutions to $(A-\mu \mathbf{I_n})^d \mathbf{x} = \mathbf{0}$ are
  known as *generalized eigenvectors* of $A$

- when $d=2$, there are $2$ lin indep generalized
  $\lambda$-eigenvectors.

- if there are $2$ lin indep $\lambda$-eigenvectors, they determine solutions as usual
  
- otherwise, choose any generalized $\lambda$-eigenvector $\mathbf{v}$
  which is not actually an eigenvector.
  
- Since $(A - \lambda \mathbf{_n})^2 \mathbf{v} = \mathbf{0}$,
  the vector $\mathbf{v_1} = (A - \lambda \mathbf{_n}) \mathbf{v}$
  is an eigenvector, and $\mathbf{v}$ and $\mathbf{v_1}$ are *linearly independent*.
  
:::

---

::: incremental
  
- and we find a solution $$\mathbf{h_0}(t) = e^{\lambda t} [
  \mathbf{v} + t\mathbf{v_1} ] = e^{\lambda t} [ \mathbf{v} +
  t(A-\lambda \mathbf{I_n})\mathbf{v} ]$$ to $D\mathbf{x} = A
  \mathbf{x}$ with $\mathbf{h_0}(0) = \mathbf{v}$.

- Moreover, we have a solution determined by the eigenvector
  $\mathbf{v_1}$ $$\mathbf{h_1}(t) = e^{\lambda t} \mathbf{v_1}$$

- since $\mathbf{h_0}(0) = \mathbf{v}$ and $\mathbf{h_1}(0) =
  \mathbf{v_1}$, these solutions have linearly independent initial
  vectors.

:::

## Example

::: incremental

- The matrix $A = \begin{bmatrix} 2 & 1 & 1 \\ 0 & 2 & 1 \\ 0 & 0 & 3
  \end{bmatrix}$ has eigenvalues $\lambda = 2$ with multiplicity 2,
  and $\lambda = 3$ with multiplicity 1.

- Let's find two solutions to $D \mathbf{x} = A \mathbf{x}$ arising
  from $\lambda = 2$ which have linearly independent initial vectors.

- Let's first compute: $$(A - 2\mathbf{I_3})^2 = \begin{bmatrix} 0 & 1 &
  1 \\ 0 & 0 & 1 \\ 0 & 0 & 1 \end{bmatrix}^2 = \begin{bmatrix} 0 & 1 &
  1 \\ 0 & 0 & 1 \\ 0 & 0 & 1 \end{bmatrix} \begin{bmatrix} 0 & 1 & 1 \\
  0 & 0 & 1 \\ 0 & 0 & 1 \end{bmatrix}
  = 
  \begin{bmatrix}
  0 & 0 & 2 \\
  0 & 0 & 1 \\
  0 & 0 & 1 
  \end{bmatrix}$$

- Thus we see that the equation $(A - 2\mathbf{I_3})^2 \mathbf{x} =
  \mathbf{0}$ has solutions generated by $\mathbf{v} = \begin{bmatrix}
  1 \\ 0 \\ 0 \end{bmatrix}$ and $\mathbf{w} = \begin{bmatrix} 0 \\ 1
  \\ 0 \end{bmatrix}$.

:::

-------

::: incremental

- Notice that $\mathbf{v}= \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$
  is a $2$-eigenvector, but $\mathbf{w} = \begin{bmatrix} 0 \\ 1 \\ 0
  \end{bmatrix}$ is *not* a $2$-eigenvector, since $A \mathbf{w} =
  \begin{bmatrix} 1 \\ 2 \\ 0 \end{bmatrix}$ is not a multiple of
  $\mathbf{w}$.

- Now, $\mathbf{w_1} = (A - 2\mathbf{I_3})\mathbf{w} = \begin{bmatrix}
  0 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & 1 \end{bmatrix} \cdot
  \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$

- so the generalized eigenvector $\mathbf{w}$ determines a solution

  \begin{align*}
  \mathbf{h_1}(t)  =& 
  e^{2t}(\mathbf{w} + t(A - 2\mathbf{I_3})\mathbf{w})
  = e^{2t}(\mathbf{w} + t\mathbf{w_1}) \\ =& e^{2t}\left ( 
  \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} 
  + t \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} 
  \right)
  = e^{2t} \begin{bmatrix} t \\ 1 \\ 0 \end{bmatrix}
  \end{align*}

:::

----

::: incremental

- and the eigenvector $\mathbf{v}$ determines a solution
  $$\mathbf{h_2}(t) = e^{2t} \mathbf{v} = e^{2t} \begin{bmatrix} 1 \\
  0 \\ 0 \end{bmatrix}$$
  
- moreover,
  $$\mathbf{h_1}(0)= e^{2t} \begin{bmatrix} t \\ 1 \\ 0 \end{bmatrix} \bigg\vert_{t=0}
  =\begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix} = \mathbf{w}$$

  $$\mathbf{h_2}(0)= e^{2t} \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} \bigg \vert_{t=0}
  = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} = \mathbf{v}$$

- so $\mathbf{h_1}$ and $\mathbf{h_2}$ have linearly independent initial vectors.

:::

----

- to find the general solution to $D \mathbf{x} = A \mathbf{x}$ it
  only remains to find a $3$-eigenvector $\mathbf{u}$ and set
  $\mathbf{h_3}(t) = e^{3t} \mathbf{u}$.



# Inhomogeneous systems

## Overview

::: incremental

- An *inhomogeneous system* has the form $$(\clubsuit) \quad D \mathbf{x} = A
  \mathbf{x} + \mathbf{E}(t).$$

- if $\mathbf{H}(t)$ is the general solution to the corresponding
  homogeneous system $$(H) \quad D \mathbf{x} = A \mathbf{x}$$ and if 
  $\mathbf{p}(t)$ is a *particular solution* to $(\clubsuit)$, the general solution to 
  $(\clubsuit)$ is given by
  $$\mathbf{x}(t) = \mathbf{H}(t) + \mathbf{p}(t).$$

- we've already studied how to find $\mathbf{H}(t)$; it remains to
  describe how to find a particular solution.

:::

## The method

::: incremental

- The general solution of $(H)$ has the form
  $$\mathbf{H}(t) = c_1\mathbf{h_1}(t) + \cdots + c_n \mathbf{h_n}(t)$$
  for suitable solutions $\mathbf{h_i}(t)$.

- by analogy with our earlier method(s) for finding particular solutions, we seek
  a particular solution of the form
  $$\mathbf{p}(t) = c_1(t)\mathbf{h_1}(t) + \cdots + c_n(t) \mathbf{h_n}(t)$$
  where the coefficients $c_i(t)$ are allowed to be *functions of $t$*.


:::

----

::: incremental

- In order to find the requirements on the functions $c_i(t)$, we need to compute
  $D[\mathbf{p}(t)]$. We begin with
  $$D[c_i(t)\mathbf{h_i}(t)] =
  c_i'(t) \mathbf{h_i}(t) + c_i(t) \mathbf{h_i}'(t).$$


- on the other hand, since $\mathbf{h_i}(t)$ is a solution to $(H)$, we have
  $A\mathbf{h_i}(t) = \mathbf{h_i}'(t).$ Thus
  $$A[c_i(t) \mathbf{h_i}(t)] = c_i(t) A\mathbf{h_i}(t) = c_i(t) \mathbf{h_i}'(t)$$

- Since we assume $D\mathbf{p}(t) = A\mathbf{p}(t) + \mathbf{E}(t)$, we find that
  $$\sum_{i=1}^n \left[c_i'(t) \mathbf{h_i}(t) + c_i(t) \mathbf{h_i}'(t)\right]
  = \sum_{i=1}^n c_i(t) \mathbf{h_i}'(t) + \mathbf{E}(t).$$

- subtracting, we see that the requirement is
  $$\sum_{i=1}^n c_i'(t) \mathbf{h_i}(t) 
  = \mathbf{E}(t).$$

:::

------

::: incremental

- thus if $$c_1'(t) \mathbf{h_1}(t) + c_2'(t) \mathbf{h_2}(t) +
  \cdots + c_n'(t) \mathbf{h_n}(t) = \mathbf{E}(t)$$
  then 
  $$\mathbf{p}(t) = c_1(t) \mathbf{h_1}(t) + c_2(t) \mathbf{h_2}(t) +
  \cdots + c_n(t) \mathbf{h_n}(t)$$
  is a particular solution to $(\clubsuit)$.

- now write $W$ for the $n \times n$ (Wronskian) matrix whose
  *columns* are the vectors $\mathbf{h_i}(t)$.

- the preceding equation may be written in the form
  $$(\heartsuit) \quad W \cdot \begin{bmatrix} c_1'(t) \\ c_2'(t) \\ \vdots \\ c_n'(t) \end{bmatrix}
  = \mathbf{E}(t) \quad \text{or simply} \quad
  W \cdot \mathbf{c}'(t) = \mathbf{E}(t).$$

:::

---

::: incremental

  $$(\heartsuit) \quad W \cdot \mathbf{c}'(t) = \mathbf{E}(t).$$

- since the $\mathbf{h_i}$ generate the general solution to $(H)$,
  the determinant $\det W(t_0)$ is non-zero for all times $t_0$.
  
- thus, we can solve $(\heartsuit)$ using **Cramer's Rule**.

- once we have done so, we find the coefficients $c_i(t)$ by
  integrating the $c_i'(t)$.

- once we have all of the $c_i(t)$, we have our particular solution
  $$\mathbf{p}(t) = c_1(t) \mathbf{h_1}(t) + c_2(t) \mathbf{h_2}(t) +
  \cdots + c_n(t) \mathbf{h_n}(t)$$

:::

## Example

Consider $A = \begin{bmatrix} 0 & 2 \\ -1 & 3 \end{bmatrix}$ and
$\mathbf{E}(t) = \begin{bmatrix} e^t \\ e^t \end{bmatrix}$. Let's find
the general solution to $D \mathbf{x} = A \mathbf{x} + \mathbf{E}$.

::: incremental

- the char. poly is $\lambda^2 - 3 \lambda +2 = (\lambda-2)(\lambda-1)$

- an eigenvector for $\lambda = 2$ is $\begin{bmatrix} 1 \\ 1
  \end{bmatrix}$ & the corresponding solution is $\mathbf{h_1}(t) =
  e^{2t} \begin{bmatrix} 1 \\ 1 \end{bmatrix} = \begin{bmatrix} e^{2t} \\ e^{2t}
  \end{bmatrix}.$

- and an eigenvector for $\lambda = 1$ is $\begin{bmatrix} 2 \\ 1 \end{bmatrix}$
  & the corresponding solution is $\mathbf{h_2}(t) = e^t \begin{bmatrix} 2 \\ 1 \end{bmatrix}
  = \begin{bmatrix} 2e^t \\ e^t \end{bmatrix}.$

:::

------

::: incremental

- the Wronskian matrix is
  $$W = \begin{bmatrix}
  e^{2t} & 2e^t \\
  e^{2t} & e^t 
  \end{bmatrix}$$

- we must solve the matrix equation $W \mathbf{c}' = \mathbf{E}(t) =
  \begin{bmatrix} e^t \\ e^t \end{bmatrix}$.

- note that $\det W = e^{3t} - 2 e^{3t} = -e^{3t}.$

- Cramer's rule gives

  $$c_1'(t) = \dfrac{\det \begin{bmatrix} e^{t} & 2e^t \\ e^{t} & e^t
  \end{bmatrix}}{\det W} = \dfrac{e^{2t} - 2e^{2t}}{-e^{3t}} =
  \dfrac{e^{2t}}{e^{3t}} = e^{-t}$$

:::

---

::: incremental

- and also using Cramer's rule we get:

  $$c_2'(t) = \dfrac{\det \begin{bmatrix} e^{2t} & e^t \\ e^{2t} & e^t
  \end{bmatrix}}{\det W} = \dfrac{e^{3t} - e^{3t}}{-e^{3t}} =
  0$$

- we now find 
  $$c_1(t) = \int c_1'(t) dt = \int e^{-t} dt = -e^{-t} + A$$
  and
  $$c_2(t) = \int c_2'(t) dt = \int 0 dt = B$$



:::

----

::: incremental 

- we may take $A=B=0$ to find a *particular solution*

  \begin{align*}
  \mathbf{p}(t) =& c_1(t) \mathbf{h_1}(t) + c_2(t) \mathbf{h_2}(t) 
  = -e^{-t} \mathbf{h_1}(t) + 0 \mathbf{h_2}(t) \\
  =& -e^{-t} \begin{bmatrix} e^{2t} \\ e^{2t}
  \end{bmatrix} = 
  \begin{bmatrix}-e^t \\ -e^t \end{bmatrix}
  \end{align*}

- let's **check**:

  $$D[\mathbf{p}(t)] = D[\begin{bmatrix}e^t \\ e^t \end{bmatrix}] = \begin{bmatrix}e^t \\ e^t \end{bmatrix}.$$

  \begin{align*}
  A\mathbf{p}(t) + \mathbf{E}(t) &= \begin{bmatrix} 0 & 2 \\ -1 & 3 \end{bmatrix} \begin{bmatrix}-e^t \\ -e^t \end{bmatrix} + \begin{bmatrix}e^t \\ e^t \end{bmatrix} \\
  &= \begin{bmatrix} -2e^t \\ e^t - 3e^t\end{bmatrix}
  + \begin{bmatrix}e^t \\ e^t \end{bmatrix} 
  = \begin{bmatrix}e^t \\ e^t \end{bmatrix}
  \end{align*}

:::


## Bibliography {.unnumbered}

::: {.refs}
:::
