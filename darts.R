# Monte Carlo darts simulation to compute PI
# Alanna Hart, Melat Ghebreselassie, November 2023

# Number of darts to throw; the more we throw, the more accurate our estimate

dart_num <- 1000
radius <- 0.5


points <- data.frame(n=1:dart_num)

set.seed(1)
points$x <- runif(dart_num, min=0, max=(2*radius))
points$y <- runif(dart_num, min=0, max=(2*radius))


#Computing whether darts are within a given radius
within_radius <-function(x, y, centerx, centery, radius) {
  distance <- sqrt((x-centerx)^2+(y-centery)^2)
  return (distance <=radius)
}

points$incircle <- within_radius(
  points$x, 
  points$y, 
  centerx=0.5,
  centery=0.5, 
  radius)


library(ggplot2)
dart_plot <- ggplot(points, aes(x, y, color=incircle))+geom_point()
print(dart_plot)

#compute PI
a_square <- 4*radius^2
a_circle <- a_square * sum(points$incircle) / dart_num
PI_est <- a_circle / radius^2

print(PI_est)