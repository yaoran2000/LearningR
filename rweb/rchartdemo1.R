run <- function(n = 100, ...) {
  require(rCharts)
  attach(iris)
  # direct HTML output
  #out("<H2>中文xL</h2>")
  #p <- WebPlot(800, 600)
  names(iris) = gsub("\\.", "", names(iris))
  p1 <- rPlot(SepalLength ~ SepalWidth | Species, data = iris, color = 'Species', type = 'point')
  #print(echart(data=iris,x=~SepalLength,y=~PetalWidth,series = ~Species,
  #       type = 'scatter'))
  # insert the plot in the page
  #out(p)
  # return the whole page
  out(p1)
  detach(iris)
  done()
}