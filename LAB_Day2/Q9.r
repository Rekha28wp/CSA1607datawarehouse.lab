points <- c(12,15,18,20,22,24,25,27,30,65)

boxplot(points,
        main="Tennis Players' Points",
        ylab="Points Scored",
        col="lightgreen",
        horizontal=TRUE)

boxplot.stats(points)$out
