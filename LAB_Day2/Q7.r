library(MASS)
data(water)

plot(water$hardness, water$mortality,
     xlab="Hardness", ylab="Mortality",
     main="Hardness vs Mortality", pch=19)

model <- lm(mortality ~ hardness, data=water)
abline(model, col="red")

print(summary(model))
print(predict(model, newdata=data.frame(hardness=88)))
