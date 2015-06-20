library(dplyr)

# Step 1
# Merges the training and the test sets to create one data set
# ----------------------------------------------------

# Create data set
x <- rbind(read.table("train/X_train.txt"), read.table("test/X_test.txt"))
y <- rbind(read.table("train/y_train.txt"), read.table("test/y_test.txt"))
s <- rbind(read.table("train/subject_train.txt"), read.table("test/subject_test.txt"))

# Step 2
# Extracts only the measurements on the mean and standard deviation for each measurement.
# ----------------------------------------------------

f <- read.table("features.txt")

# Using grepl and regular expression to get the rows
r <- grepl("-(mean|std)\\(\\)", f[, 2])
x <- x[r]

# Step 3
# Uses descriptive activity names to name the activities in the data set
# ----------------------------------------------------

# Read in the activity names and feed into y data set
a<- read.table("activity_labels.txt")
y[, 1] <- a[y[, 1], 2]

# Step 4
# Appropriately labels the data set with descriptive variable names. 
# ----------------------------------------------------

# Assign names to column
names(x) <- f[r,2]
names(y) <- "Activity"
names(s) <- "Subject"

# Create data frame
data <- data.frame(x, y, s)

# Step 5
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# ----------------------------------------------------

# Calculate the column means
avg <- ddply(data, .(Subject, Activity), function(x) colMeans(x[, 1:66]))

# Export result
write.table(avg, "averages.txt", row.name=FALSE)
