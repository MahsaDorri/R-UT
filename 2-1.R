library(openxlsx) #harbar bekhay estefade koni bayad in karo koni 
data<- read.csv(file.choose())
names(data)
fix(data)
View(data)
str(data)
# bayad data type ha avaz she
names(data)[1]
names(data)[which(names(data) =='Age..age.in.year.')] <-'Age'
factor_columns <- c('sex','chest.pain', 'blood.sugar','exercise.induced','thal','c')
data[,factor_columns]<- lapply(data[,factor_columns],factor)
summary(data)
levels(dt$chest.pain)
# tavabe amari be NA hasas an va agar dar data bashe nemitouni begirishoun
median(data$blood.pressure)
summary(data$blood.pressure) # ba in mibini NA dari
#na.rm komaket mikone begiri
median(data$blood.pressure,na.rm= TRUE)
quantile(data$Age)
###############################################
library(ggplot2)
boxplot(data$Age,ylab = 'Age')

boxplot(data$Age,ylab = 'Age')
text(y=boxplot.stats(data$Age)$stats,labels = boxplot.stats(data$Age)$stats, x=1,3)
boxplot(Age~sex, data = data)

ggplot(data=data, aes(y=Age, x =sex))+geom_violin()
       
ggplot(data=data, aes(y=Age, x =sex))+geom_boxplot()+
  geom_jitter(color="blue", alpha=0.2)
       
ggplot(data=data, aes(y=Age, x =sex))+geom_violin()+
  geom_jitter(color="red", alpha=0.2)
