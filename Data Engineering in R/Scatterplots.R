library('ggplot2')
df <- mtcars
#
qplot(wt,mpg,data=df)
#
qplot(wt,mpg,data=df,color=cyl)
#
qplot(wt,mpg,data=df,size=cyl)
#
qplot(wt,mpg,data=df,size=cyl,color=cyl)
#
# Show 4 features (this gets messy)
qplot(wt,mpg,data=df,size=cyl,color=hp,alpha=0.6)
#
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point()
#
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(color=cyl))
#
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(color=factor(cyl)))
#
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(size=factor(cyl)))
#
# With Shapes
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(shape=factor(cyl)))
#
# Better version
# With Shapes
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(shape=factor(cyl),color=factor(cyl)),size=4,alpha=0.6)
#
# Gradient Scales
pl + geom_point(aes(colour = hp),size=4) + scale_colour_gradient(high='red',low = "blue")
#
