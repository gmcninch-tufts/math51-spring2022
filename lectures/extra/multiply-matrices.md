---

::: incremental

- eventually we'll need to know that we can *multiply* a matrix  with
  $n$ columns and a matrix with $n$ rows.  
  
- If $A$ is $m \times n$ and $B$ is $n \times k$ then $AB$ is $m
  \times k$.  Refer to
  [@gutermanNitecki, §3.2] for more details.


- e.g. 
  $$\begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \begin{bmatrix}
  x_1 \\ x_2 \\ x_3 
  \end{bmatrix} 
  =
  \begin{bmatrix}
  a_{11} x_1 + a_{12} x_2 + a_{13} x_3 \\
  a_{21} x_1 + a_{22} x_2 + a_{23} x_3 \\  
  \end{bmatrix}$$

:::

---

::: incremental
  
- and
  $$\begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \cdot
  \begin{bmatrix}
  b_{11} & b_{12} \\
  b_{21} & b_{22} \\
  b_{31} & b_{32} \\
  \end{bmatrix} \\
  = 
  \begin{bmatrix}
  c_{11} & c_{12} \\
  c_{21} & c_{22} 
  \end{bmatrix}
  $$
  
  where
  $$\begin{bmatrix}
  c_{11} \\ c_{12}
  \end{bmatrix} =
  \begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \cdot
  \begin{bmatrix}
  b_{11} \\ b_{21} \\ b_{31}
  \end{bmatrix}$$
  and
  $$\begin{bmatrix}
  c_{21} \\ c_{22}
  \end{bmatrix} =
  \begin{bmatrix}
  a_{11} & a_{12} & a_{13} \\
  a_{21} & a_{22} & a_{23} \\
  \end{bmatrix}
  \cdot  
  \begin{bmatrix}
  b_{12} \\ b_{22} \\ b_{32}
  \end{bmatrix}   
  $$

:::
