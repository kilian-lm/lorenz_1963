# Install and load the library 'rgl'
library(rgl)

# Create a vector of values
x <- seq(-10, 10, 0.01)

# Calculate the y values
y <- x/sqrt(1+x^2)

# Draw the curve using the 'plot3d' function
plot3d(x, y, type = "l", col = "blue")

# Add title and axis labels
title(main = "Lorenz Curve", xlab = "x-axis", ylab = "y-axis")
  

# Install and load the library 'rgl'
library(rgl)

# Create a vector of values
x <- seq(-10, 10, 0.01)

# Calculate the y values
y <- x/sqrt(1+x^2)

# Create the butterfly curve
z <- x*y

# Draw the curve using the 'plot3d' function
plot3d(x, y, z, type = "l", col = "blue")

# Add title and axis labels
title(main = "Lorenzo Butterfly Curve", xlab = "x-axis", ylab = "y-axis", zlab = "z-axis")





# Install and load the library 'rgl'
library(rgl)

# Create a vector of values
x <- seq(-10, 10, 0.01)

# Calculate the y values
y <- x/sqrt(1+x^2)

# Create the butterfly curve
z <- x*y

# Draw the curve using the 'plot3d' function
plot3d(x, y, z, type = "l", col = "blue", lwd = 1)

# Generate points on the curve and slowly make it visible
for (i in 1:length(x)) {
  points3d(x[i], y[i], z[i], col = "red", add = TRUE, lwd = 2)
  Sys.sleep(0.01)
}

# Add title and axis labels
title(main = "Lorenzo Butterfly Curve", xlab = "x-axis", ylab = "y-axis", zlab = "z-axis")


now the the butterfly effect in the lorenzo curve
# Install and load the library 'rgl'
library(rgl)

# Create a vector of values
x <- seq(-10, 10, 0.01)

# Calculate the y values
y <- x/sqrt(1+x^2)

# Create the butterfly curve
z <- x*y + sin(x)

# Draw the curve using the 'plot3d' function
plot3d(x, y, z, type = "l", col = "blue")

# Add title and axis labels
title(main = "Lorenzo Butterfly Curve with the Butterfly Effect", xlab = "x-axis", ylab = "y-axis", zlab = "z-axis")



# Install and load the library 'rgl'
library(rgl)

# Set parameters
x <- seq(-10, 10, 0.01)
y <- seq(-10, 10, 0.01)

# Create a matrix with x and y coordinates
mat <- expand.grid(x, y)

# Calculate the z coordinates 
z <- mat[,1]*mat[,2] + sin(mat[,1])

# Calculate the attractors
center <- c(0, 0, 0)
radius <- 0.5

# Draw the curve using the 'plot3d' function
plot3d(mat[,1], mat[,2], z, type = "l", col = "blue")
spheres3d(center[1], center[2], center[3], radius, col = "red")

# Add title and axis labels
title(main = "Lorenzo Butterfly Curve with Attractors", xlab = "x-axis", ylab = "y-axis", zlab = "z-axis")




# Install and load the library 'rgl'
library(rgl)

# Set parameters
x <- seq(-10, 10, 0.01)
y <- seq(-10, 10, 0.01)

# Create a matrix with x and y coordinates
mat <- expand.grid(x, y)

# Calculate the z coordinates 
z <- mat[,1]*mat[,2] + sin(mat[,1])

# Calculate the attractors
center <- c(0, 0, 0)
radius <- 0.5

# Draw the curve using the 'plot3d' function
plot3d(mat[,1], mat[,2], z, type = "l", col = "blue")
spheres3d(center[1], center[2], center[3], radius, col = "red")

# Create a vector of points
points <- seq(from = 0, to = length(x)-1, by = 5)

# Draw the curve using the 'plot3d' function
plot3d(x[points], y[points], z[points], type = "l", col = "blue", add = TRUE)

# Add title and axis labels
title(main = "Lorenzo Butterfly Curve with Attractors", xlab = "x-axis", ylab = "y-axis", zlab = "z-axis")




# Install and load the library 'rgl'
library(rgl)

# Set parameters
x <- seq(-10, 10, 0.01)
y <- seq(-10, 10, 0.01)

# Create a matrix with x and y coordinates
mat <- expand.grid(x, y)

# Calculate the z coordinates 
z <- mat[,1]*mat[,2] + sin(mat[,1])

# Calculate the attractors
center <- c(0, 0, 0)
radius <- 0.5

# Create a vector of points
points <- seq(from = 0, to = length(x)-1, by = 5)

# Draw the curve using the 'plot3d' function
plot3d(x[points], y[points], z[points], type = "l", col = "blue")
spheres3d(center[1], center[2], center[3], radius, col = "red")

# Add title and axis labels
title(main = "Lorenzo Butterfly Curve with Attractors", xlab = "x-axis", ylab = "y-axis", zlab = "z-axis")






# Install and load the library 'rgl'
library(rgl)

# Set parameters
x <- seq(0, 2, 0.01)
y <- seq(0, 2, 0.01)
z <- seq(0, 2, 0.01)

# Create a matrix with x, y, and z coordinates
mat <- expand.grid(x, y, z)

# Set the Lorenz parameters
sigma <- 10
rho <- 28
beta <- 8/3

# Calculate the derivatives
dx <- sigma * (mat[,2] - mat[,1])
dy <- mat[,1] * (rho - mat[,3]) - mat[,2]
dz <- mat[,1] * mat[,2] - beta * mat[,3]

# Create a vector of points
points <- seq(from = 0, to = length(x)-1, by = 5)

# Draw the curve using the 'plot3d' function
plot3d(mat[points,1], mat[points,2], mat[points,3], type = "l", col = "blue")

# Add title and axis labels
title(main = "Lorenz System in 3D", xlab = "x-axis", ylab = "y-axis", zlab = "z-axis")
