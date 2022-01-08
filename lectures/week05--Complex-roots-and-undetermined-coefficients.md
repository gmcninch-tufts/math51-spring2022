---
author: George McNinch (Math 51 Fall 2021)
title: Week 5 - Complex roots and undetermined coefficients
date: 2021-10-08
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture follows [@gutermanNitecki §2.6 and 2.7].

In this lecture, we continue to discuss *linear* ODES with *constant
coefficients*.

# Homog equations - complex roots

## Recalling the real-roots case

In the previous lecture, we described how to find the solutions to a
homogeneous equation $$P(D)x = 0$$ using the roots of the
characteristic polynomial $P(r)$, *in the case where all roots of
$P(r)$ are real numbers*.

---------

For example, we saw that the general solution to 
$$(D^3 - 4D^2 + 5D - 2)x = 0$$
can be obtained by noting that $r^3 - 4r^2 +5r - 2 = (r-2)(r-1)^2$
which has roots $\lambda = 2$ and $1$, where $1$ has multiplicty 2.

. . .

Thus the general solution is
$$x = c_1 e^{2t} + c_2 e^t + c_3 te^t.$$

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
  
- Of course, if $z = a + 0i = a$ is a real number then $\overline{z} = z$.

:::

## Conjugate complex numbers

::: incremental

- let $z = a+bi$ and consider the polynomial
  $$P(r) = (r-z)(r-\overline{z}) = (r-(a+bi))(r-(a-bi))$$
  whose roots are $z$ and $\overline{z}$.
  Then
  $$P(r) = r^2-2ar + (a^2 + b^2).$$
  In particular, $P(r)$ has *real coefficients*.
  
  
- for example, if $z = 2+3i$, then 
  $$P(r) = (r-z)(r-\overline{z}) = r^2 - 4r + 12.$$

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
  
- In particular, $e^{bti} = \cos(bt) + i \sin(bt)$. Thus, we find solutions
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
  
- for example, consider $$(D^2  -4D + 12)x = 0.$$ We saw earlier that
  $P(r) = r^2 - 4r + 12$ has roots $2 + 3i$ and $2-3i$. This *pair of roots*
  corresponds to the *pair of solutions* $$e^{2t} \cdot \cos(3t) \quad
  \text{and} \quad e^{2t} \sin(3t).$$ 
  
- In particular, the general solution
  to $(D^2 -4D + 12)x = 0$ is $$x = c_1 e^{2t} \cos(3t) + c_2 e^{2t}
  \sin(3t).$$

:::

## Complex roots and multiplicities

::: incremental

- Consider a polynomial $P(r)$ with real coefficients having a complex
  root $z$ appearing with multiplicity $>1$.
  
- For example, $P(r) = (r^2 + 2)^2(r-3)$ has the root $z = i\sqrt{2}$
  occurring with multiplicity 2.
  
  Of course, it also has the *conjugate root* $z=-i\sqrt{2}$ with mult 2.

:::

-------

::: incremental

- recall that in the real root case, a root $\lambda$ of multiplicity
  $k$ gives rise to solutions to the ODE $P(D)x = 0$ as follows:
  $$e^{\lambda t}, te^{\lambda t}, t^2 e^{\lambda t}, \dots, t^{k-1}
  e^{\lambda t}.$$

- for a root $z = a+ bi$ of $P(r)$ of multiplicity $k$, when $b \ne 0$
  we get $2k$ solutions to the ODE $P(D)x = 0$  as follows:
  
  \begin{align*}
  & e^{a t} \cos(bt), e^{a t} \sin(bt), \\
  & te^{a t} \cos(bt), te^{a t} \sin(bt), \\
  & \vdots \\
  & t^{k-1}e^{a t} \cos(bt), t^{k-1}e^{a t} \sin(bt), \\
  \end{align*}

:::

## Example

::: incremental
- The roots of $P(r) = (r^2 + 2)^2(r-3)$ are $\pm i\sqrt{2}, 3$

- the polynomial $P(r)$ has degree 5.

- the functions 

  $$\cos(\sqrt{2}t), \sin(\sqrt{2}t), t\cos(\sqrt{2}t), t\sin(\sqrt{2}t), e^{3t}$$

  generate the general solution to $(D^2+2)^2(D-3)x=0$.
  
- i.e. the general solution has the form


  $$x(t) = c_1 \cos(\sqrt{2}t) + c_2 \sin(\sqrt{2}t) + c_3
  t\cos(\sqrt{2}t) + c_4 t\sin(\sqrt{2}t) + c_5 e^{3t}$$
  
- note that $z = 0 + bi$ gives rise to solutions
  $e^{0t} \cos(bt), e^{0t} \sin(bt), \dots = \cos(bt), \sin(bt), \dots$

:::

## Example

::: incremental

- consider
  $$(D^2 + 1)(D^2 -4D + 12)^2 x = 0$$

- The characteristic polynomial $(r^2+1)(r^2 -4r + 12)^2$
  has roots $\pm i$ each with multiplicity 1, and $2\pm 3i$ each with multiplicity 2.

- so the general solution has the form

  $$x(t) = c_1 \cos(t) + c_2 \sin(t) + c_3e^{2t}\cos(3t) + c_4e^{2t}\sin(3t)
   +c_5 te^{2t}\cos(3t) + c_6 te^{2t}\sin(3t).$$

:::

# Inhomog eqns - Undetermined coefficients

## Recall

::: incremental

- We want to solve linear ODEs of the form $$(\clubsuit) \quad P(D) x = E(t)$$

- to do so, we first find the general solution $H(t)$ to the homog. equation 
  $$P(D)x = 0$$
  
- and then we need a *particular* solution $q(t)$ to $P(D)x =
  E(t)$. Use of the term *particular solution* is meant to emphasize
  that we need only *one* such solution.
:::

------------

::: incremental

- now the general solution to $(\clubsuit) \quad P(D) x = E(t)$ is given by
  $$x(t) = q(t) + H(t).$$

- we've seen in previous sections how to solve the *homogeneous*
  equation $P(D)x = 0$ -- i.e. how to find $H(t)$.

- now we need techniques for find $q(t)$. 

- we are going to learn two: 
  - *method of undetermined coefficients* (in this lecture), and 
  - *variation of parameters* (after the exam)

:::

## Carrying out the method

::: incremental

- consider $P(D)x = E(t)$

- we *find/choose* a linear differential operator $A(D)$ for which
  $A(D)[E(t)] = 0$.
  
- i.e. we need to recognize (if possible!!) $E(t)$ as a solution to
  $A(D)x = 0$ *for a suitable $A(D)$.*

- we now notice that any function which is a solution to $P(D)x =
  E(t)$ is also a solution to the homog. equation $A(D)P(D)x = 0$.
  
- indeed, if $P(D)[q(t)] = E(t)$ then
  $$A(D)P(D)[q(t)] = A(D)[E(t)] = 0.$$

- now, *we describe the general solution* to $A(D)P(D) x = 0$ and
  treat it as our *guess* for the solution $q(t)$.

:::

## first example

::: incremental

- consider $(\clubsuit) \quad (D^2 - 2D -3)x = 1 + e^{-2t}$.

- note that $A(D) = D(D+2)$ has the property that $A(D)[1 + e^{-2t}] =
  0$.

- now the homog equation 

  $$0 = A(D)(D^2 - 2D - 3)x = D(D+2)(D-3)(D+1)x$$
  
  has general solution generated by $1, e^{-2t}, e^{3t}, e^{-t}$.
  
- so we look for a solution $q(t)$ to $(\clubsuit)$ from among the functions
  $$k_1 +  k_2e^{-2t} + k_3 e^{3t} + k_4 e^{-t}$$

- since $(D^2 - 2D -3)(k_3 e^{3t} + k_4 e^{-t}) = 0$, we may as
  well take $k_3 = k_4 = 0$.
  
- thus, we look for $q(t)$ of the form $k_1 + k_2e^{-2t}$

:::

------

::: incremental

- we need to find the coefficients $k_1,k_2$ such that

- $q(t) = k_1 + k_2e^{-2t}$ is a solution to $(\clubsuit)$.

- we need to arrange the following:
  $$(D^2 - 2D -3)[k_1 + k_2e^{-2t}] = 1 + e^{-2t}.$$
  
- we calculate using the exponential shift formula: 
  \begin{align*}
  (D^2 -2D -3)[k_1 + k_2e^{-2t}] &= -3k_1 + k_2e^{-2t}((D-2)^2
  -2(D-2) -3)[1] \\
  &= -3k_1 + 5k_2e^{-2t}
  \end{align*}
  
- we now solve $-3k_1 + 5k_2e^{-2t} = 1 + e^{-2t}$.

- find that $-3k_1 = 1, 5k_2 = 1$ so that $k_1 = -1/3$, $k_2 = 1/5$.
:::

-------------

::: incremental

- thus a particular solution to $(\clubsuit) \quad (D^2 - 2D -3)x =
  1 + e^{-2t}$ is $$q(t) = \dfrac{-1}{3} + \dfrac{1}{5}e^{-2t}$$

- and the general solution to $(\clubsuit)$ is then
  $$x(t) =q(t) + H(t) = \dfrac{-1}{3} + \dfrac{1}{5}e^{-2t} + c_1 e^{3t} + c_2 e^{-t}.$$

- notice that in this case the form of the *simplified guess* for the
  particular solution "looks like" the right-hand side of the original
  equation. That doesn't *always* happen, as the next example shows.

:::

## Second example

::: incremental

- give a *simplified guess* for a particular solution to the inhomogeneous ODE
  $$(\diamondsuit) \quad (D^3 -2D^2 + 2D)x = e^t\sin(t)$$

- the smallest operator $L$ for which $L[e^t\sin(t)] = 0$ is $$L=(D-(1+i))(D-(1-i)) = D^2 -2D  + 2.$$

- so a particular solution of $(\diamondsuit)$ is also a solution to
  the homogeneous equation

  $$(D^2-2D + 2)(D^3 -2D^2 + 2D)x = D(D^2-2D + 2)^2= 0$$

- the general solution to this homog equation is generated by

  $$1,e^t\cos(t),e^t\sin(t),te^t\cos(t),te^t\sin(t).$$

:::

-------

::: incremental

- and a simplified guess for the required particular solution to
  $(\diamondsuit)$ is obtained by ruling out solutions to $(D^3 -
  2D^2 + 2D)x=0$ -- i.e eliminating $1,e^t\cos(t),e^t\sin(t)$.
  
- thus a simplified guess for a particular solution to
  $(\diamondsuit)$ is $$q(t) = k_1 te^t\cos(t) + k_2 te^t\sin(t).$$

:::



## Bibliography {.unnumbered}

::: {.refs}
:::
