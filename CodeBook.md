# Code Book for Getting and Cleaning Data Assignment

This code book accompanies the `tidy_data.txt` file that is produced as output from the `run_analysis.R` script.

## Overview of Experiment and Data Set

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. They performed a protocol of activities composed of six basic activities: three static postures (standing, sitting, lying) and three dynamic activities (walking, walking downstairs and walking upstairs). All the participants were wearing a smartphone (Samsung Galaxy S II) on the waist during the experiment execution. Scientists captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided is:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label (`Activity_Label`). 
* An identifier of the subject who carried out the experiment (`subject`).

Acceleration measurements are in standard gravitional units, *g*.

Body acceleration measurements are obtained by subtracting the gravity from the total acceleration, also in *g*.

Gyroscope velocity measurements are in *radians/second*.

## ID Fields
* `subject` - ID number of test subject (possible values are 1-30)
* `Activity_Label` - activity performed when data was obtained

## Activities
* `WALKING` - subject was walking when data was collected
* `WALKING_UPSTAIRS` - subject was walking upstairs when data was collected
* `WALKING_DOWNSTAIRS` - subject was walking downstairs when data was collected
* `SITTING` - subject was sitting when data was collected
* `STANDING` - subject was standing when data was collected
* `LAYING` - subject was laying down when data was collected

## Measurement Variables

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
