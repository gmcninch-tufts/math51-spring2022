---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 2 Monday \
  Separation of variables
date: 2022-01-24
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

This lecture covers material from [@gutermanNitecki, sec. 1.2].

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

- Find the solutions to the o.d.e. 
  $$\dfrac{dx}{dt} = -t \cdot x^3.$$


- we can't integrate both sides until we reorganize a bit. We rewrite
  this equation as
  
  $$\dfrac{1}{x^3} \dfrac{dx}{dt} = -t \quad \text{and then} \quad \dfrac{1}{x^3} dx = -t dt.$$
  
- (You can think of the second equality as resulting from
  "multiplication by the differential $dt$" and use of the identity $dx =
  \dfrac{dx}{dt} dt$.)
  
  
:::

-----------

  Having rewritten the equation in the form
  $\dfrac{1}{x^3} dx = -t dt$
  we  can *now* integrate:

  \begin{align}
  \int \dfrac{1}{x^3} dx = -\int t dt 
  \implies & \int x^{-3} dx = -\int t dt \\
  \implies & \dfrac{-1}{2} x^{-2} = \dfrac{-t^2}{2} + C.
  \end{align}

::: incremental

- From $\dfrac{-1}{2} x^{-2} = \dfrac{-t^2}{2} + C$, find that
  $x^{-2} = t^2 - 2C$ and thus

  $$x^2 = \dfrac{1}{t^2 - 2C}$$


- so  we find solutions given by formulas

  $$x = \pm \sqrt{\dfrac{1}{t^2 - 2C}} = \pm \sqrt{\dfrac{1}{t^2 + D}}$$
  
  for an arbitrary constant $D$.

:::

------------------


- we can check directly that the formula(s)
  $$x=\sqrt{\dfrac{1}{t^2 + D}} \quad \text{and} \quad x=-\sqrt{\dfrac{1}{t^2 + D}}$$
  for $x$ solve the o.d.e. $$x' = -tx^3.$$

::: incremental

- Indeed, let's first check that $x=\sqrt{\dfrac{1}{t^2 + D}}$ is a
  solution, using the chain rule:

  \begin{align}
  x' = \dfrac{d}{dt}\left(\sqrt{\dfrac{1}{t^2 + D}} \right) & = 
  \dfrac{1}{2}\left(\dfrac{1}{t^2 + D} \right )^{-1/2}(-1)(t^2+D)^{-2}(2t) \\
  &= \dfrac{-1}{2} x^{-1} \cdot x^4 \cdot 2t  \\
  &= -tx^3.
  \end{align}

- Here we used the easily-checked identity $(t^2+D)^{-2} = x^4$.
  
:::

--------

::: incremental

- Now let's check that $x=-\sqrt{\dfrac{1}{t^2 + D}}$ is also
  solution (again using the chain rule):

  \begin{align}
  x' = \dfrac{d}{dt}\left(-\sqrt{\dfrac{1}{t^2 + D}} \right) & = 
  \dfrac{-1}{2}\left(\dfrac{1}{t^2 + D} \right )^{-1/2}(-1)(t^2+D)^{-2}(2t) \\
  &= \dfrac{(-1)^3}{2} x^{-1} \cdot x^4 \cdot 2t  \\
  &= -tx^3.
  \end{align}

- Here we still have the identity $(t^2+D)^{-2} = x^4$, but now
  $\left(\dfrac{1}{t^2 + D}\right)^{-1/2} = -x^{-1}$.
  
:::

------

::: incremental

- We remark that the solutions $$x=\sqrt{\dfrac{1}{t^2 + D}} \quad
  \text{and} \quad x=-\sqrt{\dfrac{1}{t^2 + D}}$$ for the o.d.e. $$x'
  = -tx^3$$ are only defined "sometimes":

- if $D > 0$, the solutions are defined for $-\infty < t < \infty$ (i.e. for *all* $t$)

- but if $D \le 0$, the solutions are only defined for $t$ satisfying
  the condition $t^2 + D > 0$, i.e. they are only defined on the
  intervals $(-\infty,-\sqrt{-D})$ and $(\sqrt{-D},\infty)$.

- and *finally*, we remark that in order to use the method, we divided
  the original ODE by $x^3$, which we can only do for $x \ne 0$.
  
  The constant solution $x(t) = 0$ is also a solution to the ODE $x' = - x^3 t$.
  

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
  
  $$\int \dfrac{1}{f(x)} dx = \int g(t) dt \quad \text{to obtain} \quad
  F(x) = G(t) + C$$
  
  where $F$ is an antiderivative of $\dfrac{1}{f}$, $G$ is an
  antiderivative of $g$, and $C$ is an arbitrary constant.
  
-  This expression *implicitly* defines $x$ in terms of $t$, and the
   implicitly defined function(s) $x$ are *solutions* to the
   ODE
   
- finally if $r$ is a real number for which $f(r) = 0$, then $x(t) =
  r$ is a *constant solution* to the ODE.

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

# Exponential example

::: incremental

- recall the ODE $(\clubsuit) \quad \dfrac{dx}{dt} = \lambda x$ that comes up in
  pop. growth, radioactive decay, ...
- we can solve this ODE using separation of variables.
  Rewriting in the form $\dfrac{1}{x} dx = \lambda dt$, we integrate

  \begin{align*}
  \int \dfrac{1}{x} dx = \lambda \int dt \quad \implies &
  \ln |x| = \lambda t + C \\
  \implies & |x| = e^C e^{\lambda t} \\
  \implies & x = \pm e^C e^{\lambda t}
  \end{align*}

- We have also the constant solution $x  = 0$.
  
- since $C$ is an arbitrary constant, $\pm
  e^C$ is an arbitrary non-zero real number.
  
- thus the *general solution* to  $(\clubsuit)$ is given by the formula
  
  $$x = ke^{\lambda t}$$
  
  where $k$ is an arbitrary constant (zero or non-zero).

:::

# Another example

::: incremental

  - Suppose that the rate of change of a quantity $x$ is proportional
    to the *product* of $x$ and $t$

  - i.e. $\dfrac{dx}{dt} = \lambda xt$ for some constant $\lambda$.

  - solving this equation using *separation of variables*
  
    \begin{align*}
	\dfrac{1}{x} dx = \lambda t dt \implies & \int \dfrac{1}{x} dx = \int \lambda t dt \\
	\implies & \ln |x| = \dfrac{\lambda}{2} t^2 + C \\
	\implies & x = \pm e^C e^{\lambda t^2/2}
	\end{align*}

  - again, we have the constant solution $x(t) = 0$
  
  - we find that the general solution is $x(t) = k e^{\lambda t^2/2}$ (for $k$ arbitrary)

:::

# Bibliography {.unnumbered}

::: {.refs}
:::
