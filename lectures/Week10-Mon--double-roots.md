---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 10 Mon \
  Homogeneous linear systems - double roots
date: 2022-03-28
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 3.9].

# Multiple roots

## Overview

::: incremental


- **Important Fact**: if the square matrix $A$ has an eigenvalue
  $\lambda$ with multiplicity $d \ge 1$, there can be no more than $d$
  linearly independent $\lambda$-eigenvectors.

- for example, suppose the $6 \times 6$ matrix $A$ has distinct
  eigenvalues $1,2,-2$, and suppose that the char. poly is
  $$(\lambda-1)^3(\lambda -2)^2(\lambda+2).$$
  
  ::: {align=center}
  |  $\lambda$ |    multiplicity | $n$ = # indep eigenvectors for $\lambda$ |
  | :--------- | --------------: | ----------------------------------:      |
  |          1 |               3 | $1 \le n \le 3$                          |
  |          2 |               2 | $1 \le n \le 2$                          |
  |         -2 |               1 | $n=1$                                    |
  :::

:::

-------

::: incremental

- Our aim is to find the general solution to $D \mathbf{x} = A
  \mathbf{x}$.  
  
- If $\lambda$ has multiplicity $d$ and if there are *fewer than* $d$
  linearly independent $\lambda$-eigenvectors, we will not be able to
  describe the general solution *using only eigenvectors*.

- Thus, we require a new method of constructing solutions, which we
  are now going to describe.

:::

## The matrix product

::: incremental

- given $n \times m$ matrix $A$ and $m \times k$ matrix $B$, we can form
  and $n \times k$ matrix $A \cdot B$
  
- to define this product, consider the columns of $B$: $\mathbf{b}_1, \cdots, \mathbf{b}_k$.

  The $\mathbf{b}_i$ are vectors in $\mathbb{R}^m$.

- we compute the vectors $A \cdot \mathbf{b}_1, \dots, A \cdot \mathbf{b}_k$.

- These resulting vectors are the columns of $A B$.

- example
 
  $$\begin{bmatrix} a & b & c \\
  d & e & f \end{bmatrix}
  \begin{bmatrix} 1 & 0 \\
  0 & 1 \\
  1 & 1 
  \end{bmatrix}
  = \begin{bmatrix} a + c & b + c \\
  d+ f & e + f 
  \end{bmatrix}$$

:::

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

----

::: incremental

- for example, consider $$A = \begin{bmatrix} 1 & -1 \\ 0 & 1
  \end{bmatrix} \quad \text{and} \quad q(t) = T^2 - 2T + 1 = (T-1)^2.$$

- so $q(T)$ is the *characteristic polynomial* of $A$.

- Note that $A^2 = \begin{bmatrix} 1 & -1 \\ 0 & 1
  \end{bmatrix} \cdot \begin{bmatrix} 1 & -1 \\ 0 & 1
  \end{bmatrix} = \begin{bmatrix} 1 & -2 \\ 0 & 1
  \end{bmatrix}$.
  
- thus
  $$q(A) = A^2 - 2A + I_2 =  \begin{bmatrix} 1 & -2 \\ 0 & 1
  \end{bmatrix} -2 \begin{bmatrix} 1 & -1 \\ 0 & 1
  \end{bmatrix} + \begin{bmatrix} 1 & 0 \\ 0 & 1
  \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 0
  \end{bmatrix} = \mathbf{0}.$$

- alternatively, note that $q(T) = (T-1)^2$ and so
  $$q(A) = (A-I_2)^2 = (A-I_2)(A-I_2) = 
  \begin{bmatrix} 0 & -1 \\
  0 & 0 
  \end{bmatrix}
  \begin{bmatrix} 0 & -1 \\
  0 & 0 
  \end{bmatrix} = \mathbf{0}.$$
  

:::

-----

::: incremental

- the phenomenon of the previous example holds in great generality! Indeed:

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

- **Fact:** If there are $2$ linearly independent
  $\lambda$-eigenvectors for $A$, then $$A - \lambda \mathbf{I_2} =
  \mathbf{0} \quad \text{i.e.} \quad A = \begin{bmatrix} \lambda & 0
  \\ 0 & \lambda \end{bmatrix}.$$


:::

------

::: incremental

- If there is only one linearly independent $\lambda$-eigenvector for
  $A$, we may find some vector $\mathbf{v}$ in $\mathbb{R}^2$ which is
  not a $\lambda$-eigenvector.

- since $(A-\lambda \mathbf{I_2})^2 = \mathbf{0}$, we have: 
  $$(A-\lambda\mathbf{I_2}) \mathbf{v} \ne \mathbf{0}
  \quad \text{while} \quad
  (A-\lambda\mathbf{I_2})^2 \mathbf{v} = \mathbf{0}.$$

- Let's define

  $$\mathbf{h}(t) = e^{\lambda t} ( \mathbf{v} + t\mathbf{v_1})
  \quad \text{or equivalently} \quad
  \mathbf{h}(t) = e^{\lambda t} ( \mathbf{v} + t(A-\lambda\mathbf{I}_2)\mathbf{v})$$

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

- Thus the eq $(A - 2\mathbf{I_3})^2 \mathbf{x} =
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




## Bibliography {.unnumbered}

::: {.refs}
:::
