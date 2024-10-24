library (datasets)
data(iris)
View(iris) 

unique(iris$Species)
#the code unique allows me to show the type of the data based on my request
#si quisiera ver el tipo de especies que tengo el codigo me traerá todos los valores encontrados
#lets bring another example
library(datasets)#for loading the data

data("mtcars")#this is another data set

head(mtcars,5)#the head function is used to show the first rows, like a preview 6 by default

?mtcars#this is for having information in the help tab

library(ggplot2) #importing the ggplot package
#in case is not working you have to install the package
install.packages("ggplot2")
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()
#geom_point is for scatter plots
View(mtcars)
#lets try another type of graphics
ggplot(data =mtcars,aes(x = mpg))+geom_histogram(binwidth = 0.5)
#para histogramas
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_boxplot()
#we could add anothers but for this example lets done here
#Add a title

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")
#everytime we would like to add things in R we have to add it with symbol plus and the action
#change axis name

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#for adding title ggtitle for adding labels labs

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
str(mtcars)

#create boxplot of the distribution for v-shaped and straight Engine

ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#lets add some color to the boxplot
ggplot(aes(x=vs,y=mpg, fill = vs),data("mtcars"))+geom_boxplot(alpha=0.3)+theme(legend.position = "none")
  #si en el comando aes utilizamos el data dentro del parentesis la función estara incorrecta
ggplot(aes(x=vs, y=mpg, fill= vs),data=mtcars)+geom_boxplot(alpha=0.2)+theme(legend.position = "none")
#esta seria la forma correcta para dar color a los gráficos
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="bottom")
#we can add the legend in this case we will add the legend in the bottom

#using another variables, lets do it for weight
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

#lets do the plotbox
mtcars$vs <- as.factor(mtcars$vs)
ggplot(aes(x=vs, y=wt, fill=vs), data= mtcars)+geom_boxplot(alpha=0.5)+theme(legend.position = "top")
