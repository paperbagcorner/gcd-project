# Project description
This project merges the training and test data sets, extracts the measurements of the on the mean and standard deviation for each measurments and computes the averages of these for each subject and each activity.

# Study design and data processing

## Collection of the raw data
The raw data which belongs to the [UCI HAR dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Processing of the data
* The training and test sets are merged to create one data set. 
* From this set the measurements on the mean and standard deviation for each measurement are extracted. 
* The average of each mesurement for each subject and each activity is then computed and included in the tidy data set..

The output consists of 180 observations of 81 variables.

# Code book
* subject - An integer from 1 to 30 which indicates the subject.

* activity - The activitiy in question. Takes the values "LAYING" "SITTING" "STANDING" "WALKING" "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS"

### Averaged data
The following variables are averages for each subject and activity of the mean (name contains mean) and standard deviation (name contains std) of the corresponding variable in the raw data set. The variables are normalised on the interval [-1, 1].

* subject
* activity
* tBodyAcc.mean.X
* tBodyAcc.mean.Y
* tBodyAcc.mean.Z
* tBodyAcc.std.X
* tBodyAcc.std.Y
* tBodyAcc.std.Z
* tGravityAcc.mean.X
* tGravityAcc.mean.Y
* tGravityAcc.mean.Z
* tGravityAcc.std.X
* tGravityAcc.std.Y
* tGravityAcc.std.Z
* tBodyAccJerk.mean.X
* tBodyAccJerk.mean.Y
* tBodyAccJerk.mean.Z
* tBodyAccJerk.std.X
* tBodyAccJerk.std.Y
* tBodyAccJerk.std.Z
* tBodyGyro.mean.X
* tBodyGyro.mean.Y
* tBodyGyro.mean.Z
* tBodyGyro.std.X
* tBodyGyro.std.Y
* tBodyGyro.std.Z
* tBodyGyroJerk.mean.X
* tBodyGyroJerk.mean.Y
* tBodyGyroJerk.mean.Z
* tBodyGyroJerk.std.X
* tBodyGyroJerk.std.Y
* tBodyGyroJerk.std.Z
* tBodyAccMag.mean
* tBodyAccMag.std
* tGravityAccMag.mean
* tGravityAccMag.std
* tBodyAccJerkMag.mean
* tBodyAccJerkMag.std
* tBodyGyroMag.mean
* tBodyGyroMag.std
* tBodyGyroJerkMag.mean
* tBodyGyroJerkMag.std
* fBodyAcc.mean.X
* fBodyAcc.mean.Y
* fBodyAcc.mean.Z
* fBodyAcc.std.X
* fBodyAcc.std.Y
* fBodyAcc.std.Z
* fBodyAcc.meanFreq.X
* fBodyAcc.meanFreq.Y
* fBodyAcc.meanFreq.Z
* fBodyAccJerk.mean.X
* fBodyAccJerk.mean.Y
* fBodyAccJerk.mean.Z
* fBodyAccJerk.std.X
* fBodyAccJerk.std.Y
* fBodyAccJerk.std.Z
* fBodyAccJerk.meanFreq.X
* fBodyAccJerk.meanFreq.Y
* fBodyAccJerk.meanFreq.Z
* fBodyGyro.mean.X
* fBodyGyro.mean.Y
* fBodyGyro.mean.Z
* fBodyGyro.std.X
* fBodyGyro.std.Y
* fBodyGyro.std.Z
* fBodyGyro.meanFreq.X
* fBodyGyro.meanFreq.Y
* fBodyGyro.meanFreq.Z
* fBodyAccMag.mean
* fBodyAccMag.std
* fBodyAccMag.meanFreq
* fBodyBodyAccJerkMag.mean
* fBodyBodyAccJerkMag.std
* fBodyBodyAccJerkMag.meanFreq
* fBodyBodyGyroMag.mean
* fBodyBodyGyroMag.std
* fBodyBodyGyroMag.meanFreq
* fBodyBodyGyroJerkMag.mean
* fBodyBodyGyroJerkMag.std
* fBodyBodyGyroJerkMag.meanFreq

