Codebook
================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Result Datasets
--------------
`clean_data.csv` contains mean values and standard deviations for all signals from original data set. 
`clean_summary.csv` contains average values for all values grouped by activity and subject

#### Structure

* **subject** -- identifier for a person
* **activity** -- activity label. Possible values:
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING
* Mean values for sensor signals, normalized to range [-1,1]
    * tBodyAccMeanX
    * tBodyAccMeanY
    * tBodyAccMeanZ
    * tGravityAccMeanX
    * tGravityAccMeanY
    * tGravityAccMeanZ
    * tBodyAccJerkMeanX
    * tBodyAccJerkMeanY
    * tBodyAccJerkMeanZ
    * tBodyGyroMeanX
    * tBodyGyroMeanY
    * tBodyGyroMeanZ
    * tBodyGyroJerkMeanX
    * tBodyGyroJerkMeanY
    * tBodyGyroJerkMeanZ
    * tBodyAccMagMean
    * tGravityAccMagMean
    * tBodyAccJerkMagMean
    * tBodyGyroMagMean
    * tBodyGyroJerkMagMean
    * fBodyAccMeanX
    * fBodyAccMeanY
    * fBodyAccMeanZ
    * fBodyAccJerkMeanX
    * fBodyAccJerkMeanY
    * fBodyAccJerkMeanZ
    * fBodyGyroMeanX
    * fBodyGyroMeanY
    * fBodyGyroMeanZ
    * fBodyAccMagMean
    * fBodyBodyAccJerkMagMean
    * fBodyBodyGyroMagMean
    * fBodyBodyGyroJerkMagMean
* Standard deviation for sensor signals, normalized to range [-1,1]
    * tBodyAccStdX
    * tBodyAccStdY
    * tBodyAccStdZ
    * tGravityAccStdX
    * tGravityAccStdY
    * tGravityAccStdZ
    * tBodyAccJerkStdX
    * tBodyAccJerkStdY
    * tBodyAccJerkStdZ
    * tBodyGyroStdX
    * tBodyGyroStdY
    * tBodyGyroStdZ
    * tBodyGyroJerkStdX
    * tBodyGyroJerkStdY
    * tBodyGyroJerkStdZ
    * tBodyAccMagStd
    * tGravityAccMagStd
    * tBodyAccJerkMagStd
    * tBodyGyroMagStd
    * tBodyGyroJerkMagStd
    * fBodyAccStdX
    * fBodyAccStdY
    * fBodyAccStdZ
    * fBodyAccJerkStdX
    * fBodyAccJerkStdY
    * fBodyAccJerkStdZ
    * fBodyGyroStdX
    * fBodyGyroStdY
    * fBodyGyroStdZ
    * fBodyAccMagStd
    * fBodyBodyAccJerkMagStd
    * fBodyBodyGyroMagStd
    * fBodyBodyGyroJerkMagStd
    
References
--------------
* [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* [Original Dataset (zip)](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)