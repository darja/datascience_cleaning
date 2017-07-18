Getting and Cleaning Data Course Project
================

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Contents
--------------

* `run_analysis.R` - R script for data cleaning
* `clean_data.csv` - result file with clean data

Dataset
--------------
Original data set should be [downloaded](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipped

Usage
---------------
```R
# path should ends on /
path <- "your/dataset/folder/" 

# function for creating clean data set and write it to clean_data.csv
data <- cleanData(path) 

# function for creating data set with the average of each variable for each activity and each subject
computeMeans(data) 
```