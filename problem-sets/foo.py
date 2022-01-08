import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots()

t = np.arange(-2,2,.5)

def f(c):
    return lambda t: 0.3*(1+t) + c*np.exp((-1)*t)

def x(c):
    return f(c)(t)

print("oof")
ax.plot(t,x(.3))
ax.plot(t,x(0))
ax.plot(t,x(-.3))
fig.show()

