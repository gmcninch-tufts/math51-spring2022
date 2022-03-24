---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 10 Wed \
  Homogeneous linear systems -- multiple roots
date: 2022-03-30
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

# Recall

- The [*Cayley-Hamilton
  Theorem*](https://en.wikipedia.org/wiki/Cayley%E2%80%93Hamilton_theorem)
  asserts that if $p(T)$ is the *characteristic polynomial* of
  $A$, then
  
  $$p(A) = \mathbf{0}.$$

- **Important Fact**: if the square matrix $A$ has an eigenvalue
  $\lambda$ with multiplicity $d \ge 1$, there can be no more than $d$
  linearly independent $\lambda$-eigenvectors.

# Generalized eigenvectors

::: incremental

- let $A$ be $n \times n$ matrix and $\lambda$ and eigenvalue of $A$.

- let $d$ be the multiplicity of the eigenvalue of $A$.

- a *generalized eigenvector* is a solution to $(A-\lambda
  \mathbf{I}_n)^d\mathbf{x} = \mathbf{0}$.

- Of course, any eigenvector for $\lambda$ is a generalized
  eigenvector. But not *vice versa*.

- **Fact:** There are always $d$-linearly independent generalized
  eigenvectors for $\lambda$.

:::

----

::: incremental

- Example: $A = \begin{bmatrix}  r & 1 & -1 \\
  0 & r & 0 \\
  0 & 0 & r \end{bmatrix}.$

- the char poly is $(\lambda - r)^3$ so the eigenvalue $r$ has multiplicity 3.

- $$A - r \mathbf{I}_3 = \begin{bmatrix} 0 & 1 & -1 \\
  0 & 0 & 0 \\
  0 & 0 & 0 \end{bmatrix}.$$

- $$(A - r \mathbf{I}_3)^2 = \begin{bmatrix} 0 & 1 & -1 \\
  0 & 0 & 0 \\
  0 & 0 & 0 \end{bmatrix}\begin{bmatrix} 0 & 1 & -1 \\
  0 & 0 & 0 \\
  0 & 0 & 0 \end{bmatrix} = \mathbf{0}.$$

- so *every* vector in $\mathbb{R}^3$ is a generalized eigenvector for $\lambda = r$.

:::

# Solutions from generalized eigenvectors

::: incremental

- 

:::


# Bibliography {.unnumbered}

::: {.refs}
:::
