
\begin{align*}
\mathscr{L}[e^{\lambda t}] &= \dfrac{1}{s-\lambda}  \quad \text{for} \quad s > \lambda\\
\mathscr{L}[1] &= \dfrac{1}{s}  \quad \text{for} \quad s > 0 \\
\mathscr{L}[t^n] &= \dfrac{n!}{s^{n+1}} \\
\mathscr{L}[\sin(\beta t)] &= \dfrac{\beta}{s^2 + \beta^2} \\
\mathscr{L}[\cos(\beta t)] &= \dfrac{s}{s^2 + \beta^2}
\end{align*}

\begin{align*}
\mathscr{L}^{-1}\left[\dfrac{1}{s-\lambda}\right] &=  e^{\lambda t} \\
\mathscr{L}^{-1}\left[\dfrac{1}{s}\right] &= 1\\
\mathscr{L}^{-1}\left[\dfrac{1}{s^{n+1}}\right]  &= \dfrac{t^n}{n!}  \\
\mathscr{L}^{-1}\left[\dfrac{1}{s^2 + \beta^2}\right] &= \dfrac{1}{\beta} \sin(\beta t) \\
\mathscr{L}^{-1}\left[\dfrac{s}{s^2 + \beta^2}\right] &= \cos(\beta t) 
\end{align*}


  $$\mathscr{L}[D^kx] = s^k \mathscr{L}[x(t)] - s^{k-1}x(0) - s^{k-2}x'(0) - \cdots - s x^{(k-2)}(0) - x^{(k-1)}(0).$$
