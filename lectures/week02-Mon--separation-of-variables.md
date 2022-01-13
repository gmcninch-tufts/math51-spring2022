---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 2 Monday \
  Separation of variables
date: 2021-09-10
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

# Separation of variables

Our first main procedure for solving *some* *first order* ordinary
differential equations is called *separation of variables*.

::: incremental

- to describe this procedure, we are going to use the notation of
  *differentials*, which you will probably recognize from Calculus II.

  if $x$ is a function of $t$, the differentials $dx$ and $dt$ are
  related by the equation
  $$dx = x' dt \quad \text{i.e.} \quad dx = \dfrac{dx}{dt} dt.$$

- this differential notation is used in integration techniques:
  *$u$-substitution*, and *integration by parts*.

- the main idea behind "separation of variables" is to "integrate both
  sides of the o.d.e."

:::

# Separation of variables example

- let's start by working through an example

::: incremental

- Find the general solution to the o.d.e. 
  $$\dfrac{dx}{dt} = t \cdot x^3.$$


- we can't integrate both sides with reorganizing a bit. We rewrite
  this equation as
  
  $$\dfrac{1}{x^3} dx = t dt.$$
  
  Now we can integrate:
  
:::

-----------

  \begin{align}
  & \int \dfrac{1}{x^3} dx = \int t dt \\
  \implies & \int x^{-3} dx = \int t dt \\
  \implies & \dfrac{-1}{2} x^{-2} = \dfrac{t^2}{2} + C.
  \end{align}

::: incremental

- From $\dfrac{-1}{2} x^{-2} = \dfrac{t^2}{2} + C$, find that

  $$x^2 = \dfrac{-1}{t^2 + 2C}$$


- so  the general solution is given by the formula

  $$x = \sqrt{\dfrac{-1}{t^2 + 2C}} = \sqrt{\dfrac{-1}{t^2 + D}}$$
  
  for an arbitrary constant $D$.

:::

------------------


- we can check directly that our formula 
  $$x=\sqrt{\dfrac{-1}{t^2 + D}}$$
  for $x$ solves the o.d.e. $$x' = tx^3.$$

::: incremental

- Indeed, use the chain rule:

  \begin{align}
  \dfrac{d}{dt}\left(\sqrt{\dfrac{-1}{t^2 + D}} \right) & = 
  \dfrac{1}{2}\left(\dfrac{-1}{t^2 + D} \right )^{-1/2}(-1)^2(t^2+D)^{-2}2t \\
  &= \dfrac{1}{2} x^{-1} \cdot x^4 \cdot 2t  \\
  &= tx^3.
  \end{align}
  Here we used the easily-checked identity $(t^2+D)^{-2} = x^4$.
  
:::

# The method in general

The technique used for the earlier example will work for any *first order* o.d.e.
that can be written in the form

$$\dfrac{dx}{dt} = f(x)g(t)$$
for some functions $f(x)$ and $g(t)$. 

::: incremental

- in order to be able to carry out our procedure, we insist that $f$
  and $g$ are reasonably well-behaved functions. In particular, we
  want $g$ to be continuous, $f$ to be differentiable and $f'$ to be
  continuous.

- the existence of $f$ and $g$ of the given form is what we mean by
  "separating variables". It is crucial that $f$ doesn't depend on $t$
  and that $g$ doesn't depend on $x$.

:::

----------

- with the variables separated, we can rewrite in the form

  $$\dfrac{1}{f(x)} dx = g(t) dt.$$

::: incremental

  
- we can then integrate:
  
  $$\int \dfrac{1}{f(x)} dx = \int g(t) dt$$
  
  to obtain an expression
  
  $$F(x) = G(t) + C.$$
  
  where $F$ is an antiderivative of $\dfrac{1}{f}$, $G$ is an
  antiderivative of $g$, and $C$ is an arbitrary constant.
  
-  This expression *implicitly* defines $x$ in terms of $t$.

:::

# Why does this method work?

Given $(\clubsuit) \quad \dfrac{dx}{dt} = f(x)g(t)$ we'd like to
explain why the expression $F(x) = G(t) + C$ obtained from
integration $\displaystyle \int \dfrac{1}{f(x)} dx = \int g(t) dt$ solves the
o.d.e. $(\clubsuit)$.
  
::: incremental

- write $y = F(x)$ so that on the one hand we have

  $$dy = \dfrac{dy}{dt} dt = \dfrac{dy}{dx} \dfrac{dx}{dt} dt = \dfrac{1}{f(x)} x' dt.$$
  
  and on the other hand since $y=F(x) = G(t) + C$ we have
  $$dy = \dfrac{dy}{dt} dt = G'(t)dt = g(t)dt.$$
  
:::

------------

conclude that $dy = \dfrac{1}{f(x)} x' dt = g(t)dt$

::: incremental

- Thus $x' dt = f(x) g(t) dt$

- it now remains to argue that we can "equate coefficients of $dt$". This requires
  further formal justification (which I'll elide here...)

:::
