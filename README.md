This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data", available in coursera. (https://class.coursera.org/getdata-035)

INSTRUCTIONS:
You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Data source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

PERFORMED ACTIVITIES:
1. Check and create a folder to put data.
2. Download, atribute the current date for the download and unzip data.
3. Load the training and test data.
4. Merge the files.
5. Carry the features and search for values with mean and standard deviation. Select the measurements on the mean and standard deviation in the training and test data. Then create a new variable with the addition of the cases of these two tables.
6. Load the labels and add the data from the states.
7. Load the library plyr and create average of each variable for each activity and each subject
8. Create a new file named tidyAvarage.txt
