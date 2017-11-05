library(recharts)
cars = mtcars[c('Merc 450SE','Merc 450SL','Merc 450SLC'),
              c('mpg','disp','hp','qsec','wt','drat')]
cars$model <- rownames(cars)
cars <- data.table::melt(cars, id.vars='model')
names(cars) <- c('model', 'indicator', 'Parameter')
knitr::kable(cars)
