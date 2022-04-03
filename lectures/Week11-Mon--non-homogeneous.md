---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 11 Mon \
  Non-Homogeneous linear systems
date: 2022-03-30
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 3.11].

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

## Another example

::: incremental

- let's find the solution to
  $$\begin{matrix}
  x_1' =& -3x_2 + 2x_3 + e^{2t} \\
  x_2' =& 3x_1 -3x_3 + 3 \\
  x_3' =& 2x_3 + e^{2t} 
  \end{matrix}$$
  satisfying $x_1(0) = 1$, $x_2(0) = 2$ and $x_3(0)= 3$.

- so: first we must find the general solution to the non-homogeneous equation
  $$D\mathbf{x} = A \mathbf{x} + \mathbf{E}$$
  where $$A = \begin{bmatrix} 0 & -3 & 2 \\
  3 & 0 & -3 \\
  0 & 0 & 2 \end{bmatrix} \quad \text{and}
  \quad \mathbf{E} = \begin{bmatrix} e^{2t} \\ 3 \\ e^{2t} \end{bmatrix}.$$

:::

---

::: incremental

- and then we must find the solution with $\mathbf{x}(0) =
\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}$.

- we first solve the *homogeneous* equation $D \mathbf{x} = A \mathbf{x}$.
  For this, we find eigenvalues of $A$.
  
- using row exansion on the 3rd row, find that the char poly of $A$ is  
  $$(2-\lambda)(\lambda^2 + 9)$$
  so the eigenvalues are $2$ and $\pm 3i$.

:::


---

::: incremental

- we find a $2$-eigenvector by performing row operations on $A - 2\mathbf{I}$

  \begin{align*}
  \begin{bmatrix} -2 & -3 & 2 \\
  3 & -2 & -3 \\
  0 & 0 & 0 \end{bmatrix}
  &\sim 
  \begin{bmatrix} -2 & -3 & 2 \\
  1 & -5 & -1 \\
  0 & 0 & 0 \end{bmatrix}
  \sim 
  \begin{bmatrix}   1 & -5 & -1 \\
  0 & -13 & 0 \\
  0 & 0 & 0 \end{bmatrix} \\
  &\sim 
  \begin{bmatrix}   1 & 0 & -1 \\
  0 & 1 & 0 \\
  0 & 0 & 0 \end{bmatrix} \\  
  \end{align*}

- we find that  $\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}$ is a $2$-eigenvector, so

- 
  $$\mathbf{h}_1(t) = e^{2t}\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}$$ 
  is a solution to $D\mathbf{x} = A \mathbf{x}$.

:::

---

::: incremental

- next we find a $3i$-eigenvector for $A$, by performing row operations on
  $A - 3i\mathbf{I}$.
 
  \begin{align*}
  \begin{bmatrix} -3i & -3 & 2 \\
  3 & -3i & -3 \\
  0 & 0 & 2-3i \end{bmatrix}
  \sim 
  \begin{bmatrix} 3 & -3i & 2i \\
  3 & -3i & -3 \\
  0 & 0 & 1 \end{bmatrix}
  \sim 
  \begin{bmatrix} 1 & -i & 0 \\
  0 & 0 & 1 \\
  0 & 0 & 0 \end{bmatrix}  
  \end{align*}

- so an eigenvector for $\lambda = 3i$ is
  $$\begin{bmatrix}  i \\ 1 \\ 0 \end{bmatrix}$$
  
- thus a *complex solution* to $D\mathbf{x} = A \mathbf{x}$ is
  $$e^{3it}\begin{bmatrix}  i \\ 1 \\ 0 \end{bmatrix}
  = (\cos(3t) + i \sin(3t))\begin{bmatrix}  i \\ 1 \\ 0 \end{bmatrix}
  = \begin{bmatrix}  -\sin(3t) + i\cos(3t) \\ \cos(3t) + i \sin(3t) \\ 0 \end{bmatrix}$$
:::

---

::: incremental

- to get real solutions, we must find the real and imaginary parts of
  our complex solution. 
  
  $$\begin{bmatrix}  -\sin(3t) + i\cos(3t) \\ \cos(3t) + i \sin(3t) \\ 0 \end{bmatrix}
  = \begin{bmatrix}  -\sin(3t) \\ \cos(3t) \\ 0 \end{bmatrix}
  + i\begin{bmatrix} \cos(3t) \\ \sin(3t) \\ 0 \end{bmatrix}$$

- thus we find two more solutions to $D \mathbf{x} = A\mathbf{x}$.

  $$\mathbf{h}_2(t) = \begin{bmatrix}  -\sin(3t) \\ \cos(3t) \\ 0 \end{bmatrix} \quad
  \text{and} \quad
  \mathbf{h}_3(t) = \begin{bmatrix} \cos(3t) \\ \sin(3t) \\ 0 \end{bmatrix}.$$

:::

---

::: incremental

- thus the general solution to the homogeneous equation $D \mathbf{x} = A \mathbf{x}$
  is given by
  $$c_1 \mathbf{h}_1(t) +  c_2 \mathbf{h}_2(t) +  c_3 \mathbf{h}_3(t) 
  = c_1 e^{2t}\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix} + 
  c_2 \begin{bmatrix}  -\sin(3t) \\ \cos(3t) \\ 0 \end{bmatrix} + 
  c_3 \begin{bmatrix} \cos(3t) \\ \sin(3t) \\ 0 \end{bmatrix}$$

- now we seek a particular solution to $D \mathbf{x} = A \mathbf{x} +
  \mathbf{E}$ of the form $$\mathbf{p}(t) = c_1(t) \mathbf{h}_1(t) +
  c_2(t) \mathbf{h}_2(t) + c_3(t) \mathbf{h}_3(t)$$
  
- the *Wronskian matrix* is given by
  $$W =  \begin{bmatrix} e^{2t} & -\sin(3t) & \cos(3t) \\
  0 & \cos(3t) & \sin(3t) \\
  e^{2t} & 0 & 0 
  \end{bmatrix}$$
  
  
:::


---

::: incremental

- we must solve the equation $$W \begin{bmatrix} c_1'(t) \\
  c_2'(t) \\ c_3'(t) \end{bmatrix} = \mathbf{E}(t).$$ 

- since we are going to use Cramer's rule, let's compute
  \begin{align*}
  \det W &= \det \begin{bmatrix} e^{2t} & -\sin(3t) & \cos(3t) \\
  0 & \cos(3t) & \sin(3t) \\
  e^{2t} & 0 & 0 
  \end{bmatrix} \\ &= e^{2t}(-\sin^2(3t) - \cos^2(3t)) \\ 
  &= -e^{2t}
  \end{align*}



:::

---

::: incremental

- we use Cramer's rule to find the $c_i'(t)$ and then integrate to find $c_i(t)$.

- $$c_1'(t) = \dfrac{\det \begin{bmatrix} e^{2t} & -\sin(3t) & \cos(3t) \\
  3 & \cos(3t) & \sin(3t) \\
  e^{2t} & 0 & 0 
  \end{bmatrix}}{\det W} = \dfrac{-e^{2t}}{-e^{2t}} = 1$$

- since we seek a *particular* solution, we can take for $c_1(t)$ *any* antiderivative
  of $1$, so we'll take
  $$c_1(t) = t.$$

:::

---

::: incremental

- $$c_2'(t) = \dfrac{\det \begin{bmatrix} e^{2t} & e^{2t} & \cos(3t) \\
  0 & 3 & \sin(3t) \\
  e^{2t} & e^{2t} & 0 
  \end{bmatrix}}{\det W} = \dfrac{-3\cos(3t)e^{2t}}{-e^{2t}} = 3\cos(3t)$$

- since we seek a *particular* solution, we can take for $c_2(t)$ *any* antiderivative
  of $3\cos(3t)$, so we'll take
  $$c_2(t) = \sin(3t).$$

:::

---

::: incremental

- $$c_3'(t) = \dfrac{\det \begin{bmatrix} e^{2t} & -\sin(3t) & e^{2t} \\
  0 & \cos(3t) & 3 \\
  e^{2t} & 0 & e^{2t}
  \end{bmatrix}}{\det W} = \dfrac{-3\sin(3t)e^{2t}}{-e^{2t}} = 3\sin(3t)$$

- since we seek a *particular* solution, we can take for $c_3(t)$ *any* antiderivative
  of $3\sin(3t)$, so we'll take
  $$c_3(t) = -\cos(3t).$$

:::

---

::: incremental

- thus we have found a particular solution to $D \mathbf{x} = A
  \mathbf{x} + \mathbf{E}$, namely:

  \begin{align*}
  \mathbf{p}(t) &= t \mathbf{h}_1(t) +
  \sin(3t) \mathbf{h}_2(t) - \cos(3t) \mathbf{h}_3(t) \\
  &= t e^{2t}\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix} + 
  \sin(3t) \begin{bmatrix}  -\sin(3t) \\ \cos(3t) \\ 0 \end{bmatrix} -
  \cos(3t) \begin{bmatrix} \cos(3t) \\ \sin(3t) \\ 0 \end{bmatrix} \\
  &= \begin{bmatrix} te^{2t} - \sin^2(3t) - \cos^2(3t) \\
  0 \\
  te^{2t}
  \end{bmatrix}  \\
  &= \begin{bmatrix} te^{2t} - 1 \\
  0 \\
  te^{2t}
  \end{bmatrix} 
  \end{align*}


:::

---

::: incremental

- so the *general solution* to $D \mathbf{x} = A
  \mathbf{x} + \mathbf{E}$ is given  by

  $$\mathbf{x}(t) = \begin{bmatrix} te^{2t} - 1 \\
  0 \\
  te^{2t}
  \end{bmatrix}  +c_1 e^{2t}\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix} + 
  c_2 \begin{bmatrix}  -\sin(3t) \\ \cos(3t) \\ 0 \end{bmatrix} + 
  c_3 \begin{bmatrix} \cos(3t) \\ \sin(3t) \\ 0 \end{bmatrix}
  $$
  
- finally, we seek the solution for which
  $$\mathbf{x}(0) = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}.$$
  
- thus we must find $c_1,c_2,c_3$ for which

  $$\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}
  = \begin{bmatrix} - 1 \\
  0 \\
  0
  \end{bmatrix}  +c_1 \begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix} + 
  c_2 \begin{bmatrix}  0 \\ 1 \\ 0 \end{bmatrix} + 
  c_3 \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$$

:::

---

::: incremental

- rewriting, we find that 
  $$\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix} +
  \begin{bmatrix}  1 \\
  0 \\
  0
  \end{bmatrix}
  =  c_1 \begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix} + 
  c_2 \begin{bmatrix}  0 \\ 1 \\ 0 \end{bmatrix} + 
  c_3 \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$$

- i.e.
  $$\begin{bmatrix} 2 \\ 2 \\ 3 \end{bmatrix} 
  =  \begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 0  \\ 1 & 0 & 0  \end{bmatrix} 
  \begin{bmatrix} c_1 \\ c_2 \\ c_3 \end{bmatrix}$$
  
- we solve by performing row operations on the *augmented matrix*
  $$\left [
  \begin{array}{l|l}
  \begin{matrix} 1 & 0 & 1 \\ 0 & 1 & 0  \\ 1 & 0 & 0  \end{matrix} &
  \begin{matrix} 2 \\ 2 \\ 3 \end{matrix} 
  \end{array}
  \right ] \sim 
  \left [
  \begin{array}{l|l}
  \begin{matrix} 1 & 0 & 1 \\ 0 & 1 & 0  \\ 0 & 0 & -1  \end{matrix} &
  \begin{matrix} 2 \\ 2 \\ 1 \end{matrix} 
  \end{array}
  \right ] 
  \sim 
  \left [
  \begin{array}{l|l}
  \begin{matrix} 1 & 0 & 0 \\ 0 & 1 & 0  \\ 0 & 0 & 1  \end{matrix} &
  \begin{matrix} 3 \\ 2 \\ -1 \end{matrix} 
  \end{array}
  \right ] 
  $$

:::

---

::: incremental

- this shows that 
  $$\begin{bmatrix} c_1 \\ c_2 \\ c_3 \end{bmatrix}
  = \begin{bmatrix} 3 \\ 2 \\ -1 \end{bmatrix}$$

- thus the required solution is
  $$\mathbf{x}(t) = \begin{bmatrix} te^{2t} - 1 + 3e^{2t} - 2\sin(3t) - \cos(3t) \\
  2\cos(3t) - \sin(3t) \\
  te^{2t} + 3e^{2t} 
  \end{bmatrix}$$
  

:::


## Bibliography {.unnumbered}

::: {.refs}
:::
