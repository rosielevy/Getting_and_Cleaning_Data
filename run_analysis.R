## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

if (!require("data.table")) {
      install.packages("data.table")
}

if (!require("reshape2")) {
      install.packages("reshape2")
}

require("data.table")
require("reshape2")


filename <- "getdata_dataset.zip"

#download and unzip data if not already present
if (!file.exists(filename)){
      fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
      download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
      unzip(filename) 
}


#load activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

#load column names
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

#function to extract mean and SD
extract_measures <- grepl("mean|std", features)

#load test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#give feature names to x test data
names(X_test) <- features

#extract mean and SD
X_test <- X_test[,extract_measures]

#apply activity labels
y_test[,2] <- activity_labels[y_test[,1]]
names(y_test) <- c("Activity ID", "Activity_Label")
names(subject_test) <- "subject"

#bind test data sets
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

#load training data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(X_train) <- features

#extract mean and SD
X_train = X_train[,extract_measures]

#apply activity labels
y_train[,2] <- activity_labels[y_train[,1]]
names(y_train) <- c("Activity ID", "Activity_Label")
names(subject_train) <- "subject"

#bind training data sets
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

#merge test and training data sets and rename variables with more descriptive names
data = rbind(test_data, train_data)

names(data) <- gsub("-", "", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("^f", "Frequency", names(data))
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("mean\\(\\)", "Mean", names(data))
names(data) <- gsub("std\\(\\)", "StdDev", names(data))


id_labels <- c("subject", "Activity ID", "Activity_Label")
data_labels <- setdiff(colnames(data), id_labels)
melt_data <- melt(data, id = id_labels, measure.vars = data_labels)


#apply mean to data to form final tidy data set
tidy_data = dcast(melt_data, subject + Activity_Label ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt")