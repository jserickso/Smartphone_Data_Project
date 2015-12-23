# Smartphone_Data_Project

# Data location:  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Date Downloaded:  "Sun Dec 20 ??20:20:36 2015"
# Data Description:  "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

# Data Inputs:	From UCI HAR Dataset folder	> activity_labels.txt is used as a key to translate the
							activity IDs to the activity names
						> features.txt was used to label the column names of the
							X_train and X_test data sets
 		From UCI HAR Dataset/test	> X_test.txt is the full set of all the inertial signals
						> y_test.txt lists the activity IDs for each row in X_test
						> subject_test.txt lists the subjects for each row in X_test
		From UCI HAR Dataset/train	> X_train.txt is the full set of all the inertial signals
						> y_train.txt lists the activity IDs for each row in X_train
						> subject_train.txt lists the subjects for each row in X_train

# Data Output:  To UCI HAR Dataset folder	> tidy_data.txt is the reduced table of means and standard 
							deviations averaged across each subject, activity pair.
							

# Assumptions/Requirements:

# Data must be in the same folder structure as above, the only argument for run_Analysis is the absolute path
	of the UCI HAR Dataset folder.

# The plyr and dplyr packages should be installed before running the script, run_Analysis.


# How to read the tidy_data.txt into R:

data <- read.table("<insert_file_path_here>/tidy_data.txt", header = TRUE)
View(data)




