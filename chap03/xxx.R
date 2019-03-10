
sample(1:10, size = 1000, replace = T) -> data1
qplot(data1)

str(mtcars)
qplot(mpg, wt, data = mtcars)

qplot(mpg, data = mtcars, facets = am~.)

table(mtcars$vs)
table(mtcars$am)
qplot(mpg, wt, data = mtcars, colour = cyl, size=cyl)
qplot(mpg, wt, data = mtcars, colour = wt)
qplot(mpg, data = mtcars)
qplot(mpg, data = mtcars, geom = "dotplot")
x = mtcars$vs ~ mtcars$am
str(x)

qplot(mpg$manufacturer, geom="dotplot")

qplot(factor(sample(1:10, 100, replace = T)), geom="dotplot")


