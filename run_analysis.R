# 1. Merges the training and the test sets to create one data set.
# Check and create a folder to put data. 
setwd("C:/Users/Andre/Desktop/Curso_Bigdata/Modulo_3")
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#Download, atribute the current date for the download and unzip data.
download.file(fileUrl,destfile="./data/wearable.zip")
dateDown <- date()
unzip("./data/wearable.zip", exdir = "./data")

# Load the training data.
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
trainX <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")

# Join the variables of training.
trainTotal <- cbind(trainX, trainY, trainSubject)

# Load the test data.
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
testX <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
testY <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")

# Join the variables of the test.
testTotal <- cbind(testX, testY, testSubject)

# Join the cases of the training and testing data.
dataTotal <- rbind(trainTotal, testTotal)



# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Carry the features and search for values with mean and standard deviation.
features <- read.table("./data/UCI HAR Dataset/features.txt")
featuresSearch <- grep (".*mean.*|.*Mean.*|.*std.*|.*.Std.*", features[,2])

# Select the measurements on the mean and standard deviation in the training and test data. Then create a new variable with the addition of the cases of these two tables.
trainXMainStd <- trainX[ ,featuresSearch]
testXMainStd <- testX[ ,featuresSearch]
dataXMainStd <- rbind(trainXMainStd, testXMainStd)



# 3. Uses descriptive activity names to name the activities in the data set.
# Load the labels and add the data from the states.
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
dataY <- rbind(trainY, testY)

# Turn the column data based on labels the activityLabels vector.
dataY [, 1] <- activityLabels[dataY[,1], 2]

# Label dataY vector column as "activityID".
colnames(dataY) <- "activityID"



# 4. Appropriately labels the data set with descriptive variable names.
# Create new vector with joint identification of participants in the training and testing.
dataSubject <- rbind(trainSubject, testSubject)

# Label dataSubject vector variable to "subjectID" and the vector columns dataXMainStd based on vector features.
colnames(dataSubject) <- "subjectID"
colnames(dataXMainStd) <- features[featuresSearch,2]

# Join data variables, status and identification in a single vector.
dataMainStd <- cbind(dataXMainStd, dataY, dataSubject)



# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Load the library plyr and create average of each variable for each activity and each subject
library(plyr)
dataAverage <- ddply(dataMainStd, .(subjectID, activityID), 
                     function(x) colMeans(x[, 1:84]))

# Create a new file named tidyAvarage.txt
write.table(dataAverage, file = "./data/tidyAverage.txt", row.name=FALSE)
