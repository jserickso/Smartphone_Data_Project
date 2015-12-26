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
- Edited the features file information, which consists of variables (aka column names), to make the column names unique by adding a "." separator when necessary.
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
  * **'-X'** denotes signals for the X direction.
  * **'-Y'** denotes signals for the Y direction.
  * **'-Z'** denotes signals for the Z direction.
- Suffix
  * **'mean()'** denotes the estimated mean of the collected data
  * **'std()'** denotes the estimated standard deviation of the collected data.
  * **'meanFreq()'** denotes the weighted average of the frequency components to obtain a mean frequency

##Table of Variables
| Variable Name | Description | Class & Levels |
|---------------------------------|----------------------------------------------------------|-----------------------------------------------|
| subject | ID of Subject | Integer 1-30 |
| act_name | Activity Labels | Factor with 6 levels |
| tBodyAcc-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAccMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerkMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerkMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-meanFreq()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-meanFreq()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-meanFreq()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-meanFreq()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-meanFreq()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-meanFreq()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-mean()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-mean()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-mean()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-meanFreq()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-meanFreq()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-meanFreq()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccMag-meanFreq() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyAccJerkMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyAccJerkMag-meanFreq() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroMag-meanFreq() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroJerkMag-mean() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroJerkMag-meanFreq() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAcc-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAcc-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerk-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyro-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerk-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tGravityAccMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyAccJerkMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| tBodyGyroJerkMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAcc-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccJerk-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-std()-X | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-std()-Y | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyGyro-std()-Z | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyAccMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyAccJerkMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |
| fBodyBodyGyroJerkMag-std() | Average value, see above for detail on naming convention | numeric, normalized and bounded within [-1,1] |