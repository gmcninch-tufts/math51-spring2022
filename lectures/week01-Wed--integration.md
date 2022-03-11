---
author: George McNinch
title: |
  Math 51 Fall 2021 - Week 1 Wednesday \
  Differential equations and integration 
date: 2021-09-10
bibliography:
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage{palatino,mathpazo}
---

#

This lecture follows [@gutermanNitecki, sec. 1.1].


# What is a differential equation?

::: incremental

- **Glib answer**: “an equation involving an *unknown function* $x=x(t)$ and
  its derivatives.”

- Let us set up some *standard notations*.

- $x$ is to be viewed as a function of the *independent variable*
  $t$. To express this, we sometimes write $x = x(t)$.

- We then write $x' = \dfrac{dx}{dt}$, or more precisely, $x'(t) =
  \dfrac{dx}{dt}(t).$

- Similarly, $$x^{(2)} = x'' = \dfrac{d x'}{dt} = \dfrac{d^2 x}{dt^2}
  \quad \text{and} \quad x^{(3)} = x''' = \dfrac{d x^{(2)}}{dt} =
  \dfrac{d^3 x}{dt^3}.$$


- More generally, for $n \ge 1$ 

  $$x^{(n)} = \dfrac{d x^{(n-1)}}{dt} = \dfrac{d^n x}{dt^n}$$


:::


#

::: incremental


- Then an *ordinary differential equation* is an equation involving
  the expressions $$t,x,x',x'',\cdots,x^{(n)}, \cdots.$$

- Example:  $(t^5 + 1) \cdot x^{(3)}  + \dfrac{x^2 \cdot x^{(2)}}{t} =e^t$

- The equation is to be interpreted as an equality of *functions of
  $t$*. Thus, a function $x = \phi(t)$ is said to be a **solution** to
  the differential equation provided that the equation remains valid
  for all values of $t$ when $\phi(t)$ is substituted for $x$,
  $\phi'(t)$ is substituted for $x'$, and so on.

:::

#


- (**FWIW:** *ordinary* differential equations stand in contrast to
  *partial* differential equations; for these, $x$ might be a function
  of several variables -- e.g. $x=x(t,u)$ -- and a partial
  differential equation then involves partial derivatives like $$
  \dfrac{\partial x}{\partial t},\dfrac{\partial x}{\partial u},
  \dfrac{\partial^2 x}{\partial^2 t}, \dfrac{\partial^2 x}{\partial t
  \partial u}, \cdots $$ We
  won't study partial differential equations in our course.)  
  


# A simple form of differential equations

When you learned about integration in Calculus, you were in effect
learning to solve a simple type of ordinary differential equation.

::: incremental

- Recall that the *indefinite integral* 
  $$F(t) = \int f(t) dt$$ 
  is an *antiderivative* of $f(t)$. In other words, $F'(t) = f(t)$.

- In the language of the previous slide(s), the function $x = F(t)$ is
  a **solution** to the differential equation $$(\heartsuit) \quad x'
  = f(t).$$
  
:::

#

::: incremental

-  More generally, for any constant $C$ (i.e. any fixed real
   number), $$x = F(t) + C$$ is a solution to $(\heartsuit)$.


- So for example, $x = \sin(t) + C$ is a solution to the differential
  equation $x' = \cos(t)$, since $$\int \cos(t) dt = \sin(t) + C.$$

- more generally, for $n= 1,2,3,\dots$ we can (attempt to) solve a
  differential equation of the form

  $$ x^{(n)} = f(t) $$
  
  by repeatedly anti-differentiating the function $f$.

- don't forget the constants of integration!!

:::

#

- For example, the differential equation $x^{(3)} = 1$ has solutions
  $$x(t) = \dfrac{t^3}{6} + A + B t + C t^2$$ for arbitrary constants
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

#


- writing all of the integrals at once is perhaps a bit overwhelming,
  so we can also think about the solution as follows:
  
  Since $x^{(3)} = 1$, we have
  
  $$x^{(2)} = \int x^{(3)}dt = \int 1 dt = t + C$$


. . .
  
  and then
  
  $$x^{(1)} = \int x^{(2)}dt = \int (t+C) dt = \dfrac{t^2}{2} + Ct + B$$

. . .
 
  and finally
  
  $$x = \int x^{(1)} dt = \int \left(\dfrac{t^2}{2} + Ct + B\right)dt
  = \dfrac{t^3}{6} + \dfrac{C}{2}t^2 + B t + A$$



#

- we will ultimately be interested in finding the **general solution** 
  to an o.d.e. In other words, we want a *formula* that describes *all* solutions
  to the o.d.e.
  
- in the example of the preceding slide, the formula 
  $$(\clubsuit) \quad \dfrac{t^3}{6} + \dfrac{C}{2}t^2 + B t + A
  \quad \text{(or } \quad \dfrac{t^3}{6} + Ct^2 + B t + A \text{)}$$

  describes the general solution to the o.d.e.

  $$x^{(3)} = 1.$$

- in other words, given *any* solution $x = \phi(t)$ to the o.d.e.,
  you can find values of the constants $A,B,C$ for which $\phi$ is given by $(\clubsuit)$.

# Acceleration due to gravity

  Consider an object moving vertically. Recall that near the Earth's
  surface, acceleration due to gravity is given by $g=-9.8
  \operatorname{m}/\operatorname{sec}^2$
  
  So if $x = x(t)$ is the vertical position of the object, then $x'' = -9.8$.
  
  . . .
  
  Then we see that
  $$x' = \int x'' dt = -9.8 \int dt = -9.8t + A$$
  
  and that
  $$x = \int x' dt = \int (-9.8t + A)dt = \dfrac{-9.8}{2}t^2 + At + B.$$
  
  Since $x'(0) = A$, the constant $A = v_0$ represents the *initial
  velocity* of the object.
  
  And since $x(0) = B$, the constant $B = x_0$ represents the *initial
  position* of the object.
  
  $$x = \dfrac{-9.8}{2}t^2 + v_0t + x_0.$$


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

#

::: incremental

- important idea here: 

  > "...in many physical situations, the relation between rates of
  >  change of observable quantities is simpler than the relation
  >  between the quantities themselves." 

- The force due to gravity on an object of mass $m$
  $\operatorname{kg}$ is just $F = mg = -9.8m \operatorname{kg} \cdot
  \operatorname{m}/\operatorname{sec}^2$.
  

:::

# Population models

An example of an o.d.e. you may have seen before is the [Malthusian
population growth
model](https://en.wikipedia.org/wiki/Malthusian_growth_model).

::: incremental

- British economist Thomas Malthus postulated (1798) that the rate of
  change of a population is proportional to its size.

- If $x(t)$ represents the size of some population at time $t$,
  Malthus' model means that

  $$(\diamondsuit) \quad \dfrac{dx}{dt} = \lambda x$$

  for some constant $\lambda$ (a *constant of proportionality*).
  
- Since population is *growing*, the constant $\lambda$ satisfies
  $\lambda > 0$.

- thus, in Malthus' model the function $x=x(t)$ describing the
  population is a *solution* to the o.d.e. $(\diamondsuit)$.

:::



::: incremental

- the general solution to $$(\diamondsuit) \quad \dfrac{dx}{dt} =
  \lambda x$$ is given by $$x = ke^{\lambda t}.$$ where $k$ is an
  arbitrary constant.
 
- Well, at least we can argue that $x = ke^{\lambda t}$ is a solution
  to $(\diamondsuit)$ for each $k$; indeed, we have:
  
  $$\dfrac{d}{dt}[x] = \dfrac{d}{dt}\left [ ke^{\lambda t}\right ] =
  \lambda k e^{\lambda t} = \lambda x.$$  

- we'll see *later on* that $x = ke^{\lambda t}$ is the general
  solution (i.e. that there are no further solutions).

- observe that the constant $k = x(0)$ represents the population at
  time $t=0$.

:::

# The *order* of an ordinary differential equation

The *order* of an ordinary differential equation is the largest number
$n = 1,2,3,\dots$ for which the o.d.e. involves the $n$-th derivative
$x^{(n)}$ of $x$.

::: incremental

- the Malthusian o.d.e $x' = \lambda x$ is *first order*.

  the general solution $x = ke^{\lambda t}$ involves one arbitrary
  constant, namely $k$. 

:::

#

- the o.d.e. $x'' = -x$ is *second order*.

::: incremental

  - You know two solutions to this o.d.e.! Namely, $x = \cos(t)$ and $x
    = \sin(t)$.

  - Indeed, $\dfrac{d^2}{dt^2}[ \cos(t) ] = - \cos(t)$ 
    and  $\dfrac{d^2}{dt^2}[ \sin(t) ] = - \sin(t)$ 
  
  - More generally, for any constants $A,B$, 
  
    $$\dfrac{d^2}{dt^2}[ A \sin(t) + B \cos(t) ] = - (A \sin(t) + B \cos(t))$$
  
    so $x(t) = A \sin(t) + B \cos(t)$ is a solution to $x'' = -x$ for all
    constants $A,B$.
  

  - In fact, we'll see later that the *general solution* to $x'' = -x$ is given by 
    $$x = A \sin(t) + B \cos(t).$$

  - In particular, the general solution involves two arbitrary
    constants.

:::

#

- The ODE $x'' = -9.8$ describing the position function of an object
  undergoing acceleration due to gravity is second order

::: incremental

  - we argued that its general solution was
  
    $$x = \dfrac{-9.8}{2} t^2 + v_0t + x_0$$.

  - thus the general solution depends on the two constants
    $v_0$ (initial velocity) and $x_0$ (initial position).


:::



#

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




# Bibliography {.unnumbered}

::: {.refs}
:::
