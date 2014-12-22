# Course Project of 'Getting and Cleaning Data' on Cousera

## Introduction

In this project, we wrote a R script named run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Get Started

Step 1. Download the data source from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, unzip it and ensure `UCI HAR Dataset` directory is in the same place with `run_analysis.R`. 

example:

    Working Directory/
        +-- run_analysis.R
        +-- UCI HAR Dataset/
                +-- activity_labels.txt
                +-- features.txt
                +-- test/
                |       +-- subject_test.txt
                |       +-- X_test.txt
                |       +-- y_test.txt
                +-- train/
                        +-- subject_train.txt
                        +-- X_train.txt
                        +-- y_train.txt

Step 2. Run `source("run_analysis.R")` in R Studio, and it will generate a new file `tiny_dataset.txt` within around 1 minute.

## Reference

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/
