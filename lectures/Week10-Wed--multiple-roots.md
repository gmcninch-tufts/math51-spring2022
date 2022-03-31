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

This lecture covers material from [@gutermanNitecki, sec. 3.10].

# Recall

::: incremental

- let $A$ be $n \times n$ matrix and $\lambda$ and eigenvalue of $A$.

- **Important Fact**: $\lambda$ has multiplicity $d \ge 1$, there can
  be no more than $d$ linearly independent $\lambda$-eigenvectors.

- let $d$ be the multiplicity of the eigenvalue of $A$.

- a *generalized eigenvector* is a solution to $(A-\lambda
  \mathbf{I}_n)^d\mathbf{x} = \mathbf{0}$.

- Of course, any eigenvector for $\lambda$ is a generalized
  eigenvector. But not *vice versa*.

- **Fact:** There are always $d$-linearly independent generalized
  eigenvectors for $\lambda$.

:::

# Solutions from generalized eigenvectors

::: incremental

- let $\lambda$ be an eigenvalue of the $n \times n$ matrix $A$, with multiplicity $d$.

- let $\mathbf{v}$ be a generalized eigenvector for $\lambda$. Then
  $(A - \lambda \mathbf{I})^d \mathbf{v} = \mathbf{0}$.
  
- when $d=2$, we saw before that $$\mathbf{h}(t) = e^{\lambda t}(
  \mathbf{v} + t(A -\lambda \mathbf{I})\mathbf{v}) = \ e^{\lambda
  t}(\mathbf{I} + t(A-\lambda\mathbf{I})) \mathbf{v}$$ is a solution
  to the homog. system of ODEs $D \mathbf{x} = A \mathbf{x}$.


:::

----

::: incremental

- for $d \ge 2$, consider

  \begin{align*} 
  \mathbf{h}(t) =&  e^{\lambda t}\left ( \mathbf{I} +
  t(A - \lambda\mathbf{I}) + \dfrac{t^2}{2}(A - \lambda
  \mathbf{I})^2 + \cdots + \dfrac{t^{d-1}}{(d-1)!}(A - \lambda
  \mathbf{I})^{d-1} \right )\mathbf{v}  \\
  =& e^{\lambda t} \left ( \sum_{i=0}^{d-1} \dfrac{t^i}{i!} (A-\lambda \mathbf{I})^i
  \right) \mathbf{v}
  \end{align*}

- for any square matrix $M$ and vector $\mathbf{x}$ for which
  $M^d\mathbf{x} = 0$, write $$\exp(tM) = \sum_{i=0}^{d-1}
  \dfrac{t^i}{i!} M^i$$ and observe that $$(\heartsuit) \quad
  D[\exp(tM)\mathbf{x} ] = \exp(tM) \cdot M \mathbf{x}$$

- thus $\mathbf{h}(t) = e^{\lambda t} \exp( t (A - \lambda \mathbf{I})) \mathbf{v}$.

:::

---

::: incremental

- using the *exponential shift formula* together with $(\heartsuit)$ we find 
  \begin{align*}
  D[\mathbf{h}(t)] &= D[e^{\lambda t} \exp(t(A - \mathbf{I})) \mathbf{v}] \\
  &= e^{\lambda t} (D + \lambda) [ \exp(t (A - \lambda \mathbf{I}))] \mathbf{v} \\
  &= e^{\lambda t} \exp(t (A - \lambda \mathbf{I})) [ (A - \lambda \mathbf{I}) + \lambda \mathbf{I}] \mathbf{v}\\  
  &= e^{\lambda t} A \exp(t (A - \lambda \mathbf{I})) \mathbf{v}\\
  &= A \mathbf{h}(t)
  \end{align*}
  
- conclusion: if $\mathbf{v}$ is a generalized eigenvector for an
  eigenvalue of multiplicity $d \ge 1$, then $$\mathbf{h}(t) =
  e^{\lambda t} \left ( \sum_{i=0}^{d-1} \dfrac{t^i}{i!} (A-\lambda
  \mathbf{I})^i \right) \mathbf{v} = e^{\lambda t} \exp( t (A -
  \lambda \mathbf{I})) \mathbf{v}$$ is a solution to $D \mathbf{x}= A
  \mathbf{x}$.

- note that $\mathbf{h}(0) = \mathbf{v}$.

- since there are $d$ linearly independent generalized eigevectors, we
  find in this way $d$ solutions to $D \mathbf{x} = A \mathbf{x}$
  corresponding to the eigenvalue $\lambda$ which have linearly
  independent initial vectors.

:::

# Example

::: incremental

- Example: $A = \begin{bmatrix}  r & 1 & 0 \\
  0 & r & 1 \\
  0 & 0 & r \end{bmatrix}.$

- Note that the eigenvalue $\lambda = r$ has multiplicity 3.

- $A - r\mathbf{I} = \begin{bmatrix}  0 & 1 & 0 \\
  0 & 0 & 1 \\
  0 & 0 & 0 \end{bmatrix}$ so that
  $$(A - r\mathbf{I})^2 =
  \begin{bmatrix}  0 & 1 & 0 \\
  0 & 0 & 1 \\
  0 & 0 & 0 \end{bmatrix}
  \begin{bmatrix}  0 & 1 & 0 \\
  0 & 0 & 1 \\
  0 & 0 & 0 \end{bmatrix}
  =
  \begin{bmatrix}  0 & 0 & 1 \\
  0 & 0 & 0 \\
  0 & 0 & 0 \end{bmatrix}  
  $$

- and 
  $$(A-r \mathbf{I})^3 = (A-r\mathbf{I})(A-r \mathbf{I})^2
  =
  \begin{bmatrix}  0 & 1 & 0 \\
  0 & 0 & 1 \\
  0 & 0 & 0 \end{bmatrix}
  \begin{bmatrix}  0 & 0 & 1 \\
  0 & 0 & 0 \\
  0 & 0 & 0 \end{bmatrix}  
  = \mathbf{0}$$
  
:::

---

:::  incremental

- in particular, $\mathbf{e}_1 = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$
  is an *eigenvector*
  
- and $\mathbf{e}_2 = \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}$
  is a solution to $(A - r\mathbf{I})^2 \mathbf{x} = \mathbf{0}$.
  
- and $\mathbf{e}_3 = \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}$
  is a solution to $(A - r\mathbf{I})^3 \mathbf{x} = \mathbf{0}$.
  
- for $j = 1,2,3$ consider  
  $$\mathbf{h}_j(t) =  e^{rt} \left (\sum_{i=0}^2 (A-r\mathbf{I})^i \right ) \mathbf{e}_j$$

:::

----

::: incremental

- we find solutions 
  $$\mathbf{h}_1(t) = e^{rt} \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$$

-
  $$\mathbf{h}_2(t) 
  = e^{rt} \left ( \begin{bmatrix} 1 & 0 & 0 \\
  0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix} +
  t \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{bmatrix}
  \right ) \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}  = 
  e^{rt} \begin{bmatrix} t \\ 1 \\ 0 \end{bmatrix}$$

-
  $$\mathbf{h}_3(t) 
  = e^{rt} \left ( \begin{bmatrix} 1 & 0 & 0 \\
  0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix} +
  t \begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{bmatrix}
  +
  \dfrac{t^2}{2} \begin{bmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{bmatrix}
  \right ) \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}  = 
  e^{rt} \begin{bmatrix} t^2/2 \\ t \\ 1 \end{bmatrix}$$

- in particular, the general solution is
  $$\mathbf{x}(t) = 
  c_1 e^{rt} \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}
  + c_2 e^{rt} \begin{bmatrix} t \\ 1 \\ 0 \end{bmatrix}
   + c_3 e^{rt} \begin{bmatrix} t^2/2 \\ t \\ 1 \end{bmatrix}.$$

:::

---

::: incremental

- Example: $A = \begin{bmatrix}  2 & 1 & -1 & 0 \\
  0 & 2 & 0 & 0  \\
  0 & 0 & 1 & 1 \\
  0 & 0 & 0 & 2\end{bmatrix}.$

- the char poly is $(\lambda - 2)^3(\lambda - 1)$ so the eigenvalue $2$ has multiplicity 3.

- $$A - 2 \mathbf{I}_3 = \begin{bmatrix} 0 & 1 & -1 & 0 \\
  0 & 0 & 0 & 0 \\  
  0 & 0 & -1 & 1 \\
  0 & 0 & 0 & 0 \\
  \end{bmatrix}
  \sim 
  \begin{bmatrix} 0 & 1 & 0 & -1 \\
  0 & 0 & 1 & -1 \\  
  0 & 0 & 0 & 0 \\  
  0 & 0 & 0 & 0 \\
  \end{bmatrix}$$

- thus there are two linearly indep eigenvectors for $\lambda = 2$, namely
  $$\mathbf{v}_1 = \begin{bmatrix} 1 \\ 0 \\ 0 \\ 0 \end{bmatrix}
  \quad \text{and}
  \quad
  \mathbf{v}_2 = \begin{bmatrix} 0 \\ 1 \\ 1 \\ 1 \end{bmatrix}$$

  and they determine solutions $\mathbf{h}_1(t) = e^{2t} \mathbf{v}_1$ and 
  $\mathbf{h}_2(t) = e^{2t} \mathbf{v}_2$

:::

----

::: incremental

- note that 
  $$(A-2 \mathbf{I})^2 = 
  \begin{bmatrix} 0 & 1 & -1 & 0 \\
  0 & 0 & 0 & 0 \\  
  0 & 0 & -1 & 1 \\
  0 & 0 & 0 & 0 \\
  \end{bmatrix}
  \begin{bmatrix} 0 & 1 & -1 & 0 \\
  0 & 0 & 0 & 0 \\  
  0 & 0 & -1 & 1 \\
  0 & 0 & 0 & 0 \\
  \end{bmatrix} =
  \begin{bmatrix}
  0 & 0 & 1 & -1 \\
  0 & 0 & 0 & 0 \\
  0 & 0 & 1 & -1 \\
  0 & 0 & 0 & 0 
  \end{bmatrix}\sim
  \begin{bmatrix}
  0 & 0 & 1 & -1 \\
  0 & 0 & 0 & 0 \\  
  0 & 0 & 0 & 0 \\
  0 & 0 & 0 & 0 
  \end{bmatrix}  
  $$


- thus we see that $\mathbf{v}_3 = \begin{bmatrix} 0 \\ 1 \\ 0 \\ 0 \end{bmatrix}$
  is a generalized eigenvector.
 
:::

----

::: incremental
 
- Note that 
  $$(A - 2\mathbf{I})\mathbf{v}_3 = 
  \begin{bmatrix} 0 & 1 & -1 & 0 \\
  0 & 0 & 0 & 0 \\  
  0 & 0 & -1 & 1 \\
  0 & 0 & 0 & 0 \\
  \end{bmatrix}
  \begin{bmatrix} 0 \\ 1 \\ 0 \\ 0 \end{bmatrix}
  = 
  \begin{bmatrix} 1 \\ 0 \\ 0 \\ 0 \end{bmatrix}  
  $$
  
  and
  
  $$(A-2\mathbf{I})^2\mathbf{v}_3 = 
  \begin{bmatrix}
  0 & 0 & 1 & -1 \\
  0 & 0 & 0 & 0 \\
  0 & 0 & 1 & -1 \\
  0 & 0 & 0 & 0 
  \end{bmatrix} 
  \begin{bmatrix} 0 \\ 1 \\ 0 \\ 0 \end{bmatrix} = 
  \mathbf{0}.$$
  
- thus we find a solution
  $$\mathbf{h}_3(t) = e^{2t}(\mathbf{I} + t (A - 2\mathbf{I})) \begin{bmatrix} 0 \\ 1 \\ 0 \\ 0 \end{bmatrix}
  = e^{2t} \begin{bmatrix} t \\ 1 \\ 0 \\ 0 \end{bmatrix}$$

:::

----

::: incremental

- finally, we need a $1$-eigenvector

  \begin{align*}
  A - \mathbf{I} = \begin{bmatrix}  2 & 1 & -1 & 0 \\
  0 & 2 & 0 & 0  \\
  0 & 0 & 1 & 1 \\
  0 & 0 & 0 & 2\end{bmatrix} -
  \begin{bmatrix}  0 & 0 & 0 & 0 \\
  0 & 1 & 0 & 0  \\
  0 & 0 & 1 & 0 \\
  0 & 0 & 0 & 1 \end{bmatrix} 
  =  \begin{bmatrix}  1 & 1 & -1 & 0 \\
  0 & 1 & 0 & 0  \\
  0 & 0 & 0 & 1 \\
  0 & 0 & 0 & 1 \end{bmatrix} \sim 
  \begin{bmatrix}  1 & 0 & -1 & 0 \\
  0 & 1 & 0 & 0  \\
  0 & 0 & 0 & 1 \\
  0 & 0 & 0 & 0 \end{bmatrix}. 
  \end{align*}

- Thus $\mathbf{v}_4 = \begin{bmatrix} 1 \\ 0 \\ 1 \\ 0 \end{bmatrix}$
  is a $1$-eigenvector, and $\mathbf{h}_4(t) = e^t \mathbf{v}_4$.

- thus the general solution to $D\mathbf{x} = A \mathbf{x}$ is given by
  $$\mathbf{x}(t) = c_1 e^{2t} \begin{bmatrix} 1 \\ 0 \\ 0 \\ 0 \end{bmatrix}
  + c_2 e^{2t} \begin{bmatrix} 0 \\ 1 \\ 1 \\ 1 \end{bmatrix}
  + c_3 e^{2t} \begin{bmatrix} t \\ 1 \\ 0 \\ 0 \end{bmatrix}
  + c_4 e^t \begin{bmatrix} 1 \\ 0 \\ 1 \\ 0 \end{bmatrix}.$$


:::

# Bibliography {.unnumbered}

::: {.refs}
:::
