## Coursera Getting_and_Cleaning_Data - Course Project

#Objective of the Course
  To collect,clean and process the "Human Activity Recognition Using Smart Phone Data" provided as part of the course project and come up 
  with a tidy data set with the average of each variable for each activity and each subject. This data set can be used for further analysis.
  
#Background
The provided dataset is first downloaded to the working directory. For the purposes of this exercise, we have installed and used the dplyr package

#run_Analysis.R
1) We first read the files into corresponding tables using the read.csv command.
2) Merge the X datasets together
3) Merge the Y datasets together
4) Merge the subject datasets together
5) Find the row indexes in features dataset that correspond to mean and standard deviaton measurements and store it in meanStdColumns.
6)MeanStdColumnnames stores the actual measurement names for mean and standard deviation from the features table.
7)Use the meanStdColumns to subset the merged X data to get only variables associated with mean and standard deviation.
8)Join the activity table data set and Y data set to assign descriptive values to observations in Y dataset.
9)Next use MeanStdColumnNames to assign column names for X dataset
9)Assign "Activity_id" and "subject_id" as column names for Y and Subject data set
10)Create a final merged dataset by binding all the columns from X,Y and Subject dataset
11)Summarize the merged dataset by determining the mean of each variable and group by subject and activity and store in tidy_average_data
12)Write the results to "averages_data.txt"



  
  
