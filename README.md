
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
The required packages need to be instaled: dplyr, plyr, reshape2.

**Observations about the script:**  
The script is commented to easy understand, in the final is created a file: datatidy.txt with the tidy data.
I used only the variables containing "mean()" and std(), because i think this is the more useful data.
I used the option for the long form. (but if you want, ommiting the line 62, will get the wide form data)  
The data meets the tidy data principles from http://vita.had.co.nz/papers/tidy-data.pdf.

**What the script do?**  
1. Load the train data files X_train.txt, y_train.txt, subject_train.txt  
2. Load the test data files X_test.txt, y_test.txt, subject_test.txt  
3. Load the labels from the files features.txt and activity_labels.txt  
4. Combine the data from features to name the columns in x_train and x_test  
5. Name the columns of y_test, y_train, subject_train, subject_test
6. Combine x_train, y_train, subject_train  
7. Combine x_test, y_test, subject_test  
8. Combine train and test to the same data frame  
9. Change the ids from activity column to the labels in features.txt  
10. Select only the data with column names containing: "mean()" and "std()"  
11. Rename the variables for more easy understand. I exclude the () and change - per _  
12. Created a independent tidy dataset (datatidy), grouped by "subject"and "activity"  
13. Save the tidy data to file "datatidy.txt"  

**To read the file in R:**  
`read.table(file = "datatidy.txt", header = TRUE)` (i think is best store this using `datatidy <-` )  
The data is in the coursera Peer Assessments to evaluate.  

Code Book
-------------------
The CodeBook.md file in this repository explains the transformations in the data and the resulting data variables.  
See more there to understand the variable names and other specifications.
