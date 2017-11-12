#Code Book for Getting and Cleaning Data Assignment

This code book accompanies the `tidy_data.txt` file that is produced as output from the `run_analysis.R` script.

##ID Fields
* `subject` - ID number of test subject (possible values are 1-30)
* `Activity_Label` - activity performed when data was obtained

##Activities
* `WALKING` - subject was walking when data was collected
* `WALKING_UPSTAIRS` - subject was walking upstairs when data was collected
* `WALKING_DOWNSTAIRS` - subject was walking downstairs when data was collected
* `SITTING` - subject was sitting when data was collected
* `STANDING` - subject was standing when data was collected
* `LAYING` - subject was laying down when data was collected

##Measurement Variables

The final tidy data set contains **means** of all the below variables. Many variables were recorded over three axes.

* `TimeBodyAcc...` - Time domain body acceleration mean/standard deviation along X, Y, and Z
* `TimeGravityAcc...` - Time domain gravity acceleration mean/standard deviation along X, Y, and Z
* `TimeBodyAccJerk...` - Time domain body jerk mean/standard deviation along X, Y, and Z
* `TimeBodyGyro...` - Time domain gyroscope mean/standard deviation along X, Y, and Z
* `TimeBodyGyroJerk...` - Time domain gyroscope jerk mean/standard deviation along X, Y and Z
* `TimeBodyAccMag...` - Time domain body acceleration magnitude mean/standard deviation
* `TimeGravityAccMag...` - Time domain gravity acceleration magnitude mean/standard deviation
* `TimeBodyAccJerkMag...` - Time domain body acceleration jerk magnitude mean/standard deviation
* `TimeBodyGyroMag...` - Time domain body gyroscope magnitude mean/standard deviation
* `TimeBodyGyroJerk...` - Time domain body gyroscope jerk mean/standard deviation
* `FrequencyBodyAcc...` - Frequency domain body acceleration mean/standard deviation along X, Y and Z
* `FrequencyBodyAccJerk...` - Frequency domain body acceleration jerk mean/standard deviation along X, Y and Z
* `FrequencyBodyGyro...` - Frequency domain gyroscope mean/standard deviation along X, Y, and Z
* `FrequencyBodyGyroJerk...` - Frequency domain gyroscope jerk mean/standard deviation along X, Y and Z
* `FrequencyBodyAccMag...` - Frequency domain body acceleration magnitude mean/standard deviation
* `FrequencyGravityAccMag...` - Frequency domain gravity acceleration magnitude mean/standard deviation
* `FrequencyBodyAccJerkMag...` - Frequency domain body acceleration jerk magnitude mean/standard deviation
* `FrequencyBodyGyroMag...` - Frequency domain body gyroscope magnitude mean/standard deviation
* `FrequencyBodyGyroJerk...` - Frequency domain body gyroscope jerk mean/standard deviation
