corr <- function(directory, threshold=0)
{
  folder <- "E:/Coursera/assignment/specdata"
  file_list <- list.files(path=folder,pattern = "*.csv")
  res <- numeric()
  for(i in seq_along(file_list))
  {
    final <- assign(file_list[i],read.csv(paste(folder,file_list[i],sep='/')))
    x <- final[,"sulfate"]
    y <- final[,"nitrate"]
    comp <- complete.cases(x,y)
    z <- comp
    len <- length(z[comp==TRUE])
    res1 <- x[comp]
    res2 <- y[comp]
    if(len>threshold)
    {
      correlation <- cor(res1, res2)
      res <- c(res,correlation)
    }
  }
  res
}
