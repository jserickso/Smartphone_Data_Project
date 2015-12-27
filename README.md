# Smartphone_Data_Project

## Data location:  
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## Date Downloaded:  
"Sun Dec 20 ??20:20:36 2015"
## Data Description:  
"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

## Data Inputs:	

### From UCI HAR Dataset folder
- activity_labels.txt is used as a key to translate the
activity IDs to the activity names
- features.txt was used to label the column names of the
X_train and X_test data sets

### From UCI HAR Dataset/test
- X_test.txt is the full set of all the inertial signals
- y_test.txt lists the activity IDs for each row in X_test
- subject_test.txt lists the subjects for each row in X_test
		
### From UCI HAR Dataset/train
- X_train.txt is the full set of all the inertial signals
- y_train.txt lists the activity IDs for each row in X_train
- subject_train.txt lists the subjects for each row in X_train

## Data Output:  

### To UCI HAR Dataset folder
- tidy_data.txt is the reduced table of means and standard 
deviations averaged across each subject, activity pair.
							

## Assumptions/Requirements:

- Data must be in the same folder structure as above, and must be unzipped into the working directory.  The working directory should be a level above UCI HAR Dataset.

- The plyr and dplyr packages should be installed before running the script, run_Analysis.

## Script Information:
This script did the following steps to create a tidy data set:
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

## How to read the tidy_data.txt into R:

	address <- "https://s3.amazonaws.com/coursera-uploads/user-159e9c53235ebb833afda639/975119/asst-3/4cd10f50ac6211e5b5b9f35821789701.txt"
	address <- sub("^https", "http", address)
	data <- read.table(url(address), header = TRUE)
	View(data)




