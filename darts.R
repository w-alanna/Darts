# Monte Carlo darts simulation to compute PI
# Alanna Hart, November 2023



# Number of darts to throw; the more we throw, the more accurate our estimate
dart_num <- 1000
raduis <- 0.5
points <- matrix(nrow=dart_num, ncol=2)

for(x in 1:dart_num) {
  points[x, 1] <- runif(1, min=0, max=(2*r))
  points[x, 2] <- runif(1, min=0, max=(2*r))
}
