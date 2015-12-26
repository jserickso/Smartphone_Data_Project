run_Analysis <- function(){

  #packages to use, manually install these before running script
  library(plyr)
  library(dplyr)
  
  #Read in the training data
  train_dat <- read.table("./UCI HAR Dataset/train/X_train.txt")
  train_act <- read.table("./UCI HAR Dataset/train/y_train.txt")
  train_sub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  
  #Read in the test data
  test_dat <- read.table("./UCI HAR Dataset/test/X_test.txt")
  test_act <- read.table("./UCI HAR Dataset/test/y_test.txt")
  test_sub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  
  #Read in features list and activity labels
  features <- read.table("./UCI HAR Dataset/features.txt",colClasses="character")
  act_lbl <- read.table("./UCI HAR Dataset/activity_labels.txt")
  
  #Set the column names of training and test data tables
  variables <- make.unique(features$V2,sep=".")
  colnames(train_dat) <- variables
  colnames(test_dat) <- variables
  colnames(train_sub) <- c("subject")
  colnames(test_sub) <- c("subject")
  
  #Match text activity labels to numeric activity labels
  train_act <- join(train_act,act_lbl,by="V1")
  colnames(train_act) <- c("act_id","act_name")
  test_act <- join(test_act,act_lbl,by="V1")
  colnames(test_act) <- c("act_id","act_name")
  
  #Create full training and test tables with labels
  train_tab <- cbind(train_sub,train_act,train_dat)
  test_tab <- cbind(test_sub,test_act,test_dat)

  #Create full data set
  dat <- rbind(train_tab,test_tab)
  
  #Select only the data columns labeled mean or std
  small_dat <- select(dat,subject,act_name, contains("mean",ignore.case = FALSE),+
                        contains("std", ignore.case = FALSE))
  
  #Group, summarize, and output the tidy data set
  tidy_dat <- summarise_each(group_by(small_dat,subject,act_name),funs(mean))
  write.table(tidy_dat,file="./UCI HAR Dataset/tidy_data.txt",row.names = FALSE)
  promptData(tidy_dat,"./UCI HAR Dataset/tidy_data_info.md")
  
}