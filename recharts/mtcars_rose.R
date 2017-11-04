attach(mtcars)
dtcars <- mtcars
dtcars$car <- row.names(dtcars)
dtcars$transmission <- as.factor(dtcars$am)
levels(dtcars$transmission) <- c("Automatic","Manual")
dtcars$cylinder <- as.factor(dtcars$cyl)
dtcars$carburetor <-as.factor(dtcars$carb)
echart(dtcars, x = ~cylinder,  y = ~car, type='rose',
        palette='colorblind', title='Number of Cylinders',
        subtitle = '(source: mtcars)')
detach(mtcars)