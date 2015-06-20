# Getting and Cleaning Data (Course Project)

Coursera Course: Getting and Clearning Data
Time: Jun 5 - Jun 29 2015

This repository contains the necessary files for the project.
The data used is from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Files
1. run_analysis.R
* Used to process the raw data and convert into final output
2. README.md
* This file, the introduction mark down file
3. CodeBook.md
* A file that describe the variables, the data and any transformation performed to clean up the data
4. averages.txt
* The final output file
5. Other files
* Raw data downloaded from the above link 

## How the script works
The run_analysis.R script will read in data from the folder "train" and "test", files "activity_labels" and "features".
Since the files in folder "train" and "test" only contains raw data without description, and we are not interested in some information, we will add the column names for the data and remove some not interested items.
Data will then be put into a data frame and calculate the column means, grouped by subject and activity.
The final output will be exported into a text file called "averages.txt"