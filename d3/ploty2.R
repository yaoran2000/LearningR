library(plotly)
attach(midwest)
plot_ly(midwest, x = percollege, color = state, type = "box")
detach(midwest)