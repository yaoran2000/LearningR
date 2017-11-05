run <- function(n = 100, ...) {
  require(scatterplot3d)
  attach(mtcars)
  # direct HTML output
  out("<H2>中文xL</h2>")
  # all arguments are passed as strings from the URL, so convert to numeric as needed
  n <- as.integer(n)
  # create a WebPlot
  p <- WebPlot(800, 600)
  x <- runif(n)
  #plot(x, rnorm(n), pch=19, col=2)
  #plot(mpg~disp,data=mtcars)	
  scatterplot3d(mtcars$wt, mtcars$disp, mtcars$mpg)
  # insert the plot in the page
  out(p)
  # return the whole page
  detach(mtcars)
  done()
}
