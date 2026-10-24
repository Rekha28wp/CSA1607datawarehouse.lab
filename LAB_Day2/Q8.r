data(mtcars)
boxplot(mpg ~ factor(cyl), data=mtcars,
        xlab="Number of Cylinders",
        ylab="Miles per Gallon",
        main="MPG by Cylinders",
        col="skyblue")
