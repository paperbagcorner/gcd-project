# This script does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement.
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
# The data set created in step 5 is written to the file 'averages.txt' in the
# current working directory.

# To run this script successfully, you'll need a copy of the UCI HAR dataset in
# the current directory. This can be downloaded an extracted with the script
# downloadandunzip.R.

require(dplyr)

# Get the files
directory.train = paste("UCI HAR Dataset", "train",
                        sep = .Platform$file.sep)
subjects.train.filename = paste(directory.train, "subject_train.txt",
                                sep = .Platform$file.sep)
activities.train.filename = paste(directory.train, "y_train.txt",
                                  sep = .Platform$file.sep)
observations.train.filename = paste(directory.train, "X_train.txt",
                                    sep = .Platform$file.sep)

directory.test = paste("UCI HAR Dataset", "test",
                       sep = .Platform$file.sep)
subjects.test.filename = paste(directory.test, "subject_test.txt",
                               sep = .Platform$file.sep)
activities.test.filename = paste(directory.test, "y_test.txt",
                                  sep = .Platform$file.sep)
observations.test.filename = paste(directory.test, "X_test.txt",
                                    sep = .Platform$file.sep)

# Load the individual files into R.
subjects.train <- read.table(subjects.train.filename, col.names = "subject")
activites.train <- read.table(activities.train.filename, col.names = "activity")
observations.train <- read.table(observations.train.filename)
train = data.frame(subject = subjects.train, activity = activites.train,
                   observations = observations.train)

subjects.test <- read.table(subjects.test.filename, col.names = "subject")
activites.test <- read.table(activities.test.filename, col.names = "activity")
observations.test <- read.table(observations.test.filename)
test = data.frame(subject = subjects.test, activity = activites.test,
                   observations = observations.test)

# 1. Merge the training and the test sets to create one data set.
merged.dataset <- rbind(train, test)

# 2. Extract only the measurements on the mean and standard deviation for each
#    measurement.
features.filename = paste("UCI HAR Dataset", "features.txt",
                          sep = .Platform$file.sep)
features <- read.table(features.filename, stringsAsFactors = FALSE)
mean.and.std.column.numbers <- grep('(-mean|-std)', features[, 2])
# We need to add 2 the column numbers because of the extra subject and
# activity columns in the merged dataset.
mean.and.std.column.numbers <- mean.and.std.column.numbers + 2

# Subset the data frame.
mean.and.std.dataset <- merged.dataset[, c(1:2, mean.and.std.column.numbers)]

# 3. Use descriptive activity names to name the activities in the data set
labels.filename <- paste('UCI HAR Dataset', "activity_labels.txt",
                         sep = .Platform$file.sep)
labels <- read.table(labels.filename, stringsAsFactors = FALSE)
mean.and.std.dataset$activity <- factor(mean.and.std.dataset$activity,
                                        levels = labels[, 1],
                                        labels = labels[, 2])

# 4. Label the data set with descriptive variable names
observation.names <- features[mean.and.std.column.numbers - 2, 2]
observation.names <- gsub('\\(|\\)', '', observation.names)
observation.names <- make.names(observation.names, unique = TRUE)
names(mean.and.std.dataset) <- c("subject", "activity", observation.names)

# 5. From the data set in step 4, create a second independent tidy data set
#    with the average of each variable for each activity and each subject.
#    We can use summarise_each from dplyr for this.
averages <- summarize_each(group_by(mean.and.std.dataset, subject, activity),
                           funs(mean))

# Write the tidy dataset to a file according to the instructions.
write.table(averages, file = "averages.txt", row.names = FALSE)
