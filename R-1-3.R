##################Matrix
A<- matrix(1:10, nrow = 2, ncol= 5)
A
B<- matrix(21:40, ncol = 4,byrow = TRUE)
B
A[2,3]
A[2,]
A[1,c(1,3)]
A[1,2:4]
B[c(1,4,5),2]
A
A[2,] +10
A[2,] <- A[2,] +10
A
A[,5] <-A[,5]/3
A
nrow(A)
ncol(A)
dim(A)
diag(A)
H<- array(1:12, dim = c(2,3,2))
H
patientID<-1:11
age<-c(25,51,63,76,45,67,98,12,34,54,39)
diabet<-c('B','C','A','A','C','C','B','A','B','C','A')
PATIENTDF<- data.frame(patientID, age, diabet)
head(PATIENTDF)
tail(PATIENTDF)
PATIENTDF[1,2]
PATIENTDF[1,]
PATIENTDF$age # dar dataframe mitouni ba $ be sotouna dastresi dashte bashi.
PATIENTDF$age[1]
class(PATIENTDF$diabet)
# agar sorouni ke mikhaym classesho 
#bebinim chand no bashe classesho ke miporsim az noe factor hast
PATIENTDF <- data.frame(patientID,age,diabet,stringsAsFactors = TRUE)
PATIENTDF
class(PATIENTDF$diabet)
nrow(PATIENTDF)
ncol(PATIENTDF)
dim(PATIENTDF)
names(PATIENTDF)[1] <- 'ID'
names(PATIENTDF)
###############################################Function
function_name <- function(arg1,arg2,...){
  statements
  return(output)
}
Hello<- function(){
  print('Hello World')
}
Hello()
a<- 'Thursday'
sprintF('Hello, Today is %s',a)

my_func<- function(first_name, last_name){
  sprintf('Hello,%s %s!',first_name,last_name)
}

my_func('Mahsa','Dorri')
#####ba return na ba print
sr_funct<-function(r){
a<-pi*r^2
return(a)
}
sr_funct(2)
conditional_func<- function(x){
  if(x>=3) {
    y<- 2*x+10
  }else{
   y<- x^2 +2
  }
  return(y)
}
conditional_func(4)
x<-1:6
y<- rep(0,length(x))
for (i in x){
  y[i]<-conditional_func(i)
}
y
plot(x,y, type = 'l')
##########Rescale
#2,4,6,8,10,12,14,16,18,20
#1                       10
#min va max hesab mikoni ke  va ino mohaesebe mikoni
#x[i] - min/(max-min)*(10-1)+1

rescaling_func <- function(x, a, b) {
  # Rescale x to the new range [a, b]
  y <- (x - min(x)) / (max(x) - min(x)) * (b - a) + a
  return(y)
}

x <- seq(2, 20, by = 2)
rescaled_x <- rescaling_func(x, 1, 10)
rescaled_x
#######################prime function
prime1<-function(x){
  for(i in 2:(x-1)){
    if(x%% i == 0 & x!=2){
      return(FALSE)
    }
  }
  return(TRUE)
}
prime1(10)
for(i in 1:100){
  if(prime1(i)){ # agar adade ma aval boud
    print(i)
  }
}
