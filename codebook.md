# Codebook

## Name: tidy_data

## Original Data Information:  
### Location:
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
### Date Downloaded:  
"Sun Dec 20 ??20:20:36 2015"
### Data Description:  
"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

## Transformations made to the data.
- Read in all data files (8 total) separately. See README.md for more information on input data files.
- Edited the features file information, which consists of variables (aka column names), to make the column names unique by adding a "." separator when necessary and made them meet R standards by removing "()" and replacing "-" with "_".
- Applied the new unique variable names to the tables extracted from the x_train and x_test data files.
- Applied the variable name "subject" to the tables extracted from the subject_train and subject_test data files.
- Sorted through and matched the activity labels from 'activity.txt' to the corresponding IDs in the 'y_test.txt' and 'x_test.txt' data files.
- Created a table for all the training information from the labeled tables created from 'subject_train.txt', 'x_train.txt', and 'y_train.txt' files. Dimensions are 7352 rows x 564 cols.
- Created a table for all the test information from the labeled tables created from 'subject_test.txt', 'x_test.txt', and 'y_test.txt' files. Dimensions are 2947 rows x 564 cols.
- Combined the two tables, train and test, to create a data set with all the information. Dimensions of full data set are 10299 rows x 564 cols.
- Created a reduced data set with only the subject, activity names, means, and standard deviations (std). Dimensions are 10299 rows x 81 columns.
- Created a final data set with the average of each variable for each activity done by each subject.  Dimensions of the final data set are 180 rows by 81 columns.
- Created a table with the final data set in the original data folder, specified in the script.

## Format
A data frame with 180 observations on the following 81 variables.

## Variable Descriptions
Original variable names were kept from the original data set.  While interpretting these variable names, use the guidelines below.  For information on the full data set, refer to "features_info.txt"
- Prefixes:
  * **'t'** denotes time domain. Note: Time domain signalswere captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
  * **'f'** denotes frequency domain. Note:  A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.
- Acceleration Signals
  * Acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
  * **'Acc'** in the variable name denotes an acceleration signal as described above.
  * The acceleration signals have the units of g (standard gravity units)
  * **'Body'** denotes the body component of the acceleration signal.
  * **'Gravity'** denotes the gravity component of the acceleration signal.
- Jerk Signals
  * The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
  * **'Jerk'** in the variable name denotes a Jerk signal as described above.
  * The jerk signals have the units of g (standard gravity units)
- Gyro Signals
  * The angular velocity vector measured by the gyroscope for each window sample.
  * **'Gyro'** in the name denotes a Gyro signal.
  * The units for the Gyro signals are radians/sec.
- Magnitude Signals
  * The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
  * **'Mag'** in the variable name denotes a magnitude signal as described above.
- Non-magnitude Signals
  * These signals were used to estimate variables of the feature vector for each pattern.
  * **'X'** at the very end of the variable name denotes signals for the X direction.
  * **'Y'** at the very end of the variable name denotes signals for the Y direction.
  * **'Z'** at the very end of the variable name denotes signals for the Z direction.
- Suffix
  * **'mean'** denotes the estimated mean of the collected data
  * **'std'** denotes the estimated standard deviation of the collected data.
  * **'meanFreq'** denotes the weighted average of the frequency components to obtain a mean frequency

##Table of Variables
| Variable Name | Description | Class & Levels |
|---------------------------------|----------------------------------------------------------|-----------------------------------------------|
| subject | ID of Subject | Integer 1-30 |
| act_name | Activity Labels | Factor with 6 levels |
| tBodyAcc_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAccMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerkMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerkMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_meanFreq_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_meanFreq_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_meanFreq_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_meanFreq_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_meanFreq_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_meanFreq_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_mean_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_mean_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_mean_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_meanFreq_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_meanFreq_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_meanFreq_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccMag-meanFreq | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyAccJerkMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyAccJerkMag-meanFreq | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroMag-meanFreq | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroJerkMag_mean | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroJerkMag-meanFreq | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAccMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerkMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerkMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_std_X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_std_Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro_std_Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyAccJerkMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroJerkMag_std | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |