# Marks obtained by student
marks <- c(55,60,71,63,55,65,50,55,58,
           59,61,63,65,67,71,72,75)

# Sort the data
marks <- sort(marks)

cat("Sorted Marks:\n")
print(marks)

# (a) Equal-Frequency (Equal-Depth) Partitioning
bins_equal_freq <- split(marks,
                         cut(seq_along(marks),
                             breaks = 3,
                             labels = FALSE))

cat("\nEqual-Frequency Partitioning:\n")
print(bins_equal_freq)

# (b) Equal-Width Partitioning
bins_equal_width <- cut(marks,
                        breaks = 3,
                        include.lowest = TRUE)

cat("\nEqual-Width Partitioning:\n")
print(split(marks, bins_equal_width))

# Histogram
hist(marks,
     breaks = 3,
     main = "Histogram of Student Marks",
     xlab = "Marks",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")