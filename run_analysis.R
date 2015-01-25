##The following is a series of steps to produce tidy data which can be used for further 
#analysis. The dataset represents activity data from smartphone owners.

#This script assumes an unzipped data set contained in a folder "UCI HAR Dataset" within
#the working directory.


#Merge the training and the test sets to create one data set........... (STEP 1)

#read in and join data from train:x_train, subject_train and ytrain
datatrain <- cbind(read.table('UCI HAR Dataset/train/X_train.txt'), read.table('UCI HAR Dataset/train/subject_train.txt'), read.table('UCI HAR Dataset/train/y_train.txt'))
datatest <- cbind(read.table('UCI HAR Dataset/test/X_test.txt'), read.table('UCI HAR Dataset/test/subject_test.txt'), read.table('UCI HAR Dataset/test/y_test.txt'))

#bind test data to training data
traintest <- rbind(datatrain, datatest)

#remove datatest and datatrain from the environment
remove(datatrain)
remove(datatest)


#Extracts only the measurements on the mean and standard deviation for each measurement.......(STEP 2)

#Load in the features dataset
features <- read.table('UCI HAR Dataset/features.txt')

#load in data.table library to be able to use %like% function
library(data.table)

#find indices of tables names which contain substrings of 'mean' or 'std'
fmatch <- features[features[,2] %like% 'mean' | features[,2] %like% 'std',]

#subset data using fmatch to get just columns related to mean and standard deviation
summarydata <- traintest[,c(fmatch[,1], 562:563)]

#remove traintest dataset
remove(traintest)


#Use descriptive activity names to name the activities in the data set..........(STEP 3)

#Convert activity values to character
summarydata[,81] <- as.character(summarydata[,81])


#replace activity numbers with meaning full names 
summarydata[,81] <- gsub('1', 'WALKING', summarydata[,81])
summarydata[,81] <- gsub('2', 'WALKING_UPSTAIRS', summarydata[,81])
summarydata[,81] <- gsub('3', 'WALKING_DOWNSTAIRS', summarydata[,81])
summarydata[,81] <- gsub('4', 'SITTING', summarydata[,81])
summarydata[,81] <- gsub('5', 'STANDING', summarydata[,81])
summarydata[,81] <- gsub('6', 'LAYING', summarydata[,81])


#Appropriately label the data set with descriptive variable names.......(STEP 4)
names(summarydata) <- make.names(c(as.character(fmatch[,2]), 'Subject', 'Activity'))

remove(features)
remove(fmatch)

#Create a second, independent tidy data set with the average of each variable for each activity and each subject......(STEP 5) 

#load the dplyr library
library(dplyr)

#make Subject and Activity factors
summarydata$Subject <- as.factor(as.character(summarydata$Subject))
summarydata$Activity <- as.factor(summarydata$Activity)

#attach the dataset to the R search path
attach(summarydata)

#calculate means of variables, grouped by Activity and Subject
groupedaverages <- aggregate(summarydata[1:79], by=list(Activity, Subject), FUN=mean, na.rm=TRUE)

#output the final tidy dataset to a text file
write.table(groupedaverages, "run_analysis_result.txt", row.names=FALSE)

#remove remaining datasets: summarydata and groupedaverages
remove(summarydata)
remove(groupedaverages)

