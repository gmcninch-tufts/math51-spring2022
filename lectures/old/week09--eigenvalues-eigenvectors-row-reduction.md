---
author: George McNinch (Math 51 Fall 2021)
title: Week 9 - Eigenvalues, Eigenvectors, and row reduction
date: 2021-11-05
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture follows [@gutermanNitecki §3.5 & §3.6].

# Overview

## Homogeneous systems of ODEs

::: incremental

- Consider an $n\times n$ matrix $A$ whose entries are *constants*
  (i.e. constant functions of $t$).

- and consider the homogeneous system
  $$(\clubsuit) \quad D \mathbf{x} = A \mathbf{x}.$$

- we need to find $n$ vector valued functions
  $\mathbf{h_1},\cdots,\mathbf{h_n}$ which are *solutions* to
  $(\clubsuit)$ with the property that
  
- the vectors $\mathbf{h_1}(t_0),\cdots,\mathbf{h_n}(t_0)$ are
  *linearly independent* for some $t_0$.

:::

-----

::: incremental

- the general solution to the *homogeneous equation* $(\clubsuit)$ is then
  $$\mathbf{x} = c_1 \mathbf{h_1} + \cdots + c_n \mathbf{h_n}.$$

- we'll use *linear algebra* to find vectors used to construct
  solutions $\mathbf{h_i}$.

- the matrix $A$ has $n$ eigenvalues $\lambda_1,\dots,\lambda_n$
  (possibly appearing with some multiplicity)

- for each eigenvalue $\lambda$, we can find corresponding
  eigenvectors $\mathbf{v}$ in $\mathbb{R}^n$.
  
- and if $\lambda$ is a real number, the vector-valued function
  $$\mathbf{h} = \mathbf{h}(t) = e^{\lambda t} \mathbf{v}$$
  is a solution to $(\clubsuit)$.

:::

---

## Main tasks for this week

::: incremental

- define the notions of *eigenvalues* and *eigenvectors* for a square matrix $A$

- learn how to use *row reduction* to solve matrix equations $B
  \mathbf{x} = \mathbf{c}$ for an $m \times n$ matrix $B$.
  
  (row reduction is needed in order to *find eigenvectors*.)

:::

# Eigenvectors and Eigenvalues

## Definitions
 
Let $A$ be an $n \times n$ matrix. A non-zero vector $\mathbf{v}$ in $\mathbb{R}^n$
is said to be an eigenvector for $A$ is there is some scalar $\lambda$ such that
$$A \mathbf{v} = \lambda \mathbf{v}.$$

In this situation, $\lambda$ is called the eigenvalue of $\mathbf{v}$, and $\lambda$ is 
an *eigenvalue* of $A$.

::: incremental

- Consider $A = \begin{bmatrix} 1 & 2 \\ 0 & 2 \end{bmatrix}$
  and $\mathbf{v} = \begin{bmatrix}2 \\ 1\end{bmatrix}$.
  
- then $A \mathbf{v} = \begin{bmatrix} 4 \\ 2 \end{bmatrix} = 2 \begin{bmatrix} 2 \\ 1 \end{bmatrix}
  = 2 \mathbf{v}$
  
- thus $\mathbf{v}$ is an eigenvector for $A$ with eigenvalue $\lambda = 2$.  

:::

----

::: incremental

- notice that $\mathbf{v} = \begin{bmatrix}2 \\ 1\end{bmatrix}$ is a
  solution to the equation $$(A - 2 \mathbf{I_2})\mathbf{x} =
  \mathbf{0}$$ where $$A - 2 \mathbf{I_2} = \begin{bmatrix} 1 & 2 \\ 0
  & 2 \end{bmatrix} - 2\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} =
  \begin{bmatrix} 1 & 2 \\ 0 & 2 \end{bmatrix} - \begin{bmatrix} 2 & 0
  \\ 0 & 2 \end{bmatrix} = \begin{bmatrix} -1 & 2 \\ 0 & 0
  \end{bmatrix}.$$

:::

## characterizing eigenvalues

::: incremental

- if $\lambda$ is an eigenvalue of the $n \times n$ matrix $A$, there
  is a (non-zero) eigenvector $\mathbf{v}$ with that eigenvalue.
  
- thus $A \mathbf{v} = \lambda \mathbf{v}$ and hence $\mathbf{0} = A\mathbf{v} - \lambda \mathbf{v} = 
  (A - \lambda \mathbf{I_n}) \mathbf{v}.$ 

- i.e. $\mathbf{v}$ is a non-zero solution to
  $$(A -\lambda \mathbf{I_n})\mathbf{x} = \mathbf{0}.$$

- this guarantees that
  $$\det (A - \lambda \mathbf{I_n}) = 0.$$

:::

## the characteristic polynomial

::: incremental

- view $\lambda$ as a variable, and form the determinant
  $$p(\lambda) = \det (A - \lambda \mathbf{I_n}).$$
  
- $p(\lambda)$ is a polynomial of degree $n$ called the
  *characteristic polynomial* of the $n \times n$ matrix $A$.

- a scalar $\lambda$ is a *root* of the characteristic polynomial
  $p(\lambda)$ precisely when $\lambda$ is an eigenvalue of $A$.

- in particular, there are $n$ complex numbers $\lambda$ which are
  eigenvalues of $A$ (when counted with multiplicities). 

- In particular, $A$ always has $\le n$ distinct eigenvalues.

:::

## Example 1: characteristic polynomial and eigenvalues

Find the eigenvalues of $A = \begin{bmatrix} 1 & 1 \\ 3 & 1 \end{bmatrix}.$

. . .

\begin{align*}
\det (A - \lambda \mathbf{I_2}) &= \det \left(\begin{bmatrix} 1 & 1 \\ 3 & 1 \end{bmatrix} -
\begin{bmatrix} \lambda & 0 \\ 0 & \lambda \end{bmatrix}\right) = \det \begin{bmatrix} 1 - \lambda & 1 \\
3 & 1 - \lambda \end{bmatrix} \\
&= (1-\lambda)^2 - 3 = \lambda^2 - 2\lambda + 1 - 3 \\
&= \lambda^2 - 2\lambda - 2
\end{align*}

. . .

So the characteristic polynomial is $p(\lambda) = \lambda^2 - 2\lambda - 2$.

. . .

The roots of $p$ -- i.e. the *eigenvalues of $A$* -- are $$\lambda =
\dfrac{+2 \pm \sqrt{4 + 8}}{2} = \dfrac{2 \pm 2\sqrt{3}}{2} = 1 \pm
\sqrt{3}$$

## Ex 2: char poly and eigenvalues


Find the eigenvalues of $B = \begin{bmatrix} 0 & -2 & 2 \\ 
1 & 3 & -2 \\ 2 & 4 & -3 \end{bmatrix}.$

. . .

$$\det (B - \lambda \mathbf{I_3}) = \det \left(\begin{bmatrix} 0 & -2 & 2 \\ 
1 & 3 & -2 \\ 2 & 4 & -3 \end{bmatrix} -
\begin{bmatrix} \lambda & 0 & 0  \\ 0 & \lambda & 0 \\ 0 & 0 & \lambda \end{bmatrix}\right) = \det \begin{bmatrix} -\lambda & -2 & 2 \\ 
1 & 3-\lambda & -2 \\ 2 & 4 & -3-\lambda \end{bmatrix}$$

. . .

$$= -\lambda \det \begin{bmatrix}3 - \lambda & -2 \\ 4 & -3 - \lambda \end{bmatrix} 
+ 2 \det \begin{bmatrix} 1 & -2 \\ 2 & -3 - \lambda \end{bmatrix} 
+ 2 \det \begin{bmatrix} 1 & 3-\lambda \\ 2 & 4\end{bmatrix}$$


. . .

\begin{align*}
&= -\lambda[(3-\lambda)(-3-\lambda) + 8] + 2[-3-\lambda + 4] + 2[4 - 6 + 2\lambda] \\
&= -\lambda[\lambda^2 - 1] - 2[\lambda - 1] + 4[\lambda-1] \\
&= -\lambda(\lambda -1)(\lambda + 1) +2(\lambda-1) = (\lambda-1)[-\lambda(\lambda+1) + 2]\\
&= -(\lambda-1)(\lambda^2 + \lambda -2) \\
&= -(\lambda-1)(\lambda+2)(\lambda-1)
\end{align*}

---

Thus the char. poly of $B$ is $p(\lambda) = -(\lambda-1)^2(\lambda+2)$
and the eigenvalues of $B$ are
$$\lambda=1 \quad \text{with multiplicity 2, and} \quad \lambda = -2 \quad \text{(with multiplicity 1)}.$$

# Row Reduction

## The goal

In order to find eigenvectors for a matrix $A$ corresponding to a
given eigenvalue $\lambda$, we must be able to solve the matrix
equation

$$(A-\lambda \mathbf{I_n})\mathbf{x} = \mathbf{0}.$$

. . .

More generally, one can consider an $m \times n$ matrix $B$. One wants
to solve the matrix equation

$$B \mathbf{x} = \mathbf{0}$$

for vectors $\mathbf{x}$ in $\mathbb{R}^n$.

## Row operations.

See [@gutermanNitecki §3.6] for additional discussion.

For $m \times n$ matrix $B$, we consider the matrix
equation $(*) \quad B \mathbf{x} = \mathbf{0}$. 

. . .

Be aware that [@gutermanNitecki §3.6] considers more generally
equations of the form $B \mathbf{x} = \mathbf{v}$ for $\mathbf{v}$ in
$\mathbb{R}^n$. This leads them to consider the $m \times (n+1)$ *augmented matrix*
$$\begin{bmatrix} B & \bigm| & \mathbf{v} \end{bmatrix},$$
which I won't do in these notes since for our purposes this would just amount to the matrix
$$\begin{bmatrix} B & \bigm| & \mathbf{0} \end{bmatrix}.$$

. . .

We are going to find the set of all solutions -- sometimes called the
*solution space* -- to $(*)$.

------


To find the solution space  to $B \mathbf{x} = \mathbf{0}$, we
proceed be performing *row operations* on $B$:

::: incremental

- *row operations* are as follows:
  
  - interchange two rows
  
  - replace a row by a non-zero multiple of itself
  
  - replace a row by the sum of itself and a multiple of another row


- matrix $B'$ is said to be *row equivalent* to $B$ if $B'$ is
  obtained from $B$ by a sequence of row operations.
  
- **key fact:** if $B$ and $B'$ are row equivalent, the equations $B
  \mathbf{x} = \mathbf{0}$ and $B' \mathbf{x} = \mathbf{0}$ have the
  same solution space.

:::

-----

::: incremental

- in any row of a matrix, the first non-zero entry is called a
  *pivot* or *corner* entry. 
  
- a matrix is in *echelon* form if the following conditions hold:

  - any row of zeros is at the bottom of the matrix
  - for each non-zero row, the pivot entry is further to the right
    than the pivot entry in any previous row.

- goal: use row operations to put the matrix $B$ in *echelon
  form*.


:::

## Examples: echelon form

The matrix
$\begin{bmatrix} 1 & 0 & 0 & 1 & 2 \\
0 & 0 & 2 & 2 & 3 \\
0 & 0 & 0 & 0 & 0 \\
\end{bmatrix}$ 
is in echelon form.

. . .

But $\begin{bmatrix} 1 & 0 & 1 & 0 & 2 \\
0 & 0 & 2 & 2 & 3 \\
0 & 0 & 2 & 0 & 1 \\
\end{bmatrix}$ is not in echelon form.

## $B\mathbf{x} = \mathbf{0}$ for $B$ in echelon form.

::: incremental

- consider $m \times n$ matrix $B$ in echelon form.

- label the columns of $B$ by variables $x_1,\cdots,x_n$.

- if the $i$-th column contains a *pivot entry* for some row, we say
  that $x_i$ is a *pivot variable*. Otherwise, $x_i$ is a *free
  variable*.


- If $B=\begin{bmatrix} 1 & 0 & 0 & 1 & 2 \\ 0 & 0 & 2 & 2 & 6 \\ 0 &
  0 & 0 & 0 & 0 \\ \end{bmatrix}$ then $x_2, x_4, x_5$ are *free
  variables* and $x_1,x_3$ are *pivot variables*.

- in the example, we want to find solutions $\mathbf{x} = \begin{bmatrix} 
  x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5
  \end{bmatrix}$ to $B \mathbf{x} = \mathbf{0}$.

:::

----

::: incremental

- of course, $B \mathbf{x} = \begin{bmatrix}
  x_1 + x_3 + 2x_5 \\
  2x_3 + 2x_4 + 6x_5 \\
  0  
  \end{bmatrix}$
  and we observe that the entries of $B \mathbf{x}$ are determined by the rows of $B$.
  
- whenever $B$ is in echelon form, the condition that $\mathbf{x}$ is
  a solution to $B \mathbf{x} = \mathbf{0}$ gives equations which permit us to express
  each pivot variable in terms of the free variables.
  
- in the example, 
  \begin{align*}
  x_3 & = -x_4 - 3x_5 \\
  x_1 & = -x_3 - 2x_5 = - (-x_4 - 3x_5) - 2x_5 = x_4 -x_5
  \end{align*}
  
  
:::

-----

::: incremental

- **FACT** each free variable determines a solution. Choose a free
  variable, set it equal to 1, set the remaining free variables to 0,
  and use the equations to determine the values of the pivot
  variables.
  
- in the example, the free variables are $x_2,x_4,x_5.$

- recall the equations
  \begin{align*}
  x_3 & = -x_4 - 3x_5 \\
  x_1 & = x_4 -x_5
  \end{align*}

- we find the solutions

  $$\mathbf{v_2} = \begin{bmatrix} 0 \\ 1 \\ 0 \\ 0 \\ 0 \end{bmatrix}
  , \quad 
  \mathbf{v_4} = \begin{bmatrix} 1 \\ 0 \\ -1 \\ 1 \\ 0 \end{bmatrix}
  , \quad
  \mathbf{v_5} = \begin{bmatrix}  -3 \\ 0 \\ -1 \\ 0 \\ 1 \end{bmatrix}.$$

:::


----

::: incremental

- in the example, the *general solution* to $B \mathbf{x} = \mathbf{0}$ is given by

  $$\mathbf{x} = c_2 \mathbf{v_2} + c_4 \mathbf{v_4} + c_5
  \mathbf{v_5} = \begin{bmatrix} c_4 - 3c_5 \\ c_2 \\ -c_4 -c_5 \\ c_4
  \\ c_5 \end{bmatrix}$$.

- this conclusion always holds: to describe the general solution to $B
  \mathbf{x} = \mathbf{0}$, first find a matrix $B'$ which is row
  equivalent to $B$ with $B'$ in echelon form. Find the free variables
  for $B'$.  Each free variable determines a solution to $B \mathbf{x}
  = \mathbf{0}$, and the solutions found in this way generate the
  general solution.

:::

## Finding eigenvectors: Example 1

Recall we saw earlier that
$A = \begin{bmatrix} 1 & 1 \\ 3 & 1 \end{bmatrix}$
has eigenvalues $\lambda = 1 \pm \sqrt{3}$.

. . .

Let's find an eigenvector for $\lambda = 1 + \sqrt{3}$. We must solve:

$$\mathbf{0}  = (A - (1+ \sqrt{3})\mathbf{I_2})\mathbf{x} = \begin{bmatrix} -\sqrt{3} & 1 \\
3 & -\sqrt{3} \end{bmatrix} \mathbf{x}.$$

. . .

Note that we have row equivalences as follows:
$$\begin{bmatrix} -\sqrt{3} & 1 \\
3 & -\sqrt{3} \end{bmatrix} \sim
\begin{bmatrix} 3 & -\sqrt{3} \\
3 & -\sqrt{3} \end{bmatrix} \sim
\begin{bmatrix} 3 & -\sqrt{3} \\
0 & 0  \end{bmatrix} \sim
\begin{bmatrix} 1 & -\sqrt{3}/3 \\
0 & 0  \end{bmatrix}$$

-----

The matrix  
$$\begin{bmatrix} 1 & -\sqrt{3}/3 \\
0 & 0  \end{bmatrix}$$
has one pivot variable $x_1$ and one free variable $x_2$. 

. . .

Thus the general solution to $(A - (1+\sqrt{3})\mathbf{I_2})
\mathbf{x} = \mathbf{0}$ is generated by the vector
$$\begin{bmatrix}
 \sqrt{3}/3 \\ 1
\end{bmatrix} \quad \text{or by} \quad
\mathbf{v} = \begin{bmatrix}
 \sqrt{3} \\ 3
\end{bmatrix}$$

. . .

In particular $\mathbf{v}$ is a $(1 + \sqrt{3})$-eigenvector for
$A=\begin{bmatrix} 1 & 1 \\ 3 & 1 \end{bmatrix}$.

-----

Now let's find an eigenvector for $\lambda = 1 - \sqrt{3}$. We must solve:

$$\mathbf{0}  = (A - (1- \sqrt{3})\mathbf{I_2})\mathbf{x} = \begin{bmatrix} \sqrt{3} & 1 \\
3 & \sqrt{3} \end{bmatrix} \mathbf{x}.$$

. . .

We have row equivalences as follows:
$$\begin{bmatrix} \sqrt{3} & 1 \\
3 & \sqrt{3} \end{bmatrix} \sim
\begin{bmatrix} 3 & \sqrt{3} \\
3 & \sqrt{3} \end{bmatrix} \sim
\begin{bmatrix} 3 & \sqrt{3} \\
0 & 0  \end{bmatrix} \sim
\begin{bmatrix} 1 & \sqrt{3}/3 \\
0 & 0  \end{bmatrix}$$

. . .

Again there is only one free variable, so the general solution to
$\mathbf{0} = (A - (1- \sqrt{3})\mathbf{I_2})\mathbf{x}$ is generated by

$$\mathbf{w} = \begin{bmatrix}
 -\sqrt{3} \\ 3
\end{bmatrix}$$

. . .

and this vector $\mathbf{w}$ is a $(1 - \sqrt{3})$-eigenvector for $A$.

## Finding eigenvectors: Example 2

We saw earlier that the eigenvalues of $B = \begin{bmatrix} 0 & -2 & 2 \\ 
1 & 3 & -2 \\ 2 & 4 & -3 \end{bmatrix}$ are

$$\lambda=1 \quad \text{with multiplicity 2, and} \quad \lambda = -2 \quad \text{(with multiplicity 1)}.$$

. . .

Let's find the eigenvector(s) for $\lambda  =1$. We need to solve the equation

$$\mathbf{0} = (B - \mathbf{I_3})\mathbf{x} = \left(\begin{bmatrix} 0 & -2 & 2 \\ 
1 & 3 & -2 \\ 2 & 4 & -3 \end{bmatrix} - \begin{bmatrix}
1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1
\end{bmatrix}\right) \mathbf{x}=
\begin{bmatrix} -1 & -2 & 2 \\ 
1 & 2 & -2  \\ 2 & 4 & -4 \end{bmatrix} \mathbf{x}$$ 


-----

We have row equivalences
$$\begin{bmatrix} -1 & -2 & 2 \\ 
1 & 2 & -2  \\ 2 & 4 & -4 \end{bmatrix} \sim 
\begin{bmatrix} 1 & 2 & -2 \\ 
1 & 2 & -2  \\ 1 & 2 & -2 \end{bmatrix} \sim
\begin{bmatrix} 1 & 2 & -2 \\ 
0 & 0  & 0  \\ 0 & 0 & 0  \end{bmatrix}$$

. . .

In this case, there are two free variables, $x_2$ and $x_3$
Note that $0 = x_1 + 2x_2 - 2x_3.$

. . .

We find solutions

$$\mathbf{u} = \begin{bmatrix} -2 \\ 1 \\ 0 \end{bmatrix} 
\quad
\mathbf{v} =\begin{bmatrix} 2 \\ 0 \\ 1 \end{bmatrix}$$

The vectors $\mathbf{u}$ and $\mathbf{v}$ 
generate the $1$-eigenspace of the matrix $B$.


-----

Finally, let us find eigenvector(s) for $B$ for $\lambda=-2$:

We need to solve the equation
$$\mathbf{0} = (B + 2\mathbf{I_3})\mathbf{x} = \left(\begin{bmatrix} 0 & -2 & 2 \\ 
1 & 3 & -2 \\ 2 & 4 & -3 \end{bmatrix} + \begin{bmatrix}
2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 2
\end{bmatrix}\right) \mathbf{x}=
\begin{bmatrix} 2 & -2 & 2 \\ 
1 & 5 & -2  \\ 2 & 4 & -1 \end{bmatrix} \mathbf{x}$$ 

. . .

We have row equivalences
\begin{align*}
&\begin{bmatrix} 2 & -2 & 2 \\ 
1 & 5 & -2  \\ 2 & 4 & -1 \end{bmatrix} \sim
\begin{bmatrix} 1 & -1 & 1 \\ 
1 & 5 & -2  \\ 2 & 4 & -1 \end{bmatrix} \sim
\begin{bmatrix} 1 & -1 & 1 \\ 
 0 & 6 & -3 \\
 2 & 4  & -1\end{bmatrix} \sim 
\begin{bmatrix} 1 & -1 & 1 \\ 
 0 & 2 & -1 \\
 0 & 6 & -3 \end{bmatrix}   \\
\sim & \begin{bmatrix} 1 & -1 & 1 \\ 
 0 & 2& -1 \\
 0 & 0 & 0 \end{bmatrix} 
\end{align*}

----

We have one free variable, $x_3$. Equating coefficients in the expression
$\mathbf{0} = B \mathbf{x}$ gives
$x_2 = x_3/2$ and $x_1 - x_2 + x_3 =0$, so that
$x_1 = x_2 - x_3 = -x_3/2$.

. . .

Setting $x_3 =1$ gives $x_2 = 1/2$ and $x_1 = -1/2$.

Thus
$$\begin{bmatrix}
-1/2 \\ 1/2 \\ 1
\end{bmatrix}$$
is a $(-2)$-eigenvector for $B$.

. . .

One might prefer to replace  this vector by
$\mathbf{w} = \begin{bmatrix}
-1 \\ 1 \\ 2
\end{bmatrix}$.

The vector $\mathbf{w}$ generates the $(-2)$-eigenspace of $B$.


## Bibliography {.unnumbered}

::: {.refs}
:::
