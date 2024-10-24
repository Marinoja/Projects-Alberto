#Nuevo proycto we will learn how to use GGALY WHICH IS SIMILAR TO GGPLOT
library(datasets)
data("iris")
head(iris,4)#for the preview of data
install.packages("GGally")
library(GGally)
ggpairs(data=iris,mapping=ggplot2::aes(colour=Species))
