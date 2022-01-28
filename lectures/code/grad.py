import matplotlib.pyplot as plt
import numpy as np


           
def norm(t,x):
    return np.sqrt(t**2 + x**2)

def subdivide(x,y,n):
    return np.arange(x,y,(y-x)/n)

class bounds():
    def __init__(self,bmin,bmax):
        self.bmin = bmin
        self.bmax = bmax
    def ran(self,n):
        return subdivide(self.bmin,self.bmax,n)

def graph(h,bounds,n):
    return (bounds.ran(n),h(bounds.ran(n)))

def vertical(bounds,n):
    return (np.zeros(n),bounds.ran(n))
    
class diffeq():
    def __init__(self,
                 f,
                 t_bounds,
                 x_bounds,
                 n,
                 isoclines=[],
                 labeledPoints=[],
                 inits=[0],
                 title="untitled.png"):
        self.f = f
        self.n = n
        self.t_bounds = t_bounds
        self.x_bounds = x_bounds
        
        self.t = t_bounds.ran(n)
        self.x = x_bounds.ran(n)
        
        self.tacc = t_bounds.ran(n*100)
        
        self.isoclines = isoclines
        self.inits = inits
        self.title = title
        self.labeledPoints=labeledPoints
        
        self.labels = iter([ "A",
                             "B",
                             "C",
                             "D",
                             "E",
                             "F",
                             "G" ])

        self.colors = iter([ "red",
                             "green",
                             "purple",
                             "blue",
                             "orange",
                             "pink",
                             "grey"
                            ])
        
        self.fig, self.ax = plt.subplots()
        self.ax.set_xlabel("t")
        self.ax.set_ylabel("x")

        print(f"building gradient field for {self.title}")
        self.make_gradient_field()
        print(f"building solutions field for {self.title}")                
        self.make_sols()        
        print(f"building isoclines field for {self.title}")        
        self.make_isoclines()
        self.ax.legend()

        
    def forward_euler(self,t,x0):
        x = np.zeros(len(t))
        x[0]=x0
        for i in range(len(t)-1):
            h = t[i+1]-t[i]
            x[i+1] = x[i] + h*self.f(t[i],x[i])
        err=[i for i in range(len(t)) if (x[i] >= self.x_bounds.bmax) or (self.x_bounds.bmin >= x[i])]
        if not err:
            m=len(t)
        else:
            m=min(err)-1
        return t[0:m], x[0:m]
    
    def make_gradient_field(self):
        T, X = np.meshgrid(self.t,self.x)
        q = self.ax.quiver(T,X,
                           T**0 / norm(T**0,self.f(T,X)),
                           self.f(T,X) / norm(T**0,self.f(T,X)),
                           angles='xy',
                           color="grey"
                           )

    def make_isoclines(self):
        
        for iso in self.isoclines: 
            label = next(self.labels)
            color = next(self.colors)
            print(f"plotting isocline {color} {label}")
            for (ti,xi) in iso:
                self.ax.plot(ti,
                             xi,
                             color=color,
                             ls='-.',
                             label=label)

    def plot_sol(self,p):
        (t0,x0) = p
        label = next(self.labels)
        color = next(self.colors)
        print(f"plotting solution {color} {label}")
        tt,xx = self.forward_euler(self.tacc,x0)
        self.ax.plot(tt,xx,
                     color=color,
                     label=label)
        for (a,b) in self.labeledPoints:
            self.ax.plot(a,b,color="blue",marker="o")

    def make_sols(self):
        for i in self.inits:
            self.plot_sol(i)
            
    def draw(self):
        self.fig.savefig(self.title)


def h(t,x):
    return x*t

def hi(k):
    return lambda t: k*1.0/t

E1 = diffeq(h,
            t_bounds=bounds(-2,2),
            x_bounds=bounds(-4,4),
            n=30,
            title="xt-sols.png",
            labeledPoints = [(-2,4),(-2,-4)],
            isoclines=[],
            inits=[(-2,4),(-2,-4)])
E1.draw()

# E2 = diffeq(h,
#             t_bounds=bounds(-2,2),
#             x_bounds=bounds(-4,4),
#             n=30,
#             title="xt-sols-iso.png",
#             isoclines=[ [ graph(hi(0),bounds(-2,2),30),
#                           vertical(bounds(-4,4),30)
#                          ],
#                         [ graph(hi(1),bounds(-2,-.2),30),
#                           graph(hi(1),bounds(.25,2),30)
#                         ],
#                         [ graph(hi(-1),bounds(-2,-.2),30),
#                           graph(hi(-1),bounds(.25,2),30)
#                         ],
#                        ],            
#             inits=[4,-4])
# E2.draw()


# def g(t,x):
#     return x - .3*(t-2)*(t+1)

# def q(t):
#     return (-1)*g(t,0)

# D1 = diffeq(g,
#             t_bounds = bounds(-3.0,3.5),
#             x_bounds = bounds(-3.0,5.0),
#             n=30,
#             title="quad-sols-iso.png",
#             isoclines=[
#                 [ graph(q,bounds(-3.0,3.5),n=30),]
#             ],
#             inits=[1.6,1.5,1.46])
# D1.draw()

# def h(t,x):
#     return x - .3*(t-2)*(t+2)*t

# def hi(t):
#     return (-1)*h(t,0)

# D2 = diffeq(h,
#             bounds(-3.0,3.0),
#             bounds(-5.0,8.0),
#             n=30,
#             title="cubic-sols-iso.png",
#             inits=[-1.0,-1.26,-1.5],
#             isoclines = [
#                 [graph(hi,bounds(-3,3),n=30)]
#             ]
# #            slopes=[1,0]
#             )
# D2.draw()


# def k(t,x):
#     return x - .3*t

# def ki(t):
#     return (-1)*k(t,0)

# D3 = diffeq(k,
#             t_bounds=bounds(-2.0,2.0),
#             x_bounds=bounds(-2.0,4.0),
#             n=40,
#             title="linear-sols-iso.png",
#             inits=[-.25,-.35,-.5,],
#             isoclines=[
#                 [graph(ki,bounds(-2,2),n=30)]
#                 ]
#             )
# D3.draw()
