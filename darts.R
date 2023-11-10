# Monte Carlo darts simulation to compute PI
# Alanna Hart, Melat Ghebreselassie; November 2023

# Number of darts to throw; the more we throw, the more accurate our estimate
num_darts <- 1000

x<-4
 
mat <- matrix(0, nrow=x, ncol=x)

#Darts must be within radius of circle to be 'counted'

within_radius <-function(x, y, centerx, centery, radius) {
  distance <- sqrt((x-centerx)^2+(y-centery)^2)
  return (distance <=radius)
}

centerx <- x/2
centery <- x/2
radius <-x

darts_in_rad <-matrix(0, nrow=x, ncol=x)

for (i in 1:x) {
  for (j in 1:x) {
    if (mat[i, j]==1 && within_radius(i, j, centerx, centery, radius)){
      darts_in_rad[i, j] <- TRUE
    }
    else {
      darts_in_rad[i, j] <- FALSE
    }
  }
}

#Another approach to doing the above (work in progress)

if(within_radius(dartx, darty, centerx, centery, radius)) {
mat[ceiling]
}

print(mat)
print(darts_in_rad)