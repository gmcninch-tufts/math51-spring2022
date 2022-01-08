import matplotlib.pyplot as plt
import numpy as np


           
def norm(t,x):
    return np.sqrt(t**2 + x**2)


class diffeq():
    def __init__(self,f,tmin,tmax,xmin,xmax,n=30,slopes=[0],inits=[0],title="untitled.png"):
        self.f = f
        self.tmin = tmin
        self.tmax = tmax
        self.xmin = xmin
        self.xmax = xmax
        self.n=n
        self.step_t = (tmax-tmin)/n
        self.step_x = (xmax-xmin)/n

        self.t = np.arange(tmin,tmax,self.step_t)
        self.x = np.arange(xmin,xmax,self.step_x)        
        
        self.slopes = slopes
        self.inits = inits
        self.title = title

        self.labels = iter([ "A",
                             "B",
                             "C",
                             "D",
                             "E",
                             "F" ])

        self.colors = iter([ "red",
                             "green",
                             "purple",
                             "blue",
                             "orange",
                             "pink"
                            ])
        
        self.fig, self.ax = plt.subplots()
        self.ax.set_xlabel("t")
        self.ax.set_ylabel("x")

        print(f"building gradient field for {self.title}")
        self.make_gradient_field()
        print(f"building isoclines field for {self.title}")        
        self.make_isoclines()
        print(f"building solutions field for {self.title}")                
        self.make_sols()
        self.ax.legend()

        
    def forward_euler(self,t,x0):
        x = np.zeros(len(t))
        x[0]=x0
        for i in range(len(t)-1):
            h = t[i+1]-t[i]
            x[i+1] = x[i] + h*self.f(t[i],x[i])
        err=[i for i in range(len(t)) if (x[i] >= self.xmax) or (self.xmin >= x[i])]
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
        
        for i in self.slopes: 
            label = next(self.labels)
            color = next(self.colors)
            print(f"plotting isocline {color} {label}")
           
            self.ax.plot(self.t, (-1)*self.f(self.t,0) + i,
                         color=color,
                         ls='-.',
                         label=label)

    def plot_sol(self,x0):
        label = next(self.labels)
        color = next(self.colors)
        print(f"plotting solution {color} {label}")
        ts = np.arange(self.tmin,self.tmax,self.step_t/10)
        tt,xx = self.forward_euler(ts,x0)
        self.ax.plot(tt,xx,
                     color=color,
                     label=label)

    def make_sols(self):
        for i in self.inits:
            self.plot_sol(i)
            
    def draw(self):
        self.fig.savefig(self.title)


def h(t,x):
    return x - .3*(t-2)*(t+2)*t

D1 = diffeq(h,-3.0,3.0,-5.0,8.0,title="ex-cubic.png",inits=[-1.0,-1.26,-1.5],slopes=[1,0])
D1.draw()

def g(t,x):
    return x - .3*(t-2)*(t+1)

D2 = diffeq(g,-3.0,3.5,-3.0,5.0,title="ex-quad.png",inits=[1.6,1.5,1.48],slopes=[1,0])
D2.draw()

def k(t,x):
    return x - .3*t

D3 = diffeq(k,-2.0,2.0,-2.0,4.0,n=40,title="ex-linear.png",inits=[-.25,-.35,-.5,],slopes=[1,0])
D3.draw()
