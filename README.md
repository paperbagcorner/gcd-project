# Project for the course Getting and Cleaning Data

This is the project for the Getting and Cleaning Data course.

The script takes raw data from the UCI HAR dataset [1]. Then it does the following:

1. Merges the training and test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Usage
1. Make sure that you have downloaded and extracted the UCI HAR dataset to the current working directory. If not, you can run the helper script `downloadandunzip.R` which will do this for you.

2. Run the main script `run_analysis.R.` It will write a tidy dataset to the file `averages.txt,` as well as leave it in the variable `averages` in your current R session.

## Requirements
* [dplyr](https://github.com/hadley/dplyr)

## References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
