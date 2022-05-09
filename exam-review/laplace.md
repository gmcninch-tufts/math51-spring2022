---
title: Laplace transform formulas
fontsize: 10pt  
header-includes: |
  \usepackage[top=10mm,bottom=20mm,left=20mm,right=20mm]{geometry}
  \usepackage{mathrsfs}
---

# **Laplace transform formulas**

## definition
  - $F(s) = \displaystyle \mathscr{L}[f(t)] = \int_0^\infty e^{-st}f(t)dt$

## basic formulas

  $$\begin{array}{lcl}
    \mathscr{L}[e^{\lambda t}] = \dfrac{1}{s-\lambda} \quad \text{for $s > \lambda$} & \quad, \quad  &
	\mathscr{L}^{-1}\left[\dfrac{1}{s-\lambda}\right] =  e^{\lambda t} \\
    %
    \mathscr{L}[t^n] = \dfrac{n!}{s^{n+1}} \quad \text{for $s > 0$} & \quad, \quad  &
	\mathscr{L}^{-1}\left[\dfrac{1}{s^{n+1}}\right]  = \dfrac{t^n}{n!} \\
	%
	\mathscr{L}[\sin(\beta t)] = \dfrac{\beta}{s^2 + \beta^2} \quad \text{for $s > 0$} & \quad, \quad  &
	\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \beta^2}\right] = \dfrac{1}{\beta} \sin(\beta t) \\
	%
	\mathscr{L}[\cos(\beta t)] = \dfrac{s}{s^2 + \beta^2} \quad \text{for $s > 0$} & \quad, \quad  &
	\mathscr{L}^{-1}\left[\dfrac{s}{s^2 + \beta^2}\right] = \cos(\beta t)
  \end{array}$$

## first differentiation formula: 
  - $\mathscr{L}[Dx] = s\mathscr{L}[x] - x(0)$,
  - $\mathscr{L}[D^2x] = s^2\mathscr{L}[x] -sx(0) - x'(0)$,
  - $\mathscr{L}[D^kx] = s^k \mathscr{L}[x(t)] - s^{k-1}x(0) -
    s^{k-2}x'(0) - \cdots - s x^{(k-2)}(0) - x^{(k-1)}(0)$ for $k \ge 1$.

## first shift formula 
  - if $\mathscr{L}[f(t)] = F(s)$ then 
    $\mathscr{L}[e^{\alpha t}f(t)] = F(s-\alpha).$
  - $\mathscr{L}^{-1}[F(s)] = e^{\alpha t} \mathscr{L}^{-1}[F(s+\alpha)]$

## second differentiation formula
  - $\mathscr{L}[t^n f(t)] = (-1)^n \dfrac{d^n}{ds^n}\mathscr{L}[f(t)]$

## second shift formula
  - $\mathscr{L}[u_a(t) f(t)] = e^{-as} \mathscr{L}[f(t+a)].$
  - if $f(t) = \mathscr{L}^{-1}[F(s)]$ then $\mathscr{L}^{-1}[e^{-as}F(s)] = u_a(t)f(t-a).$

## convolution

  - definition: $(f*g)(t) = \displaystyle \int_0^t f(t-u)g(u)du$.
  - $\mathscr{L}[(f*g)(t)]= \mathscr{L}[f(t)] \mathscr{L}[g(t)].$
  - $\mathscr{L}^{-1}[F(s)G(s)] = \mathscr{L}^{-1}[F(s)] * \mathscr{L}^{-1}[G(s)]$
