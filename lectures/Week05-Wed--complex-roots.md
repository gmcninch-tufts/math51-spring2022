---
author: George McNinch
title: |
  Math 51 Spring 2022 - Week 5 Wed \
  
date: 2022-02-16
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 2.6].

# Solutions to Homogeneous Linear Equations: Complex Roots

## Recalling the real-roots case

In the previous lecture, we described how to find the solutions to a
homogeneous equation $$P(D)x = 0$$ using the roots of the
characteristic polynomial $P(r)$, *in the case where all roots of
$P(r)$ are real numbers*.

## Factoring

::: incremental

- Consider $(\clubsuit) \quad (D^3 - 4D^2 + 5D - 2)x = 0$ with
  characteristic polynomial $p(r) = r^3 - 4r^2 +5r - 2$.

- Since $p(1) = 1 - 4 + 5 - 2 = 0$, we see that $1$ is a root and
  hence $r-1$ is a *factor* of $p(r)$.
  
- using *long-division* we find that $p(r) = (r-1)(r^2 - 3r + 2)$.

- finally, we can factor the quadratic $r^2 - 3r + 2 = (r-2)(r-1)$.

- summing up, we find that $p(r) = r^3 - 4r^2 +5r - 2 = (r-2)(r-1)^2$

- thus the general solution to $(\clubsuit)$ is 
  $$x = c_1 e^{2t} + c_2 e^t + c_3 te^t.$$

:::

## Complex numbers

::: incremental

- recall that we write $i = \sqrt{-1}$  for a root of the equation $r^2 + 1 = 0$.

- and a *complex number* $z$ has the form $z = a + bi$ for real #s $a,b$.

- some polynomials with real-number coefficients have complex roots

- for ex, the *quadratic formula* shows that $r^2 + 2r + 2 = 0$
  has solutions $$\dfrac{-2 \pm \sqrt{4 - 8}}{2} = \dfrac{-2 \pm
  \sqrt{-4}}{2} = \dfrac{-2 \pm i\cdot 2}{2} = -1 \pm i.$$
  
- This shows that $r^2 + 2r + 2 = (r-(-1 +i))\cdot  (r-(-1-i))$.

- note that $\overline{-1 + i} = -1 -i$, where $\overline{z} =
  \overline{a+bi} = a-bi$ denotes the *complex conjugate* of $z=a+bi$.

:::

## Facts about complex roots of polynomials

::: incremental
- Every polynomial with real (or complex) coefficients has a root of
  the form $z = a+bi$ for real numbers $a,b$.
  
- As a consequence, every poly with real (or complex) coefficients of
  degree $n$ has $n$ roots which are complex numbers, provided that
  roots are counted with multiplicity.

- If the polynomial $P(r)$ has *real numbers* as coefficients, and if
  $z = a+bi$ is a root of $P$, then $\overline{z} = a-bi$ is also a
  root of $P$

- We saw this already for $r^2 + 2r +2 = (r-z)(r-\overline{z})$ where
  $z = -1 + i$.

- Of course, if $z = a + 0i = a$ is a real number then $\overline{z} = z$.

:::

## Conjugate complex numbers

::: incremental

- Every complex number $z = a+bi$ is the root of a polynomial $P(r)$
  with real coefficients.

- if $b=0$ -- i.e. if $z$ is actually a real number -- then $z = a$ is
  a root of the linear polynomial $P(r) = r-a$.

- if $b \ne 0$, consider
  \begin{align*}
  P(r) &= (r-z)(r-\overline{z}) \\
  &= r^2 - zr - \overline{z}r + z\cdot \overline{z} \\
  &= r^2 - (z + \overline{z})r + z\cdot\overline{z}
  \end{align*}
  whose roots are $z$ and $\overline{z}$.

- Since $z + \overline{z} = 2a$ and $z\cdot \overline{z} = a^2 + b^2$
  we have $$P(r) = r^2-2ar + (a^2 + b^2).$$ In particular, $P(r)$ has
  *real coefficients*.
  
:::

-----

::: incremental

- for example, if $z = 2+3i$, then 
  $$P(r) = (r-z)(r-\overline{z}) = r^2 - 4r + 13.$$

- if $z = -3 + 2i$ then
  $$P(r) = (r-z)(r-\overline{z}) = r^2 + 6r + 13.$$

:::


## Complex roots, redux

::: incremental

- suppose that the polynomial $P(r)$ has real coefficients,

- that $z = a+bi$ is a root of $P(r)$,

- and that $b \ne 0$ (so that $z$ is not a real number).

- [*Fact*]{.smallcaps}: There is a polynomial $Q(r)$ with real
  coefficients such that
  $$P(r) = Q(r) \cdot (r-z)(r-\overline{z}) = Q(r) \cdot \left(r^2 - 2ar + (a^2 + b^2)\right)$$

:::

## Return to linear ODEs with const coefficients

::: incremental

- consider the homog. linear ODE $(\spadesuit) \quad P(D)x = 0$ for a polynomial $P(r)$.

- If $P(r)$ has a complex root $z = a + bi$ with $b \ne 0$, we need to
  understand what solutions to $(\spadesuit)$ arise from $z$ and $\overline{z}$.
  
- This amounts to the question: what are the solutions to the ODE 
  $$(D^2 - 2aD + (a^2+b^2))x = 0.$$

- If we ignored the fact that $z$ is complex, we should have solutions
  $$h_1(t) = e^{zt} \quad \text{and} \quad h_2(t) = e^{\overline{z}t}.$$

:::

------

::: incremental

- Now, *laws of exponents* show that 
  $$e^{zt} = e^{(a+bi)t} = e^{at} \cdot e^{bti}.$$

- And a result known as [Euler's Formula]{.smallcaps} tells us that
  $$e^{it} = \cos(t) + i \sin(t).$$
  
- so $e^{bti} = \cos(bt) + i \sin(bt)$. Thus, we find solutions
  to $(\spadesuit)$:
  \begin{align*}
  e^{zt} &= e^{at} \cdot \left(\cos(bt) + i\sin(bt)\right) \\
  e^{\overline{z}t} &= e^{at} \cdot \left(\cos(bt) - i\sin(bt)\right) 
  \end{align*} 
  

- finally, we make *real valued* solutions from complex linear
  combinations of these solutions as follows:

  \begin{align*}
  h_1(t) &= \dfrac{e^{zt} + e^{\overline{z}t}}{2} = e^{at}  \cos(bt) \\
  h_2(t) &= \dfrac{e^{zt} - e^{\overline{z}t}}{2i} = e^{at}\sin(bt)  
  \end{align*}
:::

---------

::: incremental

- if you would like to confirm directly that these functions are
  indeed solutions, you can use the *exponential shift formula* to
  confirm that $$(D^2 - 2aD + (a^2 +b^2))[h_i(t)] = 0$$ for $i=1,2$
  where $h_1(t) = e^{at} \cos(bt)$ and $h_2(t) = e^{at} \sin(bt)$.
  
:::

----

::: incremental
  
- for example, consider $$(D^2  -4D + 13)x = 0.$$ 

- We saw earlier that
  $P(r) = r^2 - 4r + 13$ has roots $2 + 3i$ and $2-3i.$ This *pair of roots*
  corresponds to the *pair of solutions* $$e^{2t} \cdot \cos(3t) \quad
  \text{and} \quad e^{2t} \sin(3t).$$ 
  
- let's *check* e.g. that $e^{2t} \cos(3t)$ is a solution using exponential shift formula:

  \begin{align*}
  (D^2  -4D + 13)[e^{2t} \cos(3t)] &= 
  e^{2t} ((D+2)^2  -4(D+2) + 13)[\cos(3t)] \\
  &= e^{2t} (D^2 + 4D + 4 - 4D -8 + 13)[\cos(3t)] \\
  &= e^{2t} (D^2 + 9)[\cos(3t)] \\
  &= e^{2t} (-9 \cos(3t) + 9\cos(3t)) = 0.
  \end{align*}
  
- the general solution to $(D^2 -4D + 13)x = 0$ is $$x
  = c_1 e^{2t} \cos(3t) + c_2 e^{2t} \sin(3t).$$

:::

## Complex roots and multiplicities

::: incremental

- Consider a polynomial $P(r)$ with real coefficients having a complex
  root $z$ appearing with multiplicity $>1$.
  
- For example, $P(r) = (r^2 + 2)^2(r-3)$ has the root $z = i\sqrt{2}$
  occurring with multiplicity 2.
  
  Of course, it also has the *conjugate root* $z=-i\sqrt{2}$ with mult 2.

- If $z = a + bi$ is a root of $P(r)$, write $I(r) = r^2 -2ar + (a^2 +
  b^2)$. 
  
- the root $z$ of $P(r)$ has multiplicity $k$ means that $P(r) =
  I(r)^k \cdot Q(r)$ where $z$ is not a root of $Q(r)$.


:::

-------

::: incremental

- recall that in the real root case, a root $\lambda$ of multiplicity
  $k$ gives rise to solutions to the ODE $P(D)x = 0$ as follows:
  $$e^{\lambda t} \quad , \quad te^{\lambda t} \quad , \quad t^2 e^{\lambda t} \quad \dots \quad t^{k-1}
  e^{\lambda t}.$$

- for a root $z = a+ bi$ of $P(r)$ of multiplicity $k$, when $b \ne 0$
  we get $2k$ solutions to the ODE $P(D)x = 0$  as follows:
  
  \begin{align*}
  & e^{a t} \cos(bt) \quad , \quad e^{a t} \sin(bt), \\
  & te^{a t} \cos(bt) \quad , \quad  te^{a t} \sin(bt), \\
  & \vdots \\
  & t^{k-1}e^{a t} \cos(bt) \quad , \quad  t^{k-1}e^{a t} \sin(bt), \\
  \end{align*}

:::

## Example

::: incremental
- The roots of $P(r) = (r^2 + 2)^2(r-3)$ are $\pm i\sqrt{2}, 3$

- the polynomial $P(r)$ has degree 5.

- the functions 

  $$\cos(\sqrt{2}t) \quad , \quad \sin(\sqrt{2}t) \quad , \quad
  t\cos(\sqrt{2}t) \quad , \quad t\sin(\sqrt{2}t) \quad , \quad
  e^{3t}$$

  generate the general solution to $(D^2+2)^2(D-3)x=0$.
  
- i.e. the general solution has the form


  $$x(t) = c_1 \cos(\sqrt{2}t) + c_2 \sin(\sqrt{2}t) + c_3
  t\cos(\sqrt{2}t) + c_4 t\sin(\sqrt{2}t) + c_5 e^{3t}$$
  
- note that $z = 0 + bi$ gives rise to solutions
  \begin{align*}
  &e^{0t} \cos(bt) &\quad , \quad & e^{0t} \sin(bt) &\quad , \quad  \dots \\
  = \quad & \cos(bt) &\quad , \quad &  \sin(bt) & \quad , \quad  \dots
  \end{align*}

:::

## Example

::: incremental

- consider
  $$(D^2 + 1)(D^2 -4D + 13)^2 x = 0$$

- The characteristic polynomial $(r^2+1)(r^2 -4r + 13)^2$
  has roots $\pm i$ each with multiplicity 1, and $2\pm 3i$ each with multiplicity 2.

- so the general solution has the form

  \begin{align*}
  x(t) = &c_1 \cos(t) + c_2 \sin(t) + c_3e^{2t}\cos(3t) + c_4e^{2t}\sin(3t) \\
  &+c_5 te^{2t}\cos(3t) + c_6 te^{2t}\sin(3t).
  \end{align*}


:::

## Bibliography {.unnumbered}

::: {.refs}
:::
