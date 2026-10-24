data(mtcars)
plot(mtcars$mpg, type="l", col="blue",
     xlab="Car Index", ylab="Value",
     main="MPG and QSEC",
     ylim=range(c(mtcars$mpg,mtcars$qsec)))
lines(mtcars$qsec, col="red")
legend("topright", legend=c("MPG","QSEC"),
       col=c("blue","red"), lty=1)
