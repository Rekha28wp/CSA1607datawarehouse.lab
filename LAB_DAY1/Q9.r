marks <- c(55, 60, 71, 63, 55, 65, 50, 55,58, 59, 61, 63, 65, 67, 71, 72, 75)
num_bins <- 3
sorted_marks <- sort(marks)
bin_id <- ceiling(seq_along(sorted_marks) * num_bins / length(sorted_marks))
print(split(sorted_marks, bin_id))
width_bins <- cut(marks, breaks = num_bins, include.lowest = TRUE)
print(split(marks, width_bins))
hist(marks, breaks = 3, col = "lightblue",
     main = "Equal-Width Partitioning", xlab = "Marks")
