---
author: Math 51 Spring 2022
title: |
  Recitation worksheet \
  ODEs via integration 
date: 2022-01-27
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
---

**Integrating factors:** An alternative to "variation of parameters" for first-order linear ODEs.

  This alternative is outlined briefly on [@gutermanNitecki,
  sec. 1.3, p. 28].
  
  Consider the first order linear ODE 
  $$(\clubsuit) \quad \dfrac{dx}{dt}  + r(t)x = q(t)$$

  Put $\rho(t) = e^{R(t)}$ where $\displaystyle R(t) = \int r(t)dt$.
  If $x = x(t)$ is a solution to $(\clubsuit)$, consider the function
  $u(t) = \rho(t)x(t)$.
	  
  The product rule shows that $\dfrac{du}{dt} =
  \dfrac{d}{dt}\left[\rho(t)x(t)\right] = \rho(t)x' +
  r(t)\rho(t)x$. Multiplying $(\clubsuit)$ by $\rho(t)$ yields the equality
  $$\rho(t)x' + r(t)\rho(t)x = \rho(t)q(t),$$ and we conclude that
  $u(t) = \rho(t)x(t)$ is a solution to the new ODE $$(\diamondsuit)
  \quad \dfrac{du}{dt} = \rho(t)q(t).$$

  We can now find all solutions $u(t)$ to $(\diamondsuit)$ simply by
  integration: $$u(t) = \int \rho(t) q(t)dt$$ and then we may recover the
  solutions $x(t)$ to $(\clubsuit)$ simply by multiplying the
  solutions $u(t)$ by $\rho(t)^{-1} = 1/\rho(t)$.

  The function $\rho(t)$ is called an *integrating factor*.

# Bibliography {.unnumbered}

:::{#refs}
:::


\newpage


#. Consider $x' + x/t = t^2$. 

   a. Solve this equation  using variation of parameters, and
   
   \vfill
   
   b. Solve this equation  using integrating factors.
   
   \vfill
   
\newpage

#. A pail of water at 20 degrees C is placed outside where the temperature is
   10 degrees C.
   
   The water loses heat according to Newton's law of cooling, with
   constant of proportionality
   $\gamma = 1/10$ when time $t$ is measure in hours. Suppose the temperature
   outdoors is decreasing at a constant rate of $3$ degrees C per hour.
   
   a. Give a formula for the temperature outdoors after $t$ hours.
   
   \vfill 
   
   b. Write $x(t)$ of the temperature of the water in the bucket at
      time $t$. Use Newton's Law of Cooling to give a differential equation
	  for which $x(t)$ is a solution.

   \vfill

   c. What is the temperature of the water at time $t$?
   
   \vfill
   
   d. What is the temperature of the water after $5$ hours?
   
   \vfill

