library(recharts)
names(iris) = gsub("\\.", "", names(iris))
echart(data=iris,x=~SepalLength,y=~PetalWidth,series = ~Species,
        type = 'scatter')