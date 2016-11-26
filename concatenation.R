#vector of characters
my_char<-c("My","name","is")

#concating elements of my_char vector into 1 string and each element separated by a single space
concat1<-paste(my_char,collapse=" ")

#adding a new element to my_char vector
my_name<-c(my_char,"Samiksha!!!")

#concating as above
concat2<-paste(my_name,collapse=" ")

#concating elements of two vectors separated by "-"
concat3<-paste(LETTERS,1:4,sep="-")

#printing all the strings
concat1
concat2
concat3