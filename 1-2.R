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

x <- 1:10
y<- 4:-5
x
y
x-y

length(G)
g
G
X<-1:10
Y<- 1:10
X+Y

z<- c(-1,1)
X
z
X+z


X

X<4

Y
Y<0
# tak tak moghayese mikone!

#conditional
any(X<2)
all(X<2)
which(X<2)
!(X<2)

Y
Y[2]
Y[2:4]
Y[5:7]
Y[Y<5]
#pas vaghti mikhay begi ba inshart bashe too in bordar bayad shart ro too bordar[] benevesi
Y[c(2,4,6)]
z[abs(z)==1]
q<- -1:1
q
q+1
#namming
names(q) <- c('zero','one','two')
q
########################
W<- c(-2, 10,seq(25,15,by= -5),rep(-1,3), rep(c(2,3),2))
W
length(W)
max(W)
min(W)
range(W)
nchar(W)
sum(W)
mean(W)
median(W)
sort(W)
var(W)     
quantile(W)
table(W)
max(table(W))
which.max(table(W))
names(which.max(table(W)))
as.numeric(names(which.max(table(W))))

##############################################for
 for(i in seq(1,4, by=0.5)){
   print (i)
 }
c<- c('apple','orange','Kivi', 'Pineapple')
for(i in c){
  print(nchar(i))
}

for(i in 1:30){
if(i%%4==0){
  print(i)
}
}
s=0
for (i in W){
  s<- i^2 +s
}
print(s)

a= mean(W)
s=0
for(i in W){
s<-((i-a)^2)+s
}
var<- s/length(W) 
print(var)
var(W)

x<-1
while(x<10){
  print(x)
  x<-x+1
}

################ next break
for(i in 1:10){
 
  if(i==5){
    break
  }
  print(i)
}

#jump if you get 5

for(i in 1:10){

  if(i==5){
    next # faghat ino mipare
  }
  print(i)
}
############### factor

# baraye moteghayer haye hast ke chandta halat dare mesle tahsilat damaye hava...

temp<- c('hot','cold','hot','very cold','cold','cold')
temp
temp2<- factor(temp)
calss(temp2)
levels(temp2)
as.numeric(temp2)
table(temp2)
