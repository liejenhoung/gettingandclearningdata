# Code Book

The file will explain how the script works in detail.

## How the script works

Script: "run_analysis.R"
Basically divided into 5 steps according to requirements:

1. Merges the training and the test sets to create one data set
* From line 3 to 11 - get the data using read.table and name them "x,y,s"
2. Extracts only the measurements on the mean and standard deviation for each measurement
* From line 12 to 21 - get the features and using grepl function and regulation expresion to get interested item
3. Uses descriptive activity names to name the activities in the data set
* From line 22 to 29 - get the activity labels and naming y
4. Appropriately labels the data set with descriptive variable names
* From line 30 to 41 - assign names to column and create data frame
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* From line 42 to 51 - using ddply from dply library and get the column means grouped by subject and activity

## Variables

* x - merged test and train data (predictors)
* y - merged test and train data (result)
* s - merged test and train data (subject)
* f - features / column names of x
* r - interested row subsetted by "grepl"
* a - descriptive label for y
* data - merged data frame from x,y,s
* avg - average column means calculated by ddply on data