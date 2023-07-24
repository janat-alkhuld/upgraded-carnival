qplot(factor(cyl), mpg, data = mtcars, geom = "boxplot")
#
pl <- ggplot(mtcars, aes(factor(cyl), mpg))
pl + geom_boxplot()
#
pl + geom_boxplot() + coord_flip()
#
pl + geom_boxplot(aes(fill = factor(cyl)))
#
pl + geom_boxplot(fill = "grey", color = "blue")
#
