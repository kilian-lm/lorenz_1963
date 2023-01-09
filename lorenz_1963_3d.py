


import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation

def generate_lorenz_animation(sigma, rho, beta, dt, steps):
    
    # Initialize the arrays
    xs = np.empty(steps + 1)
    ys = np.empty(steps + 1)
    zs = np.empty(steps + 1)
    xs[0], ys[0], zs[0] = (0., 1., 1.05)
    
    # Step through "time".
    for i in range(steps):
        # Derivatives of the X, Y, Z state
        x_dot = sigma * (ys[i] - xs[i])
        y_dot = xs[i] * (rho - zs[i]) - ys[i]
        z_dot = xs[i] * ys[i] - beta * zs[i]
        xs[i + 1] = xs[i] + (x_dot * dt)
        ys[i + 1] = ys[i] + (y_dot * dt)
        zs[i + 1] = zs[i] + (z_dot * dt)
        # Create the figure
    fig = plt.figure()
    ax = plt.subplot(projection='3d')
    ax.set_xlim((-25,25))
    ax.set_ylim((-35,35))
    ax.set_zlim((0,50))
    ax.set_xlabel("X Axis")
    ax.set_ylabel("Y Axis")
    ax.set_zlabel("Z Axis")
    ax.set_title("3D Lorenz Attractor")

    # Generate the animation data
    line, = ax.plot(xs, ys, zs, label='Lorenz Curve')
    def update(num, x, y, z, line):
        line.set_data(x[:num], y[:num])
        line.set_3d_properties(z[:num])
        return line,
    
    # Generate and run the animation
    ani = animation.FuncAnimation(fig, update, steps, fargs=[xs, ys, zs, line],
                                  interval=10, blit=True)
    return ani

ani = generate_lorenz_animation(sigma=10, rho=28, beta=8/3, dt=0.001, steps=1000)

ani.save('lorenz.mp4', fps=30)