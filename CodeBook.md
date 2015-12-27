Project: Getting and Cleaning Data (Course Project)

Variables:
1	subjectID
2	activityID
3	tBodyAcc-mean()-X
4	tBodyAcc-mean()-Y
5	tBodyAcc-mean()-Z
6	tBodyAcc-std()-X
7	tBodyAcc-std()-Y
8	tBodyAcc-std()-Z
9	tGravityAcc-mean()-X
10	tGravityAcc-mean()-Y
11	tGravityAcc-mean()-Z
12	tGravityAcc-std()-X
13	tGravityAcc-std()-Y
14	tGravityAcc-std()-Z
15	tBodyAccJerk-mean()-X
16	tBodyAccJerk-mean()-Y
17	tBodyAccJerk-mean()-Z
18	tBodyAccJerk-std()-X
19	tBodyAccJerk-std()-Y
20	tBodyAccJerk-std()-Z
21	tBodyGyro-mean()-X
22	tBodyGyro-mean()-Y
23	tBodyGyro-mean()-Z
24	tBodyGyro-std()-X
25	tBodyGyro-std()-Y
26	tBodyGyro-std()-Z
27	tBodyGyroJerk-mean()-X
28	tBodyGyroJerk-mean()-Y
29	tBodyGyroJerk-mean()-Z
30	tBodyGyroJerk-std()-X
31	tBodyGyroJerk-std()-Y
32	tBodyGyroJerk-std()-Z
33	tBodyAccMag-mean()
34	tBodyAccMag-std()
35	tGravityAccMag-mean()
36	tGravityAccMag-std()
37	tBodyAccJerkMag-mean()
38	tBodyAccJerkMag-std()
39	tBodyGyroMag-mean()
40	tBodyGyroMag-std()
41	tBodyGyroJerkMag-mean()
42	tBodyGyroJerkMag-std()
43	fBodyAcc-mean()-X
44	fBodyAcc-mean()-Y
45	fBodyAcc-mean()-Z
46	fBodyAcc-std()-X
47	fBodyAcc-std()-Y
48	fBodyAcc-std()-Z
49	fBodyAcc-meanFreq()-X
50	fBodyAcc-meanFreq()-Y
51	fBodyAcc-meanFreq()-Z
52	fBodyAccJerk-mean()-X
53	fBodyAccJerk-mean()-Y
54	fBodyAccJerk-mean()-Z
55	fBodyAccJerk-std()-X
56	fBodyAccJerk-std()-Y
57	fBodyAccJerk-std()-Z
58	fBodyAccJerk-meanFreq()-X
59	fBodyAccJerk-meanFreq()-Y
60	fBodyAccJerk-meanFreq()-Z
61	fBodyGyro-mean()-X
62	fBodyGyro-mean()-Y
63	fBodyGyro-mean()-Z
64	fBodyGyro-std()-X
65	fBodyGyro-std()-Y
66	fBodyGyro-std()-Z
67	fBodyGyro-meanFreq()-X
68	fBodyGyro-meanFreq()-Y
69	fBodyGyro-meanFreq()-Z
70	fBodyAccMag-mean()
71	fBodyAccMag-std()
72	fBodyAccMag-meanFreq()
73	fBodyBodyAccJerkMag-mean()
74	fBodyBodyAccJerkMag-std()
75	fBodyBodyAccJerkMag-meanFreq()
76	fBodyBodyGyroMag-mean()
77	fBodyBodyGyroMag-std()
78	fBodyBodyGyroMag-meanFreq()
79	fBodyBodyGyroJerkMag-mean()
80	fBodyBodyGyroJerkMag-std()
81	fBodyBodyGyroJerkMag-meanFreq()
82	angle(tBodyAccMean,gravity)
83	angle(tBodyAccJerkMean),gravityMean)
84	angle(tBodyGyroMean,gravityMean)
85	angle(tBodyGyroJerkMean,gravityMean)
86	angle(X,gravityMean)

Stages to clean up the data:
1) Merges the files subject_train.txt, Y_train.txt, X_train.txt, subject_test.txt, Y_test.txt and X_test.txt to create one data set.

2) The files subject_train.txt and subject_test.txt were put together in one variable with label"subjectID". The files Y_train.txt and Y_test.txt were put together in one varible with label "activityID". The files X_train.txt and X_test.txt, with 561 variables initially, were put together and labeled with the features.txt file. 

3) The variables "subjectID", "activityID",  and more the measurements on the mean and standard deviation for each measurement were selected.

4) Was created a tidy data set with the average of each variable for each activity and each subject.

The new data set have 86 variables, where:
First variable identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
Second variable identifies the activities names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
3 to 86 variables are data sets with mean and standard deviation.

And have 10.299 observations, where: 
1 to 7352 are volunteers was selected for generating the training data
7.353 to 10.299 are volunteers was selected for generating the test data
