library(treemap)
library(d3treeR)
data("GNI2014")
tm <-  treemap(
  GNI2014,
  index=c("continent", "iso3"),
  vSize="population",
  vColor="GNI",
  type="value"
)
d3tree( tm,rootname = "World" )