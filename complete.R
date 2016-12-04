complete <- function(directory,id=1:332)
{
  folder <- "E:/Coursera/assignment/specdata"
  file_list <- list.files(path=folder,pattern="*.csv")
  res <- data.frame()

 for(i in seq_along(id))
 {
   final<- assign(file_list[id[i]], read.csv(paste(folder,file_list[id[i]],sep='/')))
   x<- final[,"sulfate"]
   y<- final[,"nitrate"]
   comp <- complete.cases(x,y)
   z<-comp
   len <- length(z[comp==TRUE])
   resvec <- c(id[i],len)
   res <- rbind(res, resvec)
   colnames(res)<- c("id","nobs")
 }
  res
}