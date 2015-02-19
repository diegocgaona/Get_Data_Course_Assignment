## run_analysis.R
## The script do the following with data from the sensor of a Samsung Galaxy S2:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the 
##    average of each variable for each activity and each subject.


## Check if the necessary librarys are loaded, if not, require load it
require(dplyr)
require(plyr)
require(data.table)
require(reshape2)

## Load the train data files
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, nrows = 7352)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, nrows = 7352)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, nrows = 7352)

## Load the test data files
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, nrows = 2947)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, nrows = 2947)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, nrows = 2947)

## Load the labels from the files
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, nrows = 561)
actlabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, nrows = 6)

## Use the data from features to name the columns in x_train and x_test
features <- as.vector(features[,2]) ## Transform the column with names into a vector
names(x_train) <- features ## Use the vector features to name the columns of x_train
names(x_test) <- features ## Use the vector features to name the columns of x_test

## Name the columns for y_test, x_test, subject_train, subject_test
colnames(y_train) <- "activity"
colnames(y_test) <- "activity"
colnames(subject_train) <- "subject"
colnames(subject_test) <- "subject"

## Combine x_train, y_train, subject_train
train <- cbind(c(subject_train, y_train), x_train, deparse.level = 1)

## Combine x_test, y_test, subject_test
test <- cbind(c(subject_test, y_test), x_test, deparse.level = 1)

## Combine train and test to the same data frame
datacomb <- rbind(train, test)

## Change the ids from activity column to the labels in actlabels
datacomb[,2] <- as.character(datacomb[,2]) ## Transform the column 2 in char
actlabels <- as.vector(actlabels[,2]) ## Transform to vector the column with activity labels
datacomb$activity[datacomb$activity == "1"] <- actlabels[1] ## Change the activiy number for the activity label
datacomb$activity[datacomb$activity == "2"] <- actlabels[2]
datacomb$activity[datacomb$activity == "3"] <- actlabels[3]
datacomb$activity[datacomb$activity == "4"] <- actlabels[4]
datacomb$activity[datacomb$activity == "5"] <- actlabels[5]
datacomb$activity[datacomb$activity == "6"] <- actlabels[6]

## Select only the data with mean() and std()
datacomb <- datacomb[ , grep("mean\\(\\)|std\\(\\)|subject|activity", colnames(datacomb))]

## Rename the variables. I exclude the () and change - per _
names(datacomb) <- gsub("\\(\\)","", x = colnames(datacomb))
names(datacomb) <- gsub("mean","Mean", x = colnames(datacomb))
names(datacomb) <- gsub("-","_", x = colnames(datacomb))

## Create a independent tidy dataset, grouped by "subject"and "activity"
datatidy <- datacomb ## Separate the data to be tidy
datatidy %>% 
      ddply(c("subject","activity"), colwise(mean)) %>% ## Group and summarise the data
      melt(id=c("subject","activity")) %>% ## Change the wide form to long form
      ## Save the tidy data to file
      write.table(file = "datatidy.txt", row.names = FALSE) ## Write the file with tidy data