
Getting and Cleaning Data Course Project
=====================================

Intro:
------------
This repository contains my work for the course project for the Coursera course "Getting and Cleaning data".

Objective:
-----------
Create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

About the raw data
------------------
The data is here:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

About the script and the final tidy dataset
-------------------------------------
The script run_analysis.R will do the steps on the objective seassion above.

**Prerequisites:**  
The UCI HAR Dataset must be extractedin a directory named "UCI HAR Dataset"
The required packages need to be instaled: dplyr, plyr, data.table, reshape2.

**Observations about the script:**  
The script is commented to easy understand, in the final is created a file: datatidy.txt with the tidy data.
I used only the variables containing "mean()" and std(), because i think this is the more useful data.
I used the option for the long form. (but if you want, ommiting the line 74, will get the wide form data)

**To read the file in R:**  
`read.table(file = "datatidy.txt", header = TRUE)`
The file can be found in this repository too.

Code Book
-------------------
The CodeBook.md file in this repository explains the transformations in the data and the resulting data variables.
