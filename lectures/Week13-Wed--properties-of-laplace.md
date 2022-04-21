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


## Example: initial value problem

::: incremental

- Let's consider the IVP $$(D^2 + D+ 1)x = te^t \quad \text{for} \quad
  x(0) = x'(0) = 0.$$
  
- apply $\mathscr{L}$ to each side and using the first and second differentiation
  formula gives

  $$(s^2 + s + 1) \mathscr{L} = \mathscr{L}[te^t] = -
  \dfrac{d}{ds}\left[\dfrac{1}{s-1}\right] = \dfrac{1}{(s-1)^2}$$

- we now have a partial fractions problem $$\mathscr{L}[x] =
  \dfrac{1}{(s-1)^2(s^2 + s + 1)} = \dfrac{A+Bs}{(s-1)^2} +
  \dfrac{C+Ds}{s^2 + s + 1}.$$

- we find the equation
  $$1 = (A+Bs)(s^2+s+1) + (C +Ds)(s-1)^2.$$

:::

---

$$1 = (A+Bs)(s^2+s+1) + (C +Ds)(s-1)^2.$$

::: incremental

- using 4 distinct values of $s$ we find the following equations

  - $s=0$: $1 = A + C$
  - $s=1$: $1 = 3A + 3B$
  - $s=-1$: $1=A-B + 4(C-D)$
  - $s=2$: $1 = 7(A+2B) + C+2D$

- this leads to the augmented matrix
  $$\left[\begin{array}{l|l}
  \begin{matrix} 1 & 0 & 1 & 0 \\
  3 & 3 & 0 & 0 \\
  1 & -1 & 4 & -4 \\
  7 & 14 & 1 & 2 \\
  \end{matrix} &
  \begin{matrix} 1 \\ 1 \\ 1 \\ 1
  \end{matrix}
  \end{array}\right]$$

:::

---

::: incremental

- we skip here the row reduction, the solution is
  $\mathbf{c} = \dfrac{1}{3} \begin{bmatrix} 2 \\ -1 \\ 1 \\ 1 \end{bmatrix}.$

- we conclude that
  $$\mathscr{L}[x] =
  \dfrac{1}{(s-1)^2(s^2 + s + 1)} = \dfrac{1}{3}\left[\dfrac{2-s}{(s-1)^2} +
  \dfrac{1+s}{s^2 + s + 1}\right]$$

- now using the shift formula we find that
  \begin{align*}
  \mathscr{L}^{-1}\left[\dfrac{2-s}{(s-1)^2}\right] &= e^t \mathscr{L}^{-1}\left[\dfrac{2-s-1}{s^2}\right]
  = e^t \mathscr{L}^{-1}\left[\dfrac{1-s}{s^2}\right] ]\\
  &= e^t \mathscr{L}^{-1}\left[\dfrac{1}{s^2}\right] - e^t \mathscr{L}^{-1}\left[\dfrac{s}{s^2}\right] ]
  = e^t \mathscr{L}^{-1}\left[\dfrac{1}{s^2}\right] - e^t \mathscr{L}^{-1}\left[\dfrac{1}{s}\right] ] \\
  &= e^t(t-1)
  \end{align*}

:::

---

::: incremental

- now we observe that
  $$\mathscr{L}^{-1}\left[\dfrac{1+s}{s^2 + s + 1}\right]$$
  was computed earlier and was found to be
  $$e^{-t/2} \cos\left(\dfrac{\sqrt{3}t}{2}\right)
  + \dfrac{2e^{-t/2}}{\sqrt{3}} \sin\left(\dfrac{\sqrt{3}t}{2}\right)$$
  
- thus we find that the solution to the IVP is

  $$x(t) = \dfrac{1}{3}\left[e^t(t-1) + e^{-t/2} \cos\left(\dfrac{\sqrt{3}t}{2}\right)
  + \dfrac{2e^{-t/2}}{\sqrt{3}} \sin\left(\dfrac{\sqrt{3}t}{2}\right)\right]$$
:::


## Bibliography {.unnumbered}

::: {.refs}
:::
