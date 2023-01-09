# Function to simulate the Lorenz 1963 Problem
lorenz_simulate <- function(r = 28, s = 10, b = 8/3){
  # Initial conditions
  x = 0
  y = 1
  z = 1.05
  
  # Step size
  h = 0.01
  
  # Empty list to store values
  x_values <- list()
  y_values <- list()
  z_values <- list()
  
  # Iterate until the desired time
  for(i in 1:1000){
    # Calculate derivatives
    dx = s*(y - x)
    dy = x*(r - z) - y
    dz = x*y - b*z
    
    # Step forward in time
    x = x + h*dx
    y = y + h*dy
    z = z + h*dz
    
    # Store values
    x_values[[i]] <- x
    y_values[[i]] <- y
    z_values[[i]] <- z
  }
  
  # Return the lists
  return(list(x = x_values, y = y_values, z = z_values))
}

# and plot them in 3d

# Plot the values
plot_3d <- function(x_values, y_values, z_values){
  plot_ly(
    x = x_values, 
    y = y_values, 
    z = z_values,
    type = "scatter3d",
    mode = "lines",
    line = list(width = 2)
  )
}

# Run the simulation
sim_results <- lorenz_simulate()

library(plotly)
# Plot the results
plot_3d(sim_results$x, sim_results$y, sim_results$z)





# Set a different initial seed
set.seed(22)

# Run the simulation
sim_results <- lorenz_simulate()

# Plot the results
plot_3d(sim_results$x, sim_results$y, sim_results$z)





# Set a different initial seed
set.seed(22)

# Run the simulation
sim_results <- lorenz_simulate()

# Plot the results
plot_ly(
  x = sim_results$x, 
  y = sim_results$y, 
  z = sim_results$z,
  type = "scatter3d",
  mode = "lines+markers",
  line = list(width = 2)
)




# Set a different initial seed
set.seed(22)

# Run the simulation
sim_results <- lorenz_simulate()

# Plot the results
plot_ly(
  x = sim_results$x, 
  y = sim_results$y, 
  z = sim_results$z,
  type = "scatter3d",
  mode = "lines+markers",
  line = list(width = 2)
) %>%
  animate(
    frames = list(
      step = list(
        args = list(
          x = list(sim_results$x, 0.05),
          y = list(sim_results$y, 0.05),
          z = list(sim_results$z, 0.05)
        ),
        label = list("x", "y", "z"),
        method = "animate"
      )
    ),
    transition = list(duration = 0, easing = "cubic-in-out")
  )

??animate()

library(plotly)

# add in a parameter

# Function to simulate the Lorenz 1963 Problem
lorenz_simulate <- function(r = 28, s = 10, b = 8/3, x_0 = 0, y_0 = 1, z_0 = 1.05){
  # Initial conditions
  x = x_0
  y = y_0
  z = z_0
  
  # Step size
  h = 0.01
  
  # Empty list to store values
  x_values <- list()
  y_values <- list()
  z_values <- list()
  
  # Iterate until the desired time
  for(i in 1:1000){
    # Calculate derivatives
    dx = s*(y - x)
    dy = x*(r - z) - y
    dz = x*y - b*z
    
    # Step forward in time
    x = x + h*dx
    y = y + h*dy
    z = z + h*dz
    
    # Store values
    x_values[[i]] <- x
    y_values[[i]] <- y
    z_values[[i]] <- z
  }
  
  # Return the lists
  return(list(x = x_values, y = y_values, z = z_values))
}


lorenz_simulate(22)



# Set a different initial seed
set.seed(22)
library(magrittr)
library(plotly)
# Run the simulation
sim_results <- lorenz_simulate()

update.packages()
#


fig <- fig %>% layout(
  title = "AAPL: Last 30 days",
  yaxis = list(
    title = "Close", 
    range = sim_results$y, 
    zeroline = F,
    tickprefix = "$"
  ),
  xaxis = list(
    title = "Day", 
    range = sim_results$x, 
    zeroline = F, 
    showgrid = F
  ),
  zaxis = list(
    title = "Day", 
    range = sim_results$z, 
    zeroline = F, 
    showgrid = F
  )
) 
fig <- fig %>% animation_opts(
  frame = 100, 
  transition = 0, 
  redraw = FALSE
)
fig <- fig %>% animation_slider(
  currentvalue = list(
    prefix = lorenz_simulate(22)
  )
)

fig












































































