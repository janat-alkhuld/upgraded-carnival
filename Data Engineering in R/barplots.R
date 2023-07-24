# counts (or sums of weights)
g <- ggplot(mpg, aes(class))
# Number of cars in each class:
g + geom_bar()
#
# Bar charts are automatically stacked when multiple bars are placed
# at the same location
g + geom_bar(aes(fill = drv))
#
g + geom_bar(aes(fill = drv), position = "fill")
#
# You can instead dodge, or fill them
g + geom_bar(aes(fill = drv), position = "dodge")
#
