
#load library dplyr

library(dplyr)
# load training data
x_train_tbl <- tbl_df(read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt"))
y_train_tbl <- tbl_df(read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"))
subject_train_tbl <- tbl_df(read.table("C:/Users/devutty/Documents/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"))

#load test data
x_test_tbl <- tbl_df(read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"))
y_test_tbl <- tbl_df(read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt"))
subject_test_tbl <- tbl_df(read.table("C:/Users/devutty/Documents/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"))

#load activity data
activity_table <- tbl_df(read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"))

#load features data
features <- tbl_df(read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt"))

#Merge the data sets
x_data <- tbl_df(bind_rows(x_train_tbl,x_test_tbl))
y_data <- tbl_df(bind_rows(y_train_tbl,y_test_tbl))
subject_data <- tbl_df(bind_rows(subject_train_tbl,subject_test_tbl))

#determine columns indexes with "mean" or "std" from the features table
meanStdColumns <- grep("mean|std",features$V2,value = FALSE)

#determine column names with "mean" or "std" from the features table
meanStdColumnsNames <- grep("mean|std", features$V2, value = TRUE)


#Extract only columns with mean and standard deviation from the merged dataset
x_data_subset <- select(x_data,meanStdColumns)


#Assign descriptive activity names
y_data <- full_join(y_data,activity_table,by = "V1")
y_data <- select(y_data,V2)



#Label the data set with descriptive variable names

colnames(x_data_subset) <- meanStdColumnsNames
colnames(y_data) <- "Activity_id"
colnames(subject_data) <- "Subject_id"


#Create a complete merged data set
final_data <- bind_cols(subject_data,y_data,x_data_subset)

#New tidy data set with average of each variable by subject and activity
tidy_average_data<- final_data %>% group_by(Subject_id,Activity_id) %>% summarise_each(funs(mean))

write.table(tidy_average_data, "averages_data.txt", row.name=FALSE)
