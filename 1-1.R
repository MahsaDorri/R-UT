1+1
2+4
assign('j',10)
j
ls()
rm(j)
print(j)
########Data Type
###integer & numeric
x <- 3
class(x)
is.numeric(x)
y <- 6L #L means integer
y+1
is.integer(y)
is.integer(x)

#### string

 x<- 'data'
class(x)
nchar(x) #count string length
nchar('Learning R')
nchar(3)
paste('Hello', 'World')
paste(c('Mahsa', 'Dorri'), collapse = '<->')
 ######Logical
TRUE #stand for 1
FALSE #stand for 0

TRUE*7
FALSE*7

z<-TRUE
is.logical(z)

####### 
4 == 5
4 != 5
4>5
4<5
5>5
5>=5
'data' == 'Mahsa'
'data'<'Mahsa'
'Mahsa'<'Mahsa' #har harfi ye adadi dare ke be tartif alphabet hast pas inja javab bar asase une

#########if-else

a <-1
if (a==10){
  print('a equal to 10')
}else{
  print('a is not 10')
}
b<-10
if(b%%2==0){
  print('b is even')
}else{
  print('b is odd')
}


a<- 0.8
if(a==0){
  print('zero')
}else if (a>0){
  print('greater')
}else{
  print('less')
}

time<- 'noon'
if(time=='noon'){
  print('good afternoon')
}else if (time == 'morning'){
  print('good morning')
}else{
  print('goodnight')
}

ifelse(1==1, 'Yes', 'NO')
A <- c(1,5,3,10)
A
A*2
A+5
A-6
B<- 10:20
B
C <- 5:-5
C
D <- seq(1,10, by=2)
D
G <-seq(1,9, length.out= 3)
G

rep(A,2)
rep(A,each = 2)
