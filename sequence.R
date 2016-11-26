#sequence from 1 to 20
my_seq1<-1:20

#sequence from 1 to 20 using seq() function
my_seq2<-seq(1,20)

#sequence from 1 to 20 incremented by 0.5
my_seq3<-seq(1,20,by=0.5)

#sequence of 30 numbers between 5 and 10
my_seq4<-seq(5,10,length=30)

#sequence of numbers with length as the length of along.with argument 
my_seq5<-seq(along.with=my_seq4)

#alternative function to the above type
my_seq6<-seq_along(my_seq4)

#replicate function
my_seq7<-rep(0,times=10)

#replicating each element of the given vector 10 times
my_seq8<-rep(c(0,1,2),each=10)

#printing all the sequence variables
my_seq1
my_seq2
my_seq3
my_seq4
my_seq5
my_seq6
my_seq7
my_seq8