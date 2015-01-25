---
title: "CodeBook"
author: "Renee Baltimore"
date: "Sunday, January 25, 2015"
output: html_document
---

This dataset is based on data obtained from

[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

It represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The data has
been cleaned and processed to produce a tidy dataset giving averages for measurements taken, grouped by Subject and Activity.


VARIABLES:


"Group.1": Type of Activity performed
    Factor w/ 6 levels 
      "WALKING", 
      "WALKING_UPSTAIRS
      "WALKING_DOWNSTAIRS
      "STANDING"
      "SITTING"
      "LAYING"
    
    Represented as Integer codes (1, 2, 3, 4, 5, 6, respectively) in original data, converted to factor   for the purpose of grouping data.


"Group.2" : Subject performing the activity 
    Factor w/ 30 levels:
      "1","2","3","4","5","6","7","8","9","10"
      "11","12","13","14","15","16","17","18","19","20",
      "21","22","23","24","25","26","27","28","29","30",
   
   Represented as Integer codes (1, 2, 3, ... 30) in original data, converted to factor for the purpose of grouping data.


"tBodyAcc.mean...X": Body Acceleration means for 
	Numeric 


"tBodyAcc.mean...Y"
	Numeric 


"tBodyAcc.mean...Z"
	Numeric 


"tBodyAcc.std...X"
	Numeric 


"tBodyAcc.std...Y"
	Numeric 


"tBodyAcc.std...Z"
	Numeric 


"tGravityAcc.mean...X"
	Numeric 


"tGravityAcc.mean...Y"
	Numeric 


"tGravityAcc.mean...Z"
	Numeric 


"tGravityAcc.std...X"
	Numeric 


"tGravityAcc.std...Y"
	Numeric 


"tGravityAcc.std...Z"
	Numeric 


"tBodyAccJerk.mean...X"
	Numeric 


"tBodyAccJerk.mean...Y"
	Numeric 


"tBodyAccJerk.mean...Z"
	Numeric 


"tBodyAccJerk.std...X"
	Numeric 


"tBodyAccJerk.std...Y"
	Numeric 


"tBodyAccJerk.std...Z"
	Numeric 


"tBodyGyro.mean...X"
	Numeric 


"tBodyGyro.mean...Y"
	Numeric 


"tBodyGyro.mean...Z"
	Numeric 


"tBodyGyro.std...X"
	Numeric 


"tBodyGyro.std...Y"
	Numeric 


"tBodyGyro.std...Z"
	Numeric 


"tBodyGyroJerk.mean...X"
	Numeric 


"tBodyGyroJerk.mean...Y"
	Numeric 


"tBodyGyroJerk.mean...Z"
	Numeric 


"tBodyGyroJerk.std...X"
	Numeric 


"tBodyGyroJerk.std...Y"
	Numeric 


"tBodyGyroJerk.std...Z"
	Numeric 


"tBodyAccMag.mean.."
	Numeric 


"tBodyAccMag.std.."
	Numeric 


"tGravityAccMag.mean.."
	Numeric 


"tGravityAccMag.std.."
	Numeric 


"tBodyAccJerkMag.mean.."
	Numeric 


"tBodyAccJerkMag.std.."
	Numeric 


"tBodyGyroMag.mean.."
	Numeric 


"tBodyGyroMag.std.."
	Numeric 


"tBodyGyroJerkMag.mean.."
	Numeric 


"tBodyGyroJerkMag.std.."
	Numeric 


"fBodyAcc.mean...X"
	Numeric 


"fBodyAcc.mean...Y"
	Numeric 


"fBodyAcc.mean...Z"
	Numeric 


"fBodyAcc.std...X"
	Numeric 


"fBodyAcc.std...Y"
	Numeric 


"fBodyAcc.std...Z"
	Numeric 


"fBodyAcc.meanFreq...X"
	Numeric 


"fBodyAcc.meanFreq...Y"
	Numeric 


"fBodyAcc.meanFreq...Z"
	Numeric 


"fBodyAccJerk.mean...X"
	Numeric 


"fBodyAccJerk.mean...Y"
	Numeric 


"fBodyAccJerk.mean...Z"
	Numeric 


"fBodyAccJerk.std...X"
	Numeric 


"fBodyAccJerk.std...Y"
	Numeric 


"fBodyAccJerk.std...Z"
	Numeric 


"fBodyAccJerk.meanFreq...X"
	Numeric 


"fBodyAccJerk.meanFreq...Y"
	Numeric 


"fBodyAccJerk.meanFreq...Z"
	Numeric 


"fBodyGyro.mean...X"
	Numeric 


"fBodyGyro.mean...Y"
	Numeric 


"fBodyGyro.mean...Z"
	Numeric 


"fBodyGyro.std...X"
	Numeric 


"fBodyGyro.std...Y"
	Numeric 


"fBodyGyro.std...Z"
	Numeric 


"fBodyGyro.meanFreq...X"
	Numeric 


"fBodyGyro.meanFreq...Y"
	Numeric 


"fBodyGyro.meanFreq...Z"
	Numeric 


"fBodyAccMag.mean.."
	Numeric 


"fBodyAccMag.std.."
	Numeric 


"fBodyAccMag.meanFreq.."
	Numeric 


"fBodyBodyAccJerkMag.mean.."
	Numeric 


"fBodyBodyAccJerkMag.std.."
	Numeric 


"fBodyBodyAccJerkMag.meanFreq.."
	Numeric 


"fBodyBodyGyroMag.mean.."
	Numeric 


"fBodyBodyGyroMag.std.."
	Numeric 


"fBodyBodyGyroMag.meanFreq.."
	Numeric 


"fBodyBodyGyroJerkMag.mean.."
	Numeric 


"fBodyBodyGyroJerkMag.std.."
	Numeric 


"fBodyBodyGyroJerkMag.meanFreq.."
  Numeric