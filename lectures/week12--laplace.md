---
author: George McNinch (Math 51 Spring 2022)
title: Week 12 - The Laplace Transform
date: 2022-04-13
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
---

This lecture follows [@gutermanNitecki, sec. 5.2 & 5.3].

# The Laplace Transform

## Definition of the Laplace transform

Consider a function $f(t)$ of the variable $t$. The **Laplace
transform** of $f(t)$ is a *new function* $F(s)$ of a *new variable*
$s$ defined by the formula

$$F(s) = \int_0^\infty e^{-st} f(t) dt.$$

. . .

We write 
$$\mathscr{L}[f(t)] = \mathscr{L}[f(t)](s) = F(s)$$
for this function.

-----

::: incremental 
- we emphasize: 

  - the *input* of $\mathscr{L}$ is a function of $t$, and 
  - the *output* of $\mathscr{L}$ is a function of $s$.
  
- the indefinite integral defining $F(s)$ is taken with respect to $t$
  (i.e. we integrate "$dt$"):

  $$F(s) = \int_0^\infty e^{-st} f(t) dt = \lim_{h \to \infty} \int_0^h e^{-st}f(t)dt.$$

  In this integral, the variable $s$ *behaves like a scalar*.

- we are going to derive *formulas* for several families of functions
  $f(t)$ which will permit us calculate $\mathscr{L}[f]$.

- then, we are going to use the Laplace transform to solve *initial value
  problems* arising from certain ODEs.


:::


## Basic Laplace transforms

Let's first list some Laplace transforms, and then we'll check a few
of the calculations.

. . .

\begin{align*}
\mathscr{L}[e^{\lambda t}] &= \dfrac{1}{s-\lambda}  \quad \text{for} \quad s > \lambda\\
\mathscr{L}[1] &= \dfrac{1}{s}  \quad \text{for} \quad s > 0 \\
\mathscr{L}[t^n] &= \dfrac{n!}{s^{n+1}} \\
\mathscr{L}[\sin(\beta t)] &= \dfrac{\beta}{s^2 + \beta^2} \\
\mathscr{L}[\cos(\beta t)] &= \dfrac{s}{s^2 + \beta^2}
\end{align*}

. . .

**Remark:** $\mathscr{L}[f] = F(s)$ is always defined "for large
values of $s$" - i.e. for $s$ in some interval $(N,\infty)$.

## check: $\mathscr{L}[e^{\lambda t}]$

$$\mathscr{L}[e^{\lambda t}](s) = \lim_{h \to \infty} \int_0^h
 e^{-st} e^{\lambda t} dt = \lim_{h \to \infty} \int_0^h e^{-(s - \lambda)t} dt  \quad (\clubsuit)$$

. . .

Now if $\lambda \ne s$, then $$\displaystyle \int_0^h e^{-(s-\lambda)t}
dt = \dfrac{-1}{s-\lambda} e^{-(s-\lambda )t} \bigg \vert^h_0
= \dfrac{-1}{s- \lambda} [e^{-(s-\lambda)h} -  1]
 = \dfrac{1}{s-\lambda}  - e^{-(s-\lambda)h} \dfrac{1}{s-\lambda}$$

. . .

If $\lambda < s$ then $\displaystyle \lim_{h \to \infty} e^{-(s-\lambda)h} = 0$
and we see that $(\clubsuit) = \dfrac{1}{s-\lambda}$.

. . .

This confirms that $\mathscr{L}[e^{\lambda t}](s) = \dfrac{1}{s-\lambda}$

. . .

Notice that if $\lambda = 0$ then $e^{\lambda t} = 1$ and we get $\mathscr{L}[1] = \dfrac{1}{s}$.

## check: $\mathscr{L}[\cos(\beta t)]$

$$\mathscr{L}[\cos(\beta t)] = \lim_{h \to \infty} \int_0^h e^{-st} \cos(\beta t) dt.$$

. . .


Now integration by parts with $u = e^{-st}$ and $dv = \cos(\beta t)dt$ gives
$$\int_0^h e^{st} \cos(\beta t) dt = \dfrac{e^{-st} \sin(\beta t)}{\beta}\bigg \vert^{t=h}_{t=0}
 + \dfrac{s}{\beta} \int_0^h e^{-st} \sin(\beta t)dt \quad (\diamondsuit)$$

. . .

Integration by parts again, this time with $U = e^{-st}$ and $dV =
\sin(\beta t)dt$ gives $$\int_0^h e^{-st} \sin(\beta t)dt =
\dfrac{-e^{-st} \cos(\beta t)}{\beta}\bigg\vert^{t=h}_{t=0} -
\dfrac{s}{\beta}\int_0^h e^{-st}\cos(\beta t) dt$$

. . .

Plugging this back into $(\diamondsuit)$ we get:
$$\int_0^h e^{st} \cos(\beta t) dt= 
\dfrac{e^{-st} \sin(\beta t)}{\beta}\bigg \vert^{t=h}_{t=0}
+ \dfrac{-se^{-st} \cos(\beta t)}{\beta^2}\bigg\vert^{t=h}_{t=0}
- \dfrac{s^2}{\beta^2} \int_0^h e^{st} \cos(\beta t) dt$$

-----

We now get 
\begin{align*}
(1 + \dfrac{s^2}{\beta^2})\int_0^h e^{st} \cos(\beta t) dt &= 
\dfrac{e^{-st} \sin(\beta t)}{\beta}\bigg \vert^{t=h}_{t=0}
+ \dfrac{-se^{-st} \cos(\beta t)}{\beta^2}\bigg \vert^{t=h}_{t=0} \\
&=\dfrac{e^{-sh} \sin(\beta h)}{\beta}
+ \dfrac{- se^{-sh} \cos(\beta h) + s}{\beta^2}
\end{align*}

. . .

Now for $s>0$, we know that $\displaystyle \lim_{h \to \infty} e^{-sh} = 0$ so we conclude that
$$(\dfrac{\beta^2 + s^2}{\beta^2})\int_0^\infty e^{st} \cos(\beta t) dt = \dfrac{s}{\beta^2}$$

. . .

This shows that
$$\mathscr{L}[\cos(\beta t)](s) = \int_0^\infty e^{st} \cos(\beta t) dt
= \dfrac{s}{\beta^2} \cdot \dfrac{\beta^2}{\beta^2 + s^2} = \dfrac{s}{\beta^2 + s^2}$$

## Check: $\mathscr{L}[t^n]$, $n \ge 1$.

::: incremental

- Integration by parts with $u = t^n$ and $dv = e^{-st}dt$ gives

  $$\int_0^h e^{-st}t^n dt = \dfrac{-h^n e^{-sh}}{s} + \dfrac{n}{s} \int_0^h e^{-st} t^{n-1} dt$$ 
  
- as $h \to \infty$, the *left-hand-side* approaches $\mathscr{L}[t^n](s)$. If $s > 0$, then
  l'H\^opital's rule shows that the first term on the right goes to 0, while the second
  term approaches $\dfrac{n}{s}\mathscr{L}[t^{n-1}]$.
  
- conclude that for $s>0$ and $n>0$, we have $(\heartsuit) \quad
  \mathscr{L}[t^n] = \dfrac{n}{s}\mathscr{L}[t^{n-1}]$.

- we know that $\mathscr{L}[t^0] = \mathscr{L}[1] = \dfrac{1}{s}$.

- we get $\mathscr{L}[t] = \dfrac{1}{s}\mathscr{L}[t^0] = \dfrac{1}{s^2}.$

- and now we can bootstrap using the previous fact; we get:
  $\mathscr{L}[t^2] = \dfrac{2}{s}\mathscr{L}[t] = \dfrac{2}{s}\cdot
  \dfrac{1}{s^2} = \dfrac{2}{s^3}$.

:::

----

::: incremental

- similarly $\mathscr{L}[t^3] = \dfrac{3}{s}\mathscr{L}[t^2] =
  \dfrac{3}{s} \cdot \dfrac{2}{s^3} = \dfrac{3!}{s^4}$.

- we find the general formula $\mathscr{L}[t^n] = \dfrac{n!}{s^{n+1}}$.

:::

## Computing the Laplace transform

::: incremental

- important fact: the Laplace transform is *linear*. 

- this means: for functions $f(t)$ and $g(t)$, we have
  $$\mathscr{L}[f(t) + g(t)] = \mathscr{L}[f(t)] + \mathscr{L}[g(t)].$$

- combining this with our formulas, we can compute many Laplace transforms.

- e.g.

  $$\mathscr{L}[t^3 + e^{2t} - 3\cos(5t)] = 
  \mathscr{L}[t^3]  + \mathscr{L}[e^{2t}] - 3\mathscr{L}[\cos(5t)]
  = \dfrac{3!}{s^4} + \dfrac{1}{s-2} -3\dfrac{s}{s^2 + 25}$$

:::

## The Inverse Laplace transform

::: incremental

- if $\mathscr{L}[f(t)] = F(s)$, we say that $\mathscr{L}^{-1}[F(s)] = f(t)$.

- Thus $\mathscr{L}^{-1}$ is a transformation whose *input* is
  a function of $s$, and whose *output* is a function of $t$.
  
- we've seen that $\mathscr{L}[e^{-t}] = \dfrac{1}{s+1}$. Thus,
  $\mathscr{L}^{-1}\left[\dfrac{1}{s+1}\right] = e^{-t}$.

- similarly, we've seen that $\mathscr{L}[t^4] = \dfrac{4!}{s^5} = \dfrac{24}{s^5}$.
  
- Thus (using the linearity of $\mathscr{L}$ and $\mathscr{L}^{-1}$) we find
  $$\mathscr{L}^{-1}\left[\dfrac{1}{s^5}\right] = \dfrac{t^4}{24}.$$

:::

## Basic inverse Laplace transforms

\begin{align*}
\mathscr{L}^{-1}\left[\dfrac{1}{s-\lambda}\right] &=  e^{\lambda t} \\
\mathscr{L}^{-1}\left[\dfrac{1}{s}\right] &= 1\\
\mathscr{L}^{-1}\left[\dfrac{1}{s^{n+1}}\right]  &= \dfrac{t^n}{n!}  \\
\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \beta^2}\right] &= \dfrac{1}{\beta} \sin(\beta t) \\
\mathscr{L}^{-1}\left[\dfrac{s}{s^2 + \beta^2}\right] &= \cos(\beta t) 
\end{align*}


:::

## Inverse Laplace transforms and partial fractions

::: incremental

- see [@gutermanNitecki \S 5.3 page 430-431] for some useful *notes* on partial fractions

- Let's use these ideas to compute $\mathscr{L}^{-1}\left[ \dfrac{1}{(s-1)(s^2+4)} \right]$

- Since $s^2+4$ is an *irreducible quadratic* (it has no real root),
  we use partial fractions as follows:
  
  $$\dfrac{1}{(s-1)(s^2+4)}  = \dfrac{A}{s-1} + \dfrac{Bs + C}{s^2 + 4}.$$

- so we need 
  \begin{align*}
  1 &= A(s^2 + 4) + (Bs + C)(s-1) \\ &= As^2 + 4A + Bs^2 - Bs + Cs - C \\
  &= (A+B)s^2 +(C-B)s + (4A-C)
  \end{align*}

:::

----

::: incremental

- comparing coefficients of $s^2$, $s$ and $1 =s^0$ in the equation
  $$1 = (A+B)s^2 +(C-B)s + (4A-C)$$
  we get three linear equations in $A,B,C$:
  
- $\left \{ \begin{matrix} A+B = 0 \\ C-B = 0 \\ 4A-C = 1 \end{matrix} \right.$  

- we consider the augmented matrix
  $$\left[\begin{array}{c|c}
  \begin{matrix} 1 & 1 & 0 \\ 0 & -1 & 1 \\ 4 & 0 &  -1  \end{matrix} & 
  \begin{matrix} 0 \\ 0 \\ 1 \end{matrix}
  \end{array}\right]
  \sim 
  \left[\begin{array}{c|c}
  \begin{matrix} 
  1 & 1 & 0 \\ 
  0 & 1 & -1 \\ 
  0 & -4 &  -1  \end{matrix} & 
  \begin{matrix} 0 \\ 0 \\ 1 \end{matrix}
  \end{array}\right]
  \sim 
  \left[\begin{array}{c|c}
  \begin{matrix} 
  1 & 1 & 0 \\ 
  0 & 1 & -1 \\ 
  0 & 0 &  -5  \end{matrix} & 
  \begin{matrix} 0 \\ 0 \\ 1 \end{matrix}
  \end{array}\right]  
  $$

- we now see that $C = \dfrac{-1}{5}$, $B = C = \dfrac{-1}{5}$ and $A = -B = \dfrac{1}{5}$.

:::

----

::: incremental

- recall that
  $$\dfrac{1}{(s-1)(s^2+4)}  = \dfrac{A}{s-1} + \dfrac{Bs + C}{s^2 + 4}.$$

- and that $C = \dfrac{-1}{5}$, $B = \dfrac{-1}{5}$ and $A = \dfrac{1}{5}$.

- Thus we see that 
  $$\dfrac{1}{(s-1)(s^2+4)}  = \dfrac{1/5}{s-1} + \dfrac{-s/5 + -1/5}{s^2 + 4}
  = \dfrac{1}{5} \left(\dfrac{1}{s-1} - \dfrac{1+s}{s^2 + 4} \right)$$

- finally

  \begin{align*}\mathscr{L}^{-1}\left[\dfrac{1}{(s-1)(s^2+4)}\right]
  &= \dfrac{1}{5} \left(\mathscr{L}^{-1}\left[\dfrac{1}{s-1}\right] 
  - \mathscr{L}^{-1}\left[\dfrac{s}{s^2+4} \right]
  - \mathscr{L}^{-1}\left[\dfrac{1}{s^2+4} \right] \right)\\
  &= \dfrac{1}{5}\left(e^{t}  - \cos(2t) - \dfrac{\sin(2t)}{2}\right)  
  \end{align*}

:::


## (First) Differentiation Formula

::: incremental

- the reason we are interested in the Laplace transform is that it
  will permit us to solve some initial value problems.
  
- as a starting point for understanding why $\mathscr{L}$ is useful in
  this regard, we note the following important fact, which in the text
  [@gutermanNitecki, \S 5.3] is the first case of the the *First
  Differentiation Formula*:
  
  For a function $x = x(t)$, we have
  $$\mathscr{L}[Dx] = s\mathscr{L}[x] - x(0).$$

:::

-----

::: incremental

- to see why the formula $\mathscr{L}[Dx] = s\mathscr{L}[x] - x(0)$ holds, notice that

  $$\mathscr{L}[x'(t)]  = \lim_{h \to \infty} \int_0^h e^{-st} x'(t)dt \quad (\clubsuit)$$

- we may integrate by parts using $u = e^{-st}$ and $dv = x'(t)dt$. We get:

  \begin{align*}
  (\clubsuit) \quad &= \lim_{h \to \infty} \left(e^{-st} x(t) \bigg
  \vert^h_0 + s\int_0^h e^{-st} x(t)\right) \\
  &= \lim_{h \to \infty} e^{-sh}x(h) - x(0) + s\mathscr{L}[x(t)]
  \end{align*}
  
  Since $\lim_{h \to \infty} e^{-sh}x(h)  = 0$, the indicated formula holds.

:::

## Higher derivatives

::: incremental

- Next notice that 
  \begin{align*}
  \mathscr{L}[D^2x] &= \mathscr{L}[Dx'(t)] =
  s\mathscr{L}[x'(t)] - x'(0) \\
  &= s(s\mathscr{L}[x(t)] - x(0)) - x'(0) \\
  &= s^2 \mathscr{L}[x(t)] - s x(0) - x'(0)  
  \end{align*}

- More generally, we find that

  $$\mathscr{L}[D^kx] = s^k \mathscr{L}[x(t)] - s^{k-1}x(0) - s^{k-2}x'(0) - \cdots - s x^{(k-2)}(0) - x^{(k-1)}(0).$$

:::

## Example

Use the differentiation formula to find an expression for
$\mathscr{L}[x]$ where $x$ is a solution to the initial value problem
$$(D^2 - 1)x = e^{-2t}, \quad x(0) = x'(0) = 0.$$

::: incremental

- apply $\mathscr{L}$ to each side of the ODE to get
  $$\mathscr{L}[D^2x] - \mathscr{L}[x] = \mathscr{L}[e^{-2t}].$$

- now use the differentiation formula to get
  $$s^2\mathscr{L}[x] - sx(0) - x'(0) - \mathscr{L}[x] = \dfrac{1}{s+2}.$$

::: 

----

::: incremental

- substitution of $x(0) = 0$ and $x'(0)= 0$ now gives
  $$s^2\mathscr{L}[x] - \mathscr{L}[x] = \dfrac{1}{s+2}$$
  or
  $$(s^2-1)\mathscr{L}[x] = \dfrac{1}{s+2}$$

- thus
  $$\mathscr{L}[x] = \dfrac{1}{(s+2)(s^2-1)} = \dfrac{1}{(s+2)(s-1)(s+1)}.$$
  
- we now use partial fractions to compute the inverse transform of the right-hand-side.

::: 

---

::: incremental

- We write
  $$\dfrac{1}{(s+2)(s-1)(s+1)} = \dfrac{A}{s+2} + \dfrac{B}{s-1} + \dfrac{C}{s+1}.$$

- getting a common denominator, we find that

  \begin{align*}
  1 &= A(s-1)(s+1) + B(s+2)(s+1) + C(s+2)(s-1) \\
  &= A(s^2 -1) + B(s^2 + 3s + 2) + C(s^2 +s -2) \\
  &= (A+B+C)s^2 + (3B + C)s + (-A + 2B - 2C)
  \end{align*}

- comparing coefficients, we get three equations:

  $$\left\{ 
  \begin{matrix}
  A + B + C  &= 0 \\
  3B + C &= 0 \\
  -A + 2B - 2C &= 1
  \end{matrix}
  \right .$$
:::



---

::: incremental

- consider the augmented matrix
  $$\left[
  \begin{array}{c|c}
  \begin{matrix}
  1 & 1 & 1 \\
  0 & 3 & 1 \\
  -1 & 2 & -2 
  \end{matrix} & 
  \begin{matrix} 0 \\ 0 \\ 1
  \end{matrix}   
  \end{array}
  \right]
  \sim 
  \left[
  \begin{array}{c|c}
  \begin{matrix}
  1 & 1 & 1 \\
  0 & 3 & 1 \\
  0 & 3 & -1 
  \end{matrix} & 
  \begin{matrix} 0 \\ 0 \\ 1
  \end{matrix}   
  \end{array}
  \right]
  \sim
  \left[
  \begin{array}{c|c}
  \begin{matrix}
  1 & 1 & 1 \\
  0 & 0 & 2 \\
  0 & 3 & -1 
  \end{matrix} & 
  \begin{matrix} 0 \\ -1 \\ 1
  \end{matrix}   
  \end{array}
  \right]
    \sim
  \left[
  \begin{array}{c|c}
  \begin{matrix}
  1 & 1 & 1 \\
  0 & 3 & -1 \\
  0 & 0 & 1 \\
  \end{matrix} & 
  \begin{matrix} 0 \\ 1 \\ -1/2
  \end{matrix}   
  \end{array}
  \right] 
  \sim
  $$

  $$
  \left[
  \begin{array}{c|c}
  \begin{matrix}
  1 & 1 & 0 \\
  0 & 3 & 0 \\
  0 & 0 & 1 \\
  \end{matrix} & 
  \begin{matrix} 1/2 \\ 1/2 \\ -1/2
  \end{matrix}   
  \end{array}
  \right] 
  \sim
  \left[
  \begin{array}{c|c}
  \begin{matrix}
  1 & 1 & 0 \\
  0 & 1 & 0 \\
  0 & 0 & 1 \\
  \end{matrix} & 
  \begin{matrix} 1/2 \\ 1/6 \\ -1/2
  \end{matrix}   
  \end{array}
  \right] 
  \sim
  \left[
  \begin{array}{c|c}
  \begin{matrix}
  1 & 0 & 0 \\
  0 & 1 & 0 \\
  0 & 0 & 1 \\
  \end{matrix} & 
  \begin{matrix} 1/3\\ 1/6 \\ -1/2
  \end{matrix}   
  \end{array}
  \right]   
  $$

- thus $A=1/3$, $B = 1/6$ and $C=-1/2$.
  
- recall that
  $\dfrac{1}{(s+2)(s-1)(s+1)} = \dfrac{A}{s+2} + \dfrac{B}{s-1} + \dfrac{C}{s+1}.$

- so we conclude $\dfrac{1}{(s+2)(s-1)(s+1)} =
  \dfrac{1}{3}\cdot\dfrac{1}{s+2} + \dfrac{1}{2}\cdot\dfrac{1}{s-1} +
  \dfrac{-1}{2}\cdot\dfrac{1}{s+1}.$
  
:::

----

::: incremental

- since $\mathscr{L}[x] = \dfrac{1}{(s+2)(s-1)(s+1)}$, we find that
  the solution $x$ is given by 
  
  \begin{align*}
  x =&
  \mathscr{L}^{-1}\left[\dfrac{1}{3}\cdot\dfrac{1}{s+2} + \dfrac{1}{6}\cdot\dfrac{1}{s-1} +
  \dfrac{-1}{2}\cdot\dfrac{1}{s+1}\right] \\
  =&
  \dfrac{1}{3}\cdot\mathscr{L}^{-1}\left[\dfrac{1}{s+2}\right]
  + \dfrac{1}{6}\cdot\mathscr{L}^{-1}\left[\dfrac{1}{s-1}\right] +
  \dfrac{-1}{2}\mathscr{L}^{-1}\left[\dfrac{1}{s+1}\right]  \\
  =& \dfrac{e^{-2t}}{3} + \dfrac{e^t}{6} - \dfrac{e^{-t}}{2}  
  \end{align*}

- let's confirm that $x(t) = \dfrac{e^{-2t}}{3} + \dfrac{e^t}{6} -
  \dfrac{e^{-t}}{2}$ is a solution to the ODE.

  $$(D^2-1)x = D^2[x] - x = \dfrac{4e^{-2t}}{3} + \dfrac{e^t}{6} -
  \dfrac{e^{-t}}{2} - \left(\dfrac{e^{-2t}}{3} + \dfrac{e^t}{6} -
  \dfrac{e^{-t}}{2}\right)= \dfrac{3e^{-2t}}{3} = e^{-2t}.$$

- finally, let's confirm that $x(t)$ satisfies $x(0) = x'(0) = 0$.

  $$x(0) = \left(\dfrac{e^{-2t}}{3} + \dfrac{e^t}{6} -
  \dfrac{e^{-t}}{2} \right) \bigg \vert_{t=0} = \dfrac{1}{3} +
  \dfrac{1}{6} - \dfrac{1}{2} = 0.$$
  
  $$x'(0) = \left(\dfrac{-2e^{-2t}}{3} + \dfrac{e^t}{6} -
  \dfrac{-e^{-t}}{2} \right)\bigg \vert_{t=0} =
  \dfrac{-2}{3} +
  \dfrac{1}{6}+ \dfrac{1}{2} = 0
  $$

:::

## Bibliography {.unnumbered}

::: {.refs}
:::
