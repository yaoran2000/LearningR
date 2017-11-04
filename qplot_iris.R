library(ggplot2)
attach(iris)
qplot(Sepal.Length,Sepal.Width,data=iris,col=as.factor(Species),size=as.factor(Species),shape=as.factor(Species))
detach(iris)
