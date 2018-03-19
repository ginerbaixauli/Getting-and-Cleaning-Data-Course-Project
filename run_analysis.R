# Loads dplyr package
library(dplyr)

# Downloads file if it hasn't already been downloaded
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "UCI HAR Dataset.zip"

if (!file.exists(file)) {
  download.file(url, file, mode = "wb")
}

# Unzips zip file if directory doesn't already exist
filename <- "UCI HAR Dataset"
if (!file.exists(filename)) {
  unzip(file)
}

# Reads training data
train_subject <- read.table(file.path(filename, "train", "subject_train.txt"))
train_value <- read.table(file.path(filename, "train", "X_train.txt"))
train_activity <- read.table(file.path(filename, "train", "y_train.txt"))

# Reads test data
test_subject <- read.table(file.path(filename, "test", "subject_test.txt"))
test_value <- read.table(file.path(filename, "test", "X_test.txt"))
test_activity <- read.table(file.path(filename, "test", "y_test.txt"))

# Reads features
features <- read.table(file.path(filename, "features.txt"), as.is = TRUE)

# Reads activity labels
activities <- read.table(file.path(filename, "activity_labels.txt"))
colnames(activities) <- c("activity_name", "activity_label")


# Merges training and test data sets

activity <- rbind(
  cbind(train_subject, train_value, train_activity),
  cbind(test_subject, test_value, test_activity)
)

# Removes previous data tables
rm(train_subject, train_value, train_activity, 
   test_subject, test_value, test_activity)

# Sets column names
colnames(activity) <- c("subject", features[, 2], "activity")


# Gets only the columns of subject, activity, mean and standard deviation
final_columns <- grepl("subject|activity|mean|std", colnames(activity))
activity <- activity[, final_columns]


# Replaces activity values with activity names
activity$activity <- factor(activity$activity, 
                                 levels = activities[, 1], labels = activities[, 2])


# Labels data set with descriptive variable names, removes special characters,
# makes names more readable and corrects a duplicated word
activity_columns <- colnames(activity)
activity_columns <- gsub("[\\(\\)-]", "", activity_columns)
activity_columns <- gsub("^f", "frequencyDomain", activity_columns)
activity_columns <- gsub("^t", "timeDomain", activity_columns)
activity_columns <- gsub("Acc", "Accelerometer", activity_columns)
activity_columns <- gsub("Gyro", "Gyroscope", activity_columns)
activity_columns <- gsub("Mag", "Magnitude", activity_columns)
activity_columns <- gsub("Freq", "Frequency", activity_columns)
activity_columns <- gsub("mean", "Mean", activity_columns)
activity_columns <- gsub("std", "StandardDeviation", activity_columns)
activity_columns <- gsub("BodyBody", "Body", activity_columns)

# Updates column names in the data set
colnames(activity) <- activity_columns


# Creates a new tidy set with the average of the variables for each
# activity and subject
activity_average <- activity %>% 
  group_by(subject, activity) %>%
  summarize_each(funs(mean))

# Saves the result as "average.txt"
write.table(activity_average, "average.txt", row.names = FALSE, 
            quote = FALSE)