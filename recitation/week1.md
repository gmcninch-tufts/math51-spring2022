---
author: George McNinch - Math 51 Fall 2021
title: |
  Recitation handout
  ODEs via integration 
date: 2022-01-21
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib 
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{palatino,mathpazo}
---

#. For a real number $k$ consider the function
   $$x(t) = k t e^{5t}.$$
   For what value(s) of $k$ is $x(t)$ a solution to the following ODE?
   $$x'' - 5x' = e^{5t}$$
   

#. Two species of rabbits -- species $X$ and species $Y$ -- live in a
   national park.  Initially, the population consists of 30 thousand $X$
   rabbits (and no $Y$ rabbits).  Each month one thousand new $Y$ rabbits (and no
   new $X$ rabbits) arrive in the park.

   However, 1 thousand of the rabbits also leave the park for good each month.
   Assume that the population of $X$ and $Y$ rabbits are thoroughly
   mixed, so that the proportion of $X$ rabbits migrating out is the
   same as the total proportion of $X$ rabbits in the population.

   Note that the total number of rabbits in the park remains constant
   over time, at 30,000.  
   
   a. Set up a differential equation to predict the number of $X$
      rabbits in the park after $t$ months.

      (Note that $t$ is a continuous variable; it can assume any 'real
      value $\ge 0$.)

   b. Can you *solve* this ODE? Remember that $x' = \lambda x$ has solutions
      $x(t) = x_0 e^{\lambda t}$.
	  
	  Describe the population of $X$ rabbits after $6$ months.
