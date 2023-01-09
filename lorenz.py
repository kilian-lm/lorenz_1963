import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import odeint

def lorenz_63(x,t,sigma=10,rho=28,beta=8/3):
    x_dot = sigma*(x[1]-x[0])
    y_dot = x[0]*(rho-x[2]) - x[1]
    z_dot = x[0]*x[1] - beta*x[2]
    return [x_dot, y_dot, z_dot]

sigma = 10
rho = 28
beta = 8/3

# initial conditions
x0 = [1.0, 1.0, 1.0]

# time points
t = np.arange(0, 50, 0.01)

# solve ODE
x = odeint(lorenz_63, x0, t, args=(sigma, rho, beta))

# plot results
plt.plot(t, x[:,0], label='x(t)')
plt.show()