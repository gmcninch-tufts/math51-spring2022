---
author: George McNinch (Math 51 Spring 2022)
title: Week 13 - Properties of the Laplace transform; piece-wise functions
date: 2022-04-20
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
---

This lecture follows [@gutermanNitecki, sec. 5.4].

# Properties of the Laplace Transform

## First shift formula

::: incremental

- let's observe some missing formulas

  $$\begin{array}{l|l}
  \text{Known} & \text{not yet known} \\
  \hline
  \mathscr{L}^{-1}\left[\dfrac{1}{s^n}\right] =\dfrac{t^{n-1}}{(n-1)!} & 
  \mathscr{L}^{-1}\left[\dfrac{1}{(s-\alpha)^n}\right] = \text{?? for $\alpha \ne 0$} \\
  \end{array}$$

-
  $$\begin{array}{l|l}
  \text{Known} & \text{not yet known} \\
  \hline  
  \mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \beta^2}\right] =
  \dfrac{\sin(\beta t)}{\beta} & 
  \mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \gamma s +  \delta}\right] = \text{??} \\
  \end{array}$$
  
- let's introduce a tool that will give us the ability to find these inverse transforms

- **Fact:** if $\mathscr{L}[f(t)] = F(s)$, then $\mathscr{L}[e^{\alpha t}f(t)] = F(s-\alpha)$.

- **Consequence:** $\mathscr{L}^{-1}[F(s)] = e^{\alpha t}f(t + \alpha) = e^{\alpha t}\mathscr{L}^{-1}[F(s + \alpha)]$.

:::

----

::: incremental

- let's confirm this fact. Assume that $\mathscr{L}[f(t)] = F(s)$. 

- Then *by definition* of $\mathscr{L}$ we have:
  $$\mathscr{L}[e^{\alpha t}f(t)] = \int_0^\infty e^{-st} e^{\alpha t} f(t) dt 
  = \int_0^\infty e^{(\alpha-s)t} f(t) dt = 
  \int_0^\infty e^{-(s-\alpha)t} f(t) dt$$
  
- we recognize the integral on the right-hand side as the *value* of $F$ at $s-\alpha$
  (provided that $s-\alpha > 0$ i.e. that $s > \alpha$).

- this shows that indeed 
  $$\mathscr{L}[e^{\alpha t}f(t)] = F(s-\alpha).$$

:::

## example

::: incremental

- since $\mathscr{L}[t] = \dfrac{1}{s^2}$ we find that 

  $$\mathscr{L}[e^{\alpha t} \cdot t] = \dfrac{1}{u^2} \bigg \vert_{u = s-\alpha} = \dfrac{1}{(s-\alpha)^2}$$

- thus we see that 

  $$\mathscr{L}^{-1}\left[\dfrac{1}{(s-\alpha)^2}\right] = e^{\alpha
  t}\mathscr{L}^{-1}\left[\dfrac{1}{s^2}\right] = te^{\alpha t}.$$

:::

---

::: incremental

- similarly $\mathscr{L}[t^n] = \dfrac{n!}{s^{n+1}}$ so that
  $$\mathscr{L}[e^{\alpha t} \cdot t^n] = \dfrac{n!}{u^{n+1}} \bigg \vert_{u=s-\alpha}
  = \dfrac{n!}{(s-\alpha)^{n+1}}$$
  
- thus we find
  $$\mathscr{L}^{-1}\left[\dfrac{1}{(s-\alpha)^{n+1}}\right] =
  e^{\alpha t} \mathscr{L}^{-1}\left[\dfrac{1}{s^{n+1}}\right] = \dfrac{1}{n!} e^{\alpha t} \cdot t^n.$$

:::

## example: rational function with quadratic denominator

::: incremental

- consider $\dfrac{1}{s^2 + \gamma s + \delta}$ for real numbers $\gamma,\delta$

- if $s^2 + \gamma s + \delta$ has *real* roots $\alpha_1,\alpha_2$
  with $\alpha_1 \ne \alpha_2$ then we can use partial fractions to
  re-write $$\dfrac{1}{s^2 + \gamma s + \delta} = \dfrac{1}{(s -
  \alpha_1)(s-\alpha_2)} = \dfrac{A}{s-\alpha_1} +
  \dfrac{B}{s-\alpha_2}$$

- and then 
  $$\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \gamma s + \delta}\right] = 
  A\mathscr{L}^{-1}\left[\dfrac{1}{s-\alpha_1}\right] + B \mathscr{L}^{-1}\left[\dfrac{1}{s-\alpha_2}\right]
  = Ae^{\alpha_1 t} + B e^{\alpha_2 t}$$
  
:::

---

::: incremental
  
- when there is a multiple real root $\alpha_1 = \alpha_2$ we find by
  the formula on the previous slide that
  $$\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \gamma s + \delta}\right] =
  \mathscr{L}^{-1}\left[\dfrac{1}{(s-\alpha_1)^2}\right] = te^{\alpha
  t}$$

:::

---

:::  incremental

- finally suppose that $s^2 + \gamma s + \delta$ does not have real roots.
  
- i.e. $\gamma^2 - 4\delta < 0$  
  
- after  *completing the square* we find that
  $$s^2 + \gamma s + \delta = \left (s + \dfrac{\gamma}{2} \right)^2 - \dfrac{\gamma^2}{4} + \delta
  = \left (s + \dfrac{\gamma}{2} \right)^2 - \dfrac{1}{4} \left( \gamma^2 - 4 \delta \right)
  $$

- thus we have rewritten the equation in the form
  $$(s - \alpha)^2 + \beta^2 \quad \text{for real numbers $\alpha,\beta$}$$

- now
  $$\mathscr{L}^{-1}\left[ \dfrac{1}{(s - \alpha)^2 + \beta^2}\right]
  = e^{\alpha t}\mathscr{L}^{-1}\left[ \dfrac{1}{s^2 + \beta^2}\right]
  = \dfrac{e^{\alpha t}}{\beta} \sin(\beta t)
  $$

:::

----

::: incremental

- e.g. let's compute $\mathscr{L}^{-1}\left[\dfrac{s+1}{s^2 + s + 1}\right]$

- we have $s^2 + s + 1 = \left(s + \dfrac{1}{2}\right)^2 + \dfrac{3}{4}$

- thus
  \begin{align*}
  \mathscr{L}^{-1}\left[\dfrac{s+1}{s^2 + s + 1}\right]
  &= \mathscr{L}^{-1}\left[\dfrac{s+1}{\left(s + \dfrac{1}{2}\right)^2 + \dfrac{3}{4}}\right]\\
  &= e^{-t/2} \mathscr{L}^{-1}\left[\dfrac{s + 1/2}{s^2 + \dfrac{3}{4}}\right]  = (\clubsuit)  \\
  \end{align*}
  
:::

---

::: incremental

- \begin{align*}
  (\clubsuit) &= e^{-t/2} \mathscr{L}^{-1}\left[\dfrac{s}{s^2 + \dfrac{3}{4}}\right] 
  + e^{-t/2} \mathscr{L}^{-1}\left[\dfrac{1/2}{s^2 + \dfrac{3}{4}}\right] \\
  &= e^{-t/2} \cos\left(\dfrac{\sqrt{3}t}{2}\right)
  + \dfrac{2e^{-t/2}}{\sqrt{3}} \sin\left(\dfrac{\sqrt{3}t}{2}\right)
  \end{align*}

:::


## Second differentiation formula

::: incremental

- we have
  $$\dfrac{d}{ds}\mathscr{L}[f(t)] = \dfrac{d}{ds} \int_0^\infty e^{-st} f(t)dt
  \quad (\clubsuit)$$
- and for "nice enough" functions $f(t)$ we have $$(\clubsuit) =
  \int_0^\infty \left(\dfrac{\partial}{\partial s} e^{-st}
  f(t)\right)dt = - \int_0^\infty e^{-st} tf(t)dt.$$

- thus
  $$\dfrac{d}{ds}\mathscr{L}[f(t)] = - \mathscr{L}[tf(t)] \quad \text{or}
  \quad \mathscr{L}[tf(t)] = - \dfrac{d}{ds}\mathscr{L}[f(t)]$$

- more generally we find that
  $$\mathscr{L}[t^nf(t)] = (-1)^n \dfrac{d^n}{ds^n}\mathscr{L}[f(t)].$$

:::

## Example

::: incremental

- let's compute $\mathscr{L}[t\sin(4t)]$

- the *second differentiation formula* tells us that
  $$\mathscr{L}[t\sin(4t)] = -\dfrac{d}{ds}\left[ \dfrac{4}{s^2 + 16}\right]
  = \dfrac{4\cdot 2s}{(s^2 + 16)^2}
  = \dfrac{8s}{(s^2 + 16)^2}$$

:::

## Bibliography {.unnumbered}

::: {.refs}
:::
