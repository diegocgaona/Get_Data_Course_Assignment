Codebook for datatidy.txt
=========================

About the RAW data
------------------
The raw data (UCI HAR Dataset) used is from the experiments with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

The original files are in: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
More explanation about the raw data in: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

About the tidy data
-------------------
To get the tidy data, the raw data passed for the some transformations:  
To make the tidy data, i ignored the "/Inertial Signals/" folders.  
I ignored the "MeanFreq" data, only using the "mean()" and "std()" data.  
The data are in longform format, i think this is better for understood.  
The tidy data is grouped by subject and activity, and have the means of the values collected by the sensors.  
The data meets the tidy data principles from http://vita.had.co.nz/papers/tidy-data.pdf.  
More info commented in the: "run_analysis.R" file in https://github.com/diegocgaona/Get_Data_Course_Assignment , and the README.md file.  

About the variables:
--------------------
**Column: subject**  
*An identifier of the subject who carried out the experiment*  
Storage mode: integer  
Measurement: subjects ids  
     Min:   1  
     Max:  30  

**Column: activity**  
*The activity labels*  
Storage mode: character  
Measurement: nominal  

6 Labels:

    LAYING  
    SITTING  
    STANDING  
    WALKING  
    WALKING_DOWNSTAIRS  

**Column: variable**  
*Mean and std variable names from the sensors*  
Storage mode: character  
Measurement: nominal  
**Labels:**  

    1	'tBodyAcc_Mean_X'
    2	'tBodyAcc_Mean_Y'  
    3	'tBodyAcc_Mean_Z'  
    4	'tBodyAcc_std_X'  
    5	'tBodyAcc_std_Y'  
    6	'tBodyAcc_std_Z'  
    7	'tGravityAcc_Mean_X'  
    8	'tGravityAcc_Mean_Y'  
    9	'tGravityAcc_Mean_Z'  
    10	'tGravityAcc_std_X'  
    11	'tGravityAcc_std_Y'  
    12	'tGravityAcc_std_Z'  
    13	'tBodyAccJerk_Mean_X'  
    14	'tBodyAccJerk_Mean_Y'  
    15	'tBodyAccJerk_Mean_Z'  
    16	'tBodyAccJerk_std_X'  
    17	'tBodyAccJerk_std_Y'  
    18	'tBodyAccJerk_std_Z'  
    19	'tBodyGyro_Mean_X'  
    20	'tBodyGyro_Mean_Y'  
    21	'tBodyGyro_Mean_Z'  
    22	'tBodyGyro_std_X'  
    23	'tBodyGyro_std_Y'  
    24	'tBodyGyro_std_Z'  
    25	'tBodyGyroJerk_Mean_X'  
    26	'tBodyGyroJerk_Mean_Y'  
    27	'tBodyGyroJerk_Mean_Z'  
    28	'tBodyGyroJerk_std_X'  
    29	'tBodyGyroJerk_std_Y'  
    30	'tBodyGyroJerk_std_Z'  
    31	'tBodyAccMag_Mean'  
    32	'tBodyAccMag_std'  
    33	'tGravityAccMag_Mean'  
    34	'tGravityAccMag_std'  
    35	'tBodyAccJerkMag_Mean'  
    36	'tBodyAccJerkMag_std'  
    37	'tBodyGyroMag_Mean'  
    38	'tBodyGyroMag_std'  
    39	'tBodyGyroJerkMag_Mean'  
    40	'tBodyGyroJerkMag_std'  
    41	'fBodyAcc_Mean_X'  
    42	'fBodyAcc_Mean_Y'  
    43	'fBodyAcc_Mean_Z'  
    44	'fBodyAcc_std_X'  
    45	'fBodyAcc_std_Y'  
    46	'fBodyAcc_std_Z'  
    47	'fBodyAccJerk_Mean_X'  
    48	'fBodyAccJerk_Mean_Y'  
    49	'fBodyAccJerk_Mean_Z'  
    50	'fBodyAccJerk_std_X'  
    51	'fBodyAccJerk_std_Y'  
    52	'fBodyAccJerk_std_Z'  
    53	'fBodyGyro_Mean_X'  
    54	'fBodyGyro_Mean_Y'  
    55	'fBodyGyro_Mean_Z'  
    56	'fBodyGyro_std_X'  
    57	'fBodyGyro_std_Y'  
    58	'fBodyGyro_std_Z'  
    59	'fBodyAccMag_Mean'  
    60	'fBodyAccMag_std'  
    61	'fBodyBodyAccJerkMag_Mean'  
    62	'fBodyBodyAccJerkMag_std'  
    63	'fBodyBodyGyroMag_Mean'  
    64	'fBodyBodyGyroMag_std'  
    65	'fBodyBodyGyroJerkMag_Mean'  
    66	'fBodyBodyGyroJerkMag_std'  

**Column: value**  
*The data from the sensors*  
Storage mode: numeric  
Unit: Measurements

___________________________________________________________________________________________________
**More info in README.md**
