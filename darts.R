# Monte Carlo darts simulation to compute PI
# Alanna Hart, Melat Ghebreselassie, November 2023

# Number of darts to throw; the more we throw, the more accurate our estimate
num_darts <- 1000
r <- 0.5
points <- matrix(nrow = num_darts, ncol = 2)


for(x in 1:num_darts) {
  points[x, 1] <- runif(1, min=0, max=(2*r))
  points[x, 2] <- runif(1, min=0, max=(2*r))
}
