## Codebook for run_Analysis.R

#DataSet for the Project:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 



The data was provided as a .Zip file. The dataset includes the following files:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

 
 #Variables and transformations used in the Code
 x_train_tbl -- Table to hold the raw data of all observations across 561 variable for training dataset
 y_train_tbl---Table to holds the raw data of activity for the training dataset
 subject_train_tbl-- Table that holds the raw data of all subjects for the training dataset
 x_test_tbl---Table to hold the raw data of all observations across 561 variable for test dataset
 y_test_tbl-- Table to holds the raw data of activity for the test dataset
 subject_test_tbl--Table that holds the raw data of all subjects for the test dataset
 activity_table-Table that holds the raw data with description for all activity codes
 features--Table that holds the raw data with description of al 561 variables
 x_data-- Table that holds the merged X datasets for training and test
 y_data-- Table that holds the merged Y datasets for training and test
 subject_data--Table that holds the merged subject datasets for training and test data sets
 meanStdColumns-- index that have either mean or std in the features data set
 meanStdColumnsNames--columnnames for indexes that have mean or std in the features data set 
 x_data_subset-- table to hold subset of x_data based on indexes from meanStdColumns
 final_data--table that merges all the X, Y and subject data sets
 tidy_average_data-- table that holds the tidied data, summarizing and grouping by subject and activity id
 average_data.txt-- Filename that is written to working directory contains the data in tidy_average_data table 
 
 
 
 
