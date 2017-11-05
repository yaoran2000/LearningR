library(plotly)
attach(iris)
p <- plot_ly(iris, x = PetalLength, y = PetalWidth,
             color = Species, colors = "Set1", mode = "markers")
p
detach(iris)