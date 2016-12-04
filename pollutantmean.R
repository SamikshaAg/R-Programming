

pollutant_mean<- function(directory,pollutant,id=1:332){
 sumall<-0
 len<-0
 folder<- "E:/Coursera/specdata"
 file_list<-list.files(path=folder,pattern = "*.csv")
 for(i in seq_along(id)){
     
     final<-assign(file_list[id[i]],read.csv(paste(folder,file_list[id[i]],sep='/')))
     sums<-sum(final[,pollutant],na.rm = T)
     x<-!is.na(final[,pollutant])
     y<-x
     len=len+length(y[x==TRUE])
     sumall=sumall+sums
     }
   sumall/len
   }