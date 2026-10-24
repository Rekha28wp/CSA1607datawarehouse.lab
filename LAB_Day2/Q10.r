diabetes <- read.csv("diabetes.csv")

plot(diabetes$Age, diabetes$BloodPressure,
     xlab="Age", ylab="Blood Pressure",
     main="Blood Pressure vs Age",
     pch=19, col="blue")

age_group <- cut(diabetes$Age,
                 breaks=c(0,20,30,40,50,60,100),
                 include.lowest=TRUE)

avg_bp <- aggregate(BloodPressure ~ age_group,
                    data=diabetes, FUN=mean, na.rm=TRUE)

barplot(avg_bp$BloodPressure,
        names.arg=avg_bp$age_group,
        xlab="Age Group", ylab="Average Blood Pressure",
        main="Average Blood Pressure by Age",
        col="skyblue")
