# Monte Carlo darts simulation to compute PI
# Alanna Hart, Melat Ghebreselassie, November 2023

# Number of darts to throw; the more we throw, the more accurate our estimate

dart_num <- 1000
radius <- 0.5

points <- data.frame(x = rep(NA, dart_num), y = rep(NA, dart_num))

for(i in 1:dart_num) {
  points$x[i] <- runif(1, min=0, max=(2*radius))
  points$y[i] <- runif(1, min=0, max=(2*radius))
}
