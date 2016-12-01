# to calculate each column's mean
 colmean <- function(x)
{
  means <- numeric(ncol(x))
  for(i in 1:ncol(x))
    means[i] <- mean(x[,i])
  means
}

 # Alternative way
colmean <- function(x)
{
  means <- vector("numeric",ncol(x))
  for(i in seq_len(ncol(x)))
    means[i] <- mean(x[,i])
  means
}

