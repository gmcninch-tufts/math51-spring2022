---
author: George McNinch (Math 51 Spring 2022)
title: Week 14 - Convolution and the Laplace transform
date: 2022-04-25
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
---

This lecture follows [@gutermanNitecki, sec. 5.6].

# Convolution and the Laplace transform

## Definition of convolution

::: incremental

- one goal is the following: given functions $F(s)$ and
  $G(s)$, describe/compute $$\mathscr{L}^{-1}[F(s)G(s)].$$
  
- put another way, very roughly we seek to find an operation in the
  world of functions of $t$ which corresponds under $\mathscr{L}$ to
  multiplication of functions.

- at any rate, given functions $f(t)$ and $g(t)$ we define their
  *convolution* $(f*g)(t)$ to be the function given by 
  
  $$(f*g)(t) = \int_0^t f(t-u)g(u)du.$$

- remarks
  - from the point-of-view of the integral in the definition, $t$
    behaves like a *constant*
	
  - the limits of integration should be read in the $u$-variable; we
    integrate from $u=0$ to $u=t$.

:::

## example of convolution

::: incremental

- Let $f(t) = e^{2t}$ and $g(t) = e^{5t}$.
  Then
  $$(f*g)(t) = \int_0^t e^{2(t-u)} e^{5u}du = e^{2t} \int_0^t e^{5u - 2u}du$$
  
- $$= e^{2t} \int_0^t e^{3u} du = e^{2t} \dfrac{e^{3u}}{3}\bigg \vert^t_0 $$
- $$= \dfrac{1}{3} e^{2t} \left(e^{3t} - 1\right) = 
  \dfrac{1}{3}  \left(e^{5t} - e^{2t} \right)$$

  
:::

## some nice features of convolution

::: incremental

- convolution acts a bit like a *product*

  For functions $f,g,h$ of the variable $t$ and for scalars $c,d$, we have
  
  - *distributive law* $f*(cg + dh) = c(f*g) + d(f*h).$
  - *associative law* $f*(g*h) = (f*g)h$
  - *commutative law* $f*g = g*f$
  
- on the other hand, the constant function $1$ is not a "multiplicative identity".
  Indeed,
  $$(1*f)(t) = \int_0^t f(u) du$$
  so that $1*f \ne f$.

:::

## Convolution formula

::: incremental

- for us, the main reason for interest in convolution is the following:

- suppose that $f(t)$ and $g(t)$ both have Laplace transforms.  

- Then we have the **Convolution Formula**:
 
  $$\mathscr{L}[(f*g)(t)] = \mathscr{L}[f(t)] \cdot \mathscr{L}[g(t)].$$


- if $F(s)$ and $G(s)$ both have inverse Laplace transforms, 

- then we have the **Convolution Formula for the inverse Laplace transform**:

  $$\mathscr{L}^{-1}[F(s)G(s)] = \mathscr{L}^{-1}[F(s)] * \mathscr{L}^{-1}[G(s)]$$
  

:::

## Examples of use of convolution formula

::: incremental

- for $b \ne a$, calculate $$\mathscr{L}^{-1}\left[\dfrac{1}{(s-a)(s-b)}\right]$$
  

- we can do this via *partial fractions*, but we can also use convolution

  $$\mathscr{L}^{-1}\left[\dfrac{1}{(s-a)(s-b)}\right] =
  \mathscr{L}^{-1}\left[\dfrac{1}{s-a}\right]*\mathscr{L}^{-1}\left[\dfrac{1}{s-b}\right]
  = e^{at} * e^{bt}$$

- $$=\int_0^t e^{a(t-u)} e^{bu} du = e^{at} \int_0^t e^{(b-a)u}du
  = \dfrac{1}{b-a} e^{at} e^{(baa)u} \bigg \vert_{u=0}^{u=t}$$
  
- $$= \dfrac{1}{b-a} e^{at}  \left(e^{(b-a)t} -1 \right) = \dfrac{e^{bt} - e^{at}}{b-a}.$$

:::

## another example

::: incremental

- find $\mathscr{L}^{-1}\left[\dfrac{1}{(s^2+1)^2}\right]$; notice that *partial fractions* doesn't help in this case!

- but the convolution formula gives
  $$\mathscr{L}^{-1}\left[\dfrac{1}{(s^2+1)^2}\right]
  = \mathscr{L}^{-1}\left[\dfrac{1}{s^2+1}\right] * \mathscr{L}^{-1}\left[\dfrac{1}{s^2+1}\right]$$

- $$= \sin(t) * \sin(t) = \int_0^t \sin(t-u) \sin(u)du
  = \int_0^t (\sin(t)\cos(u) - \cos(t)\sin(u))\sin(u)du$$

- $$= \sin(t) \int_0^t \cos(u)\sin(u)du - \cos(t) \int_0^t \sin^2(u) du$$

- $$= \sin(t) \dfrac{\sin^2(u)}{2}\bigg \vert^t_0 - \cos(t) \int_0^t \dfrac{1-\cos(2u)}{2} du$$

- $$= \dfrac{1}{2} \sin(t) \cdot \sin^2(t) - \cos(t) \left(\dfrac{t}{2} - \dfrac{\sin(2t)}{4} \right)$$

- $$= \dfrac{1}{2} \sin(t) \cdot \sin^2(t) - \cos(t) \dfrac{t}{2} + \dfrac{\sin(t)\cos^2(t)}{2}$$

- $$= \dfrac{1}{2} \sin(t) - \dfrac{t\cos(t)}{2}$$
:::

## Bibliography {.unnumbered}

::: {.refs}
:::
