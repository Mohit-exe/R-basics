#basics of R
model<-'hello'
model
typeof(model)
class(model)
20+30
20-30
x<-100
typeof(x)
y<-100L
typeof(y)
10>20 &10<20
10>2
12+2-3*4
!(10==3)
10==3
12%%2
10%%2
x<-100
y<-200
x==y
print(paste0('hello','world'))


#paste is used to combine the objects with spaces
#paste0 is used to combine the objects without spaces
v1<-c(1,2,3,4,5)
v1
print(v1)
print(paste0(v1))
v2<-c(6,7,8,9,10)
v1+v2
v3=c(1,2,3,4)
v4<-c(1:10)
v4
y<-c(1.7,"9")
y
class(y)
typeof(y)
x<-0.6
as.numeric(x)
as.logical(x)
as.character(x)
y<-int(x)


#list=a list is a generic vector that can contain object of different types
l1<-list(x=c(1,2,3),y=c("monty","neeraj","ankit"))
l1
test<-c("music",1,1.5)
test
test<-list("music",1,1.5)
test
is.vector(test)
is.list(test)
is.matrix(test)
test<-list("music tracks",100,5)
names(test)<-c("product","count","rating")
test


#traversing the items of a list
test[[1]]

#giving names while creating a list
prod.category<-list(product="musictracks",count=100,ratings=5)
prod.category
str(prod.category)
#add a list to another list
prod.ca<-list(product="films",count=200,ratings=10)



#MATRICES

#matrix() function is used to create a matrix
m<-matrix(1:9,nrow=3,ncol=3,byrow=T)
m
m<-matrix(1:9,nrow=3,ncol=3,byrow=F)
m
m<-matrix(1:9,byrow=T)
m
m<-matrix(1:9)
m
cbind(1:3,1:3)
m<-matrix(1:9,nrow=3,ncol=3,byrow=T)
cbind(m,10:12)
rbind(m,10:12)
cbind(m,c(12,13))
n<-matrix(1:12,nrow=4,ncol=3,byrow=T)
cbind(n,c(10,12))
n<-matrix(1:9,nrow=3,ncol=3,byrow=T)
rownames(n)<-c("r1","r2","r3")
colnames(n)<-c("c1","C2","c3")
n
#OR
#to rename matrix rows and columns in just one go
mn<-matrix(1:9,nrow=3,ncol=3,byrow=T)
dimnames(mn)=list(c("r1","r2","r3"),c("c1","c2","C3"))
mn
m1<-19:30
matrix(m1)
matrix(m1,ncol=2)
mat1<-matrix(0,3,3)
mat1<-matrix(1:9,3,3,byrow=T)
mat1
colnames(mat1)
nrow(mat1)

#DATA FRAMES

#dataframe in R is used to store the data in the form of table
#example
name<-c("mohit","neeraj","ankit")
age<-c(22,17,23)
children<-c(F,F,F)
df<-data.frame(name,age,children)
df
str(df)
df
df[2,2]
df[,2]
df[1,]
df[1] # if we dont us comma then by default it shows an entire column
df[1,]
df$age
df$children
df[2]
df["age"]

#to add something to a dataframe
height<-c(163,177,163)
df$height<-height
df
weight<-c(63,67,70)
df$weight<-weight
df
 #OR
cbind(df,weight)
 


#now to add a row we have to create a new dataframe 
#example

tom<-data.frame(name="tom",age=34,children=T,height=155,weight=50)
rbind(df,tom)


#sorting or ordering the dataframe


sort(df$age) #by default ascending order
ranks<-order(df$age)
ranks
df[ranks,]


#generating sequences

rec8<-seq(1,20)
rec8
rec<-seq(1,20,2)
rec
rec<-1:24
rec


#creating vector with 10 odd values starting from 20
rec4<-seq(21,40,2)
rec4
vec<-seq(from=21,by=2,length.out=10)
vec
vec1<-seq(from=100,by=3,length.out=50)
vec1

price<-seq(100,220,20)
names(price)<-paste0("p",1:7)
price


#basic operations on vectors
v1<-seq(from=1,by=1,length.out=20)
sum(v1) #sum of all values of v1
sd(v1)  #standard deviation of all values of v1
var(v1) #variance
prod(v1) #product of all values
max(v1) #maximum
min(v1) #minimum


#to exclude certain values from a vector
v1[-2]
v1[-10]

#comparison vectors
v2<-c(19,12,45)
v3<-c(20,21,22)
v2>v3
v2==v3
v2[v2>20] # to print all the values greater than 20
v3[v3<=20]


#creating subset of a vector

v1<-seq(1,20)
l<-length(v1)
firsttwo<-v1[(l-1):1]
firsttwo
f<-v1[1:(l-2)]
f
v1[(v1%%3)==0]
v1[(v1-10)==0]
v1[(v1+2)>10]


#handling the na values
v1<-c(NA,1,2,3,4,5,6,7,8,9,NA)
v1
sum(v1)
sum(v1,na.rm=T) #to ignore the na values
na.omit(v1)
v1


#operations on matrices

m<-matrix(1:50,byrow = T,nrow=5)
m
5+m
5*m
colSums(m) #sum for each column
rowSums(m) #sum for each row
rowMeans(m) #mean for each row
colMeans(m) #mean for each column

#extraction of rows and columns

m[,1]
m[1]
m[2]       # by default it takes column values
m[,1:2]
m[1:2,1:2]
m[,c(1,2)]



#creating a dataframe

days<-c('mon','tue','wed','thu','fri')
temp<-c(25.6,30.1,45,37.3,41.2)
rain<-c(T,F,F,F,T)
df<-data.frame(days,temp,rain)
df


#dataframe indexing
df[1] #first column
df[,1] #first column
df[1,] #first row
df$fri
df$days
df[2:4,c('days','temp')]


#filtering dataframes using subset function

subset(df,subset=temp>25) #returns entire data where temperature is greater than 25
subset(df,subset=rain==T) #returns data where it has rained

#sorting dataframes using order function
sorted.temp<-order(df[,'temp'])
df[,sorted.temp]
s<-order(df$temp)
df[s,]



#conversion of lists into vectors and vice versa
price<-c(10,20,30)
p_list<-as.list(price)
is.list(p_list)
is.list(price)
pr<-unlist(p_list)
is.list(pr)

#use dim function to convert vectors into matrices
p1<-c(10,20,30,40)
dim(p1)<-c(2,2)
p1


#flow control in R

# if statement

x<-30L
if(is.integer(x)){
  print("x is a integer")
}

score<-60
if(score>70){
  print("it is good")
} else{
  print("it is not good")
  }

 

#while loop

v<-c("hello world")
count<-2
{
  while(count<7)
  {
    print(v)
    count=count+1
  }
}

#for loop

fruit<-c("apple","orangee","passion fruit","banana")
for(i in fruit){
  print(i)
}


#elseif condition
sc<-63
if(sc>80)
  {
  print("good score")
} else if(sc>60 && sc<80){
  print("average score")
} else if(sc<60 && sc>33){
  print("below average")
}



#using a break statement in while loop
x<-0
while(x<5){
  print('x is currently :',x)
  print('x is currently less than 5,adding 1 to x')
  x<-x+1
  if(x==5){
    print("x is equal to 5 ")
    break
    print("i will also print")
  }
}


#functions in R
#function to print squares upto ath number
sqrs<-function(a){
  for(i in 1:a){
    b<-i^2
    print(b)
  }
}
sqrs(4)

#function to print cubes upto given number
cubes<-function(a){
  for(i in 1:a){
    b<-i^3
    print(b)
  }
}
cubes(5)


#function to print if the given number is even or not

pr<-function(a){
  if(a%%2==0){
    print("this is even number")
  }
  else{
    print("this is odd number")
  }
}
pr(5)
pr(4)

#regular expressions in R
#grepl-returns logical value if the pattern was found

text<-"r is fun to learn"
grepl("fun",text)
grepl("gun",text)

#grep()-it returns index position
#also in R index positions start from 1 not from 0

v<-c(1,2,3,4,5,6,7)
grep(1,v)



#simple function with no arguments
hwo<-function(){
  print("hello world")
}
hwo()

#function with a single argument
hello_name<-function(name){
  print(paste("hello",name))
}
hello_name('john')


#function to add 2 numbers
add<-function(a,b){
  print(a+b)
}
add(30,40)


#function with default argument value
h_name<-function(name='rick'){
  print(paste("hello",name))
}
h_name()
h_name("monty")

#function with a return value
prod<-function(a,b){
  return(a*b)
}

prod(2,3)

#create a function to find the final amount to be paid by a customer after adding 20% tax to the purchased amount

tax<-function(amount=100){
  t=amount+amount*20/100
  print("the total amount is",t)
}
tax(120)



#function taking two arguments
g2<-function(x,y){
  y+(x*x)
}
f2<-function(x){
  y=10
  g2(x,y)
}
f2(10)

status<-function(marks){
  if(marks>33){
    print("you are pass")
  }
  else{
    print("you are fail")
  }
}
status(60)
status(30)
  
#R function to find the balance in a bank ac after n years if the x amount is deposited and interest rate is 8% p.a.
amount<-function(capital,time,rate){
  interest=(capital*time*rate)/100
  message("the total amount is",capital+interest )
}
amount(5000,5,8)
amount(1000,4,5)


#factors in R :is a data structure used to represent a vector as categorical data.
#example
colors<-c("red","green","blue","red","green")
f_colors<-factor(colors)
f_colors
f<-factor(colors,levels=c("green","red","blue"))
f
 #level names
levels(colors)<-c("c_g","c_r","c_b")
colors

#working with timestamp
Sys.Date()
as.Date("Nov-03-04",format="%b-%d-%y")


#data manipulation
#1-the dplyr package is used to transform and summarize tabular data with rows and columns

install.packages("dplyr")
library(dplyr)
install.packages('nycflights13')
library(nycflights13)
view(flights)
head(flights)

#filter-it filters rows based on their values
f1<-filter(flights,month==07)
f1
f2<-filter(flights,month==07,day==03)
f2


#slice-allows to select rows by position
slice(flights,1:4)

#mutate-is used to add a new column 
over_delay<-mutate(flights,overall_delay=arr_delay+dep_delay)
head(over_delay)

#transmute function is used to show only new column
summarise(flights)
summary(flights)


#sample_n
sample_n(flights,15) #gives 15 random samples
sample_frac(flights,0.4) #returns 40 % of total data

#arrange-to sort in ascending or descending order
head(arrange(flights,year,dep_time))


#data manipulation using tidyr
install.packages('tidyr')
library(tidyr)

#tidyr package helps to create a tidy data.
#gather-makes wide data long
#spread-makes long data wider
#separate-splits a single column into multiple columns
#unite-combines multiple columns into a single column

n<-10;
wide<-data.frame(ID=c(1:n),face.1=c(1,2,3,4,5,6,7,8,9,10),face.2=c(11,12,13,14,15,16,17,18,19,20),face.3=c(21,22,23,24,25,26,27,28,29,30))
view(wide)
wide

#gather=reshaping data from wide format to long format

long<-gather(wide,face,ResponseTime,face.1,face.3)



#data visualisation in R

#1 pie chart
x<-c(33,35,70,110)
labels<-c("soap","detergent","oil","shampoo")
pie(x,labels)
pie(x,labels,main="city pie chart",col=rainbow(length(x)))
piepercent<-round(100*x/sum(x),1)
pie(x,labels=piepercent,main="city pie chart",col=rainbow(length(x)),legend("topright",c("soap","shampoo","oil","grocery"),cex=0.8,fill=rainbow(length(x))))

#3d piechart
install.packages("plotrix")
library(plotrix)    
x<-c(33,45,70,110)    
lbl<-c("soap","detergent","oil","shampoo")
pie3D(x,labels = lbl,explode=0.1,main="pie chart")


#2 histogram
v<-c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab = "weight",ylab="number",col="green",border="red")
hist(v,xlab="weight",col="green",border="red",xlim=c(0,40),ylim=c(0,50),breaks = 5)

#3 scatterplot
data("airquality")
head(airquality)

#plot a graph b/w the ozone and wind values
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,airquality$Wind,col="red")
plot(airquality$Ozone,airquality$Wind,type='h',col='blue')
#assign labels to the plot

plot(airquality$Ozone,xlab='ozone concentration',ylab='no of instance',main='ozone levels in ny city',col='green')
#histogram with non uniform width
temperature<-c(57,56,57,68,78,79,89)
hist(temperature,main="maximum temperature",xlab="temp in degree fahrenheit",xlim=c(50,100),col="chocolate",border="brown",breaks=c(55,60,70,75,80,100))


#4 boxplot
boxplot(airquality$Solar.R)
barplot(temperature,col='green')
barplot(temperature,col="red")
