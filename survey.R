library(rCharts)
a <- hPlot(Pulse ~ Height, data = MASS::survey, type = "bubble",
           title = "Zoom demo", subtitle = "bubble chart",
           size = "Age", group = "Exer")
a$colors('rgba(223, 83, 83, .5)', 'rgba(119, 152, 191, .5)',
         'rgba(60, 179, 113, .5)')
a$chart(zoomType = "xy")
a$exporting(enabled = T)
a