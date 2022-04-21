---
author: George McNinch (Math 51 Spring 2022)
title: Week 13 - Properties of the Laplace transform; piece-wise functions
date: 2022-04-22
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
---

This lecture follows [@gutermanNitecki, sec. 5.5].

# Functions defined in pieces

## Basics

::: incremental

- we consider functions defined in pieces  
  `AKA` piece-wise defined functions

- this means: functions defined by several formulas, each applied over
  a different part of the domain
  
- for a real number $a$, the **unit step function** is:
  $$u_a(t) = \left \{ \begin{matrix} 0 & \text{if $t<a$} \\
  1 & \text{if $t \ge a$} \end{matrix} \right .$$

- observe: for any function $f(t)$, the product $f(t)u_a(t)$ can be described by

  $$f(t)u_a(t) = \left \{ \begin{matrix} 0 & \text{if $t<a$} \\
  f(t) & \text{if $t \ge a$} \end{matrix} \right .$$

:::

---

::: incremental

- we can rewrite any "function defined in pieces" using this notion

- consider
  $$g(t) =  \left \{ \begin{matrix} e^t & \text{if $t<0$} \\
  0 & \text{if $0 \le t$} \end{matrix} \right .$$

- then
  $$g(t) = e^t +  u_0(t) \cdot (-e^t )$$

- next consider
  $$h(t) =  \left \{ \begin{matrix} e^t & \text{if $t<0$} \\
  2 & \text{if $0 \le t < 2$} \\
  t^2& \text{if $2 \le t$} \end{matrix} \right .$$

- then
  $$h(t) = e^t +  u_0(t) \cdot (-e^t + 2) + u_2(t) \cdot ( -2 + t^2)$$

:::

## Laplace transforms and functions defined in pieces

::: incremental

- We'd like to know how to compute $\mathscr{L}[f(t)]$ for a function $f(t)$ *defined in pieces*.

- in view of the description of the previous slide, it suffices to
  compute transforms of the form
  $$\mathscr{L}[u_a(t) f(t)]$$
  
- by the definition of $\mathscr{L}$ we  have  

  \begin{align*}
  \mathscr{L}[u_a(t) f(t)] =& \int_0^\infty e^{-st} u_a(t) f(t) dt
  = \int_0^a e^{-st} \cdot 0 \cdot f(t) dt + \int_a^\infty e^{-st} f(t)dt \\
  =& \int_a^\infty e^{-st} f(t)dt
  \end{align*}

- now use the substitution $\tau = t - a$ to find that
  $$\int_a^\infty e^{-st} f(t)dt = \int_{\tau(a)}^\infty e^{-s(\tau + a)}f(\tau + a)d\tau
  = e^{-as}\int_0^\infty e^{-s(\tau)}f(\tau + a)d\tau = e^{-as}\mathscr{L}[f(t+a)]$$

:::

## Second shift formula for $\mathscr{L}$

::: incremental

- on the preceding slide, we just established the so-called *second
  shift formula* for $\mathscr{L}$, namely:
  
  $$\mathscr{L}[u_a(t) f(t)] = e^{-as} \mathscr{L}[f(t+a)].$$

- for example, 

  \begin{align*}
  \mathscr{L}\left[u_1(t) e^{2t} \right] &= e^{-s} \mathscr{L}\left[e^{2(t+1)}\right] \\
  &= e^{-s+2} \mathscr{L}\left[e^{2t}\right] \\
  &= e^{2-s} \dfrac{1}{s-2}
  \end{align*}

:::

---

::: incremental

- another example: notice that $|t-1| = -t + 1 + u_1(t)\cdot (2t - 2)$

- thus 
  $$\mathscr{L}[|t|] = \mathscr{L}[-t + 1] + \mathscr{L}[u_1(t) \cdot (2t - 2)] \quad (*)$$

- 
  \begin{align*}
  (*) &= -\dfrac{1}{s^2} + \dfrac{1}{s} + e^{-s}\mathscr{L}[2(t+1) - 2] \\
  &= -\dfrac{1}{s^2} + \dfrac{1}{s} + 2e^{-s}\mathscr{L}[t] \\
  &= -\dfrac{1}{s^2} + \dfrac{1}{s} + 2e^{-s}\dfrac{1}{s^2} \\
  &= \dfrac{-1 + s + 2e^{-s}}{s^2} 
  \end{align*}
  
:::

## Second shift formula for $\mathscr{L}^{-1}$.

::: incremental

- for a function $f(t)$, let's set $h(t) = f(t-a)$

- then using the second shift formula we find that
  $$\mathscr{L}[u_a(t)f(t-a)] =  \mathscr{L}[u_a(t)h(t)] = 
  e^{-as}\mathscr{L}[h(t+a)] = e^{-as}\mathscr{L}[f(t)]$$

- thus if $F(s) = \mathscr{L}[f(t)]$ we see that
  $$(\clubsuit) \quad \mathscr{L}^{-1}[e^{-as}F(s)] = u_a(t) f(t-a).$$
  
- $(\clubsuit)$ is the *second shift formula for $\mathscr{L}^{-1}$*.

:::

## Examples 

::: incremental

- Compute: $$\mathscr{L}^{-1}\left[ \dfrac{e^{2s}}{s+5}\right ]$$

- well, if $f(t) = e^{-5t}$ then $F(s) = \dfrac{1}{s+5} = \mathscr{L}[e^{-5t}] = \mathscr{L}[f(t)]$

- thus 
  \begin{align*}
  \mathscr{L}^{-1}\left[ \dfrac{e^{2s}}{s+5}\right ]
  &= \mathscr{L}^{-1}\left[ e^{2s}F(s) \right] \\
  &= u_{-2}(t) \cdot f(t-(-2)) \\
  &=  u_{-2}(t) \cdot f(t+2)  \\
  &= u_{-2}(t) \cdot e^{-5(t+2)}
  \end{align*}

:::

## Bibliography {.unnumbered}

::: {.refs}
:::
