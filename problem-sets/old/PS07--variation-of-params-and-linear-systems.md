---
author: Math 51 Fall 2021
title: |
  Problem Set 7 \
  Variation of parameters & Linear systems of ODEs
date: due 2021-10-31 at 11:59 PM
bibliography: 
 - /home/george/Prof-Math/assets/math-bibliography.bib
 - /home/george/Prof-Math/assets/teaching.bib
csl: assets/chicago-author-date.csl
header-includes: |
  \usepackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
  \usepackage{mathtools}
---

These problems concern [@gutermanNitecki §2.8 & §3.2 ].

#. Find the general solution to 

   $$x'' - 2x' + x = e^t \ln(t), \quad t>0.$$

#. Verify that $t$ and $e^t$ are solutions of the homogeneous equation corresponding to
   $$(N) \quad [(t −1)D^2 −tD + 1]x = (t −1)^2e^t, \quad t >1,$$ and find the
   general solution of the nonhomogeneous equation $(N)$.

   (Remember to put the ODE in *standard form* when using *variation of parameters*!)

#. For each of the following systems of ODEs, decide whether it is linear.
   For each linear systems, do also the following:
   - indicate whether it is homogeneous
   - find a matrix $A$ and a vector $\mathbf{E}$ such that the system can
     be rewritten in the form $$D \mathbf{x} = A \mathbf{x} + \mathbf{E}$$ where
     $\mathbf{x} = \begin{bmatrix} x \\ y \\ z \end{bmatrix}$ (or
     $\mathbf{x} = \begin{bmatrix} x \\ y \end{bmatrix}$).
   
   a. $\quad \left \{ \begin{matrix*}[l]
	   x' =& ty - z \\
	   y' =&  -\dfrac{x}{t} - z + 1 \\
	   z' =&  -x -t^2y + z + 2t
	  \end{matrix*} \right .$

   b. $\quad \left \{\begin{matrix*}[l]
      x' =& 2x - 3y \\
	  y' =& 3x^2y + y + 1
      \end{matrix*} \right .$

   c. $\quad \left \{
      \begin{matrix*}[l]
	  x' =& 7x + 11y \\
	  y' =& -2x + y
	  \end{matrix*}
	  \right .$

#. Let $A = \begin{bmatrix}
    0 & 1 \\
	-1 & 0 
   \end{bmatrix}$.
   
   a. Show that $\mathbf{h_1}(t) = \begin{bmatrix}
   \sin(t) \\ \cos(t)
   \end{bmatrix}, \quad \mathbf{h_2}(t) = \begin{bmatrix}
   \cos(t) \\ -\sin(t)
   \end{bmatrix}$ are solutions to the homogeneous
   system $$D \begin{bmatrix} x\\ y \end{bmatrix} = A \begin{bmatrix} x\\ y \end{bmatrix}.$$
   
   

   b. Show that $\mathbf{p}(t) = \begin{bmatrix} 0 \\ -t \end{bmatrix}$ is a
      *particular solution* to the inhomogeneous equation 
	  $$(\clubsuit) \quad D \begin{bmatrix} x\\ y \end{bmatrix} = A \begin{bmatrix} x\\
      y \end{bmatrix} + \begin{bmatrix} t \\ -1 \end{bmatrix}.$$
   
   c. Let $\mathbf{x} = \mathbf{p}(t) + c \cdot \mathbf{h_1}(t)$ for a
      constant $c$. By computing $D[\mathbf x]$ and $A \mathbf{x} +
      \begin{bmatrix} t \\ -1 \end{bmatrix}$ and comparing the
      results, confirm that $\mathbf{x}$ is a solution to
      $(\clubsuit)$ for all $c$.
   
      (**Note:** In fact, $\mathbf{x} = \mathbf{p}(t) + c_1 \mathbf{h_1}(t) + c_2
	  \mathbf{h_2}(t)$ is the *general solution* to $(\clubsuit)$; we'll
	  see how to confirm this later in class).
   
5. Consider the linear ODE
   $$\mathbf{(N)} \quad (D - 3)^2x = e^{3t} \quad \text{i.e.} \quad (D^2 - 6x + 9)x = e^{3t}.$$
   
   a. Find the equivalent linear system $\mathbf{(S_N)}$ of
      ODEs. Write this system in *matrix form*.
   
   b. Note that the general solution to the homogeneous equation [^1]
      $\mathbf{(H)} \quad (D-3)^2x =0$  is generated by $h_1(t) =
      e^{3t}$ and $h_2(t) = te^{3t}$.  Find the corresponding vector
      solutions $\mathbf{h}_1$ and $\mathbf{h}_2$ to the homogeneous
      system $\mathbf{(S_H)}$.

   c. Find a particular solution $p(t)$ to the equation $(D-3)^2 x =
      e^{3t}$, and find the corresponding vector solution
	  $\mathbf{p}(t)$ to the system $\mathbf{(S_N)}$.
	  
   d. The general solution to $\mathbf{(N)}$ is given by $x(t) =
      p(t) + c_1 h_1(t) + c_2 h_2(t)$. Indicate the the corresponding
      solutions $\mathbf{x}$ to the system $\mathbf{(S_N)}$.

[^1]: An earlier version of this problem set had a typo in this
      equation -- $(D-3)^2x=0$ is the correct homogeneous equation.

# Bibliography {.unnumbered} 

::: {#refs} 
:::
