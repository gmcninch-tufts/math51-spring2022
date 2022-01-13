---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 1 \
  Integration and separation of variables
date: 2021-09-10
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

# What is a differential equation?

::: incremental

- **Glib answer**: “an equation involving an unknown function $x$ and
  its derivatives.”

- Let us set up some *standard notations*.

- $x$ is to be viewed as a function of the *independent variable*
  $t$. To express this, we might write $x = x(t)$.

- We then write $x' = \dfrac{dx}{dt}$, or more precisely, $x'(t) =
  \dfrac{dx}{dt}(t).$

- Similarly, $$x^{(2)} = x'' = \dfrac{d x'}{dt} = \dfrac{d^2 x}{dt^2}
  \quad \text{and} \quad x^{(3)} = x''' = \dfrac{d x^{(2)}}{dt} =
  \dfrac{d^3 x}{dt^3}.$$

:::

----------


- More generally, for $n \ge 1$ 

  $$x^{(n)} = \dfrac{d x^{(n-1)}}{dt} = \dfrac{d^n x}{dt^n}$$

::: incremental

- Then an *ordinary differential equation* is an equation involving
  the expressions $$t,x,x',x'',\cdots,x^{(n)}, \cdots.$$

- The equation is to be interpreted as an equality of *functions of
  $t$*. Thus, a function $x = \phi(t)$ is said to be a **solution** to
  the differential equation provided that the equation remains valid
  for all values of $t$ when $\phi(t)$ is substituted for $x$,
  $\phi'(t)$ is substituted for $x'$, and so on.

:::

---------


- (**FWIW:** "ordinary" differential equations stand in contrast to
  "partial" differential equations; for these, $x$ might be a function
  of several variables -- e.g. $x=x(t,u)$ -- and a partial
  differential equation then involves partial derivatives like $$
  \dfrac{\partial x}{\partial t},\dfrac{\partial x}{\partial u},
  \dfrac{\partial^2 x}{\partial^2 t}, \dfrac{\partial^2 x}{\partial t
  \partial u}, \cdots $$ We
  won't study these in our course.)  
  


# A simple form of differential equations

When you learned about integration in Calculus, you were effectively
learning to solve a simple type of ordinary differential equation.

::: incremental

- Recall that the *indefinite integral* 
  $$F(t) = \int f(t) dt$$ 
  is an *antiderivative* of $f(t)$. In other words, $F'(t) = f(t)$.

- In the language of the previous slide(s), the function $x = F(t)$ is
  a **solution** to the differential equation $$(\heartsuit) \quad x'
  = f(t).$$
  
:::

------------

-  More generally, for any constant $C$ (i.e. any fixed real
   number), $$x = F(t) + C$$ is a solution to $(\heartsuit)$.

::: incremental

- So for example, $x = \sin(t) + C$ is a solution to the differential
  equation $x' = \cos(t)$, since $$\int \cos(t) dt = \sin(t) + C.$$

- more generally, for $n= 1,2,3,\dots$ we can (attempt to) solve a
  differential equation of the form

  $$ x^{(n)} = f(t) $$
  
  by repeatedly anti-differentiating the function $f$.

- don't forget the constants of integration!!

:::

-----------

- For example, the differential equation $x^{(3)} = 1$ has solutions
  $$x(t) = \dfrac{t^3}{6} + A + B t + C t^2$$ for any constants
  $A,B,C$.
  
::: incremental

- we can find these solutions by computing
  
  \begin{align}
  x & = \int \left (\int \left (\int 1 \cdot dt \right) \cdot dt
  \right) \cdot dt \\
  & = \int \left (\int  (t + C)   dt \right) \cdot dt \\
  & = \int \left( \dfrac{t^2}{2} + Ct + B  \right) dt 
   = \dfrac{t^3}{6} + \dfrac{C}{2}t^2 + B t + A
  \end{align}

:::

------------

- we will ultimately be interested in finding the **general solution** 
  to an o.d.e. In other words, we want a *formula* that describes *all* solutions
  to the o.d.e.
  
- in the example of the preceding slide, the formula 
  $$(\clubsuit) \quad \dfrac{t^3}{6} + \dfrac{C}{2}t^2 + B t + A
  \quad \text{(or } \quad \dfrac{t^3}{6} + Ct^2 + B t + A \text{)}$$

  describes the general solution to the o.d.e.

  $$x^{(3)} = 1.$$

- in other words, *any* solution to the o.d.e. is obtained from
  $(\clubsuit)$ for some values of the constants $A,B,C$.

# Newton’s second law

In physics, [Newton's *second law of motion*](https://en.wikipedia.org/wiki/Newton's_laws_of_motion) states that

 >  for an object with constant mass, the net force on the object is
 > equal to the mass of that object multiplied by its acceleration.

::: incremental

- in symbols, $F = m a$.

- Now, if the object is moving in a line (for example, if we are
  measuring the height above ground of a falling object) and if its
  position at time $t$ is given by $x(t)$, then acceleration is given
  by $a = a(t) = x''(t)$.

- so $F = m x''$ relates the force and the second derivative of the
  interesting variable -- namely the position of the object.

:::

-----------

- important idea here: 

> "...in many physical situations, the relation between rates of
>  change of observable quantities is simpler than the relation
>  between the quantities themselves." 

# Population models

An example of an o.d.e. you may have seen before is the [Malthusian
population growth
model](https://en.wikipedia.org/wiki/Malthusian_growth_model).

::: incremental

- British economist Thomas Malthus postulated (1798) that the rate of
  change of a population is proportional to its size.

- If $x(t)$ represents some population at time $t$, Malthus' model means
  that

  $$(\diamondsuit) \quad \dfrac{dx}{dt} = \lambda x$$

  for some constant $\lambda$ (a *constant of proportionality*).

- thus, in Malthus' model the function $x=x(t)$ describing the
  population is a *solution* to the o.d.e. $(\diamondsuit)$.

:::

----------

- it turns out (we'll justify this assertion later) that the general solution
  to 
  $$(\diamondsuit) \quad \dfrac{dx}{dt} = \lambda x$$
  is given by
  $$x = ke^{\lambda t}.$$
  where $k$ is an arbitrary constant.
  
::: incremental

- observe in this case that the constant $k = x(0)$ represents the
  population at time $t=0$.

:::

# The *order* of an ordinary differential equation

The *order* of an ordinary differential equation is the highest number
$n = 1,2,3,\dots$ for which the o.d.e. involves the $n$-th derivative $x^{(n)}$ of
$x$.

::: incremental

- the Malthusian o.d.e $x' = \lambda x$ is *first order*.

  the general solution $x = ke^{\lambda t}$ involves one arbitrary
  constant.

- the o.d.e. $x'' = -x$ is *second order*.

  You know two solutions to this o.d.e.! Namely, $x = \cos(t)$ and $x
  = \sin(t)$.
  
  In fact, we'll see later that the general solution has the form 
  $$x = A \sin(t) + B \cos(t).$$

  In particular, the general solution involves two arbitrary
  constants.

:::

--------

- the o.d.e. $x^{(3)} = 1$ has order 3.

  We claimed earlier that this o.d.e. has general solution
  $$\dfrac{t^3}{6} + A + Bt + Ct^2.$$
  
  In particular, the general solution involves *three* arbitrary
  constants.

::: incremental

- later we'll revisit the relationship between the order of an o.d.e.
  and the number of arbitrary constants involved in its general
  solution.

:::

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
