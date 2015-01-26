---
title: "CodeBook"
author: "Renee Baltimore"
date: "Sunday, January 25, 2015"
output: html_document
---

This dataset is based on data obtained from

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

It represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The data has
been cleaned and processed to produce a tidy dataset giving averages for measurements taken, grouped by Subject and Activity.


DESCRIPTION OF ORIGINAL DATA---------------------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.




VARIABLES IN TIDY DATA SET HAVING AVERAGES GROUPED BY SUBJECT AND ACTIVITY------------------------


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


"tBodyAcc.mean...X": Total Body Acceleration from the Accelerometer means for Axis X
	Numeric 


"tBodyAcc.mean...Y": Total Body Acceleration from the Accelerometer means for Axis Y
	Numeric 


"tBodyAcc.mean...Z": Total Body Acceleration from the Accelerometer means for Axis Z
	Numeric 


"tBodyAcc.std...X": Total Body Acceleration from the Accelerometer Standard Deviation for Axis X
	Numeric 


"tBodyAcc.std...Y": Total Body Acceleration from the Accelerometer Standard Deviation for Axis Y
	Numeric 


"tBodyAcc.std...Z": Total Body Acceleration from the Accelerometer Standard Deviation for Axis Z
	Numeric 


"tGravityAcc.mean...X":  Total Gravity Acceleration from the Accelerometer mean for Axis x
	Numeric 


"tGravityAcc.mean...Y":  Total Gravity Acceleration from the Accelerometer mean for Axis Y
	Numeric 


"tGravityAcc.mean...Z":  Total Gravity Acceleration from the Accelerometer mean for Axis Z
	Numeric 


"tGravityAcc.std...X":  Total Gravity Acceleration from the Accelerometer Standard Deviation for Axis X
	Numeric 


"tGravityAcc.std...Y":  Total Gravity Acceleration from the Accelerometer Standard Deviation for Axis Y
	Numeric 


"tGravityAcc.std...Z":  Total Gravity Acceleration from the Accelerometer Standard Deviation for Axis Z
	Numeric 


"tBodyAccJerk.mean...X":  Total Body Acceleration from the Accelerometer Jerk mean for Axis X
	Numeric 


"tBodyAccJerk.mean...Y":  Total Body Acceleration from the Accelerometer Jerkmean for Axis Y
	Numeric 


"tBodyAccJerk.mean...Z":  Total Body Acceleration from the Accelerometer Jerkmean for Axis Z
	Numeric 


"tBodyAccJerk.std...X":  Total Body Acceleration from the Accelerometer Jerk Standard Deviation for Axis X
	Numeric 


"tBodyAccJerk.std...Y":  Total Body Acceleration from the Accelerometer JerkStandard Deviation for Axis Y
	Numeric 


"tBodyAccJerk.std...Z":  Total Body Acceleration from the Accelerometer JerkStandard Deviation for Axis Z
	Numeric 


"tBodyGyro.mean...X":  Total Body Angular velocity from the gyroscope mean for Axis X
	Numeric 


"tBodyGyro.mean...Y":  Total Body Angular velocity from the gyroscope mean for Axis Y
	Numeric 


"tBodyGyro.mean...Z":  Total Body Angular velocity from the gyroscope mean for Axis Z
	Numeric 


"tBodyGyro.std...X":  Total Body Angular velocity from the gyroscope Standard Deviation for Axis X
	Numeric 


"tBodyGyro.std...Y":  Total Body Angular velocity from the gyroscope Standard Deviation for Axis Y
	Numeric 


"tBodyGyro.std...Z":  Total Body Angular velocity from the gyroscope Standard Deviation for Axis Z
	Numeric 


"tBodyGyroJerk.mean...X":  Total Body Angular velocity from the gyroscope Jerk mean for Axis X
	Numeric 


"tBodyGyroJerk.mean...Y":  Total Body Angular velocity from the gyroscope Jerk mean for Axis Y
	Numeric 


"tBodyGyroJerk.mean...Z":  Total Body Angular velocity from the gyroscope Jerk mean for Axis Z
	Numeric 


"tBodyGyroJerk.std...X":  Total Body Angular velocity from the gyroscope Jerk Standard Deviation for Axis X
	Numeric 


"tBodyGyroJerk.std...Y":  Total Body Angular velocity from the gyroscope Jerk Standard Deviation for Axis Y
	Numeric 


"tBodyGyroJerk.std...Z":  Body Angular velocity from the gyroscope Jerk Standard Deviation for Axis Z
	Numeric 


"tBodyAccMag.mean..":  Total Body acceleration Mag. mean
	Numeric 


"tBodyAccMag.std..":  Total Body acceleration Mag. Standard Deviation 
	Numeric 


"tGravityAccMag.mean..":  Total Body acceleration Mag. mean for 
	Numeric 


"tGravityAccMag.std..":  Total Body acceleration Mag. Standard Deviation  
	Numeric 


"tBodyAccJerkMag.mean..":  Total Body acceleration Jerk Mag. mean 
	Numeric 


"tBodyAccJerkMag.std..":  Total Body acceleration Jerk Mag. Standard Deviation  
	Numeric 


"tBodyGyroMag.mean..": Total Body angular velocity from gyroscope Mag. mean 
	Numeric 


"tBodyGyroMag.std..": Total Body angular velocity from gyroscope Mag. Standard Deviation
	Numeric 


"tBodyGyroJerkMag.mean..": Total Body angular velocity from gyroscope Jerk Mag. mean 
	Numeric 


"tBodyGyroJerkMag.std..": Total Body angular velocity from gyroscope Jerk Mag.  Standard Deviation
	Numeric 


"fBodyAcc.mean...X":  Filtered Body Acceleration from Accerlerometer mean for Axis X
	Numeric 


"fBodyAcc.mean...Y":  Filtered Body Acceleration from Accerlerometer mean for Axis Y
	Numeric 


"fBodyAcc.mean...Z":  Filtered mean for Axis Z
	Numeric 


"fBodyAcc.std...X":  Filtered Body Acceleration from Accerlerometer Standard Deviation for Axis X
	Numeric 


"fBodyAcc.std...Y":  Filtered Body Acceleration from Accerlerometer Standard Deviation for Axis Y
	Numeric 


"fBodyAcc.std...Z":  Filtered Body Acceleration from Accerlerometer Standard Deviation for Axis Z
	Numeric 


"fBodyAcc.meanFreq...X": Filtered Body Acceleration from Accerlerometer  mean frequency for Axis X
	Numeric 


"fBodyAcc.meanFreq...Y":  Filtered Body Acceleration from Accerlerometer mean frequency for Axis Y
	Numeric 


"fBodyAcc.meanFreq...Z":  Filtered Body Acceleration from Accerlerometer mean  frequency for Axis Z
	Numeric 


"fBodyAccJerk.mean...X":  Filtered Body Acceleration from Accerlerometer Jerk mean for Axis X
	Numeric 


"fBodyAccJerk.mean...Y": Filtered Body Acceleration from Accerlerometer Jerk mean for Axis Y
	Numeric 


"fBodyAccJerk.mean...Z": Filtered  Body Acceleration from Accerlerometer Jerk mean for Axis Z
	Numeric 


"fBodyAccJerk.std...X":  Filtered Body Acceleration from Accerlerometer Jerk Standard Deviation for Axis X
	Numeric 


"fBodyAccJerk.std...Y":  Filtered Body Acceleration from Accerlerometer Jerk Standard Deviation for Axis Y
	Numeric 


"fBodyAccJerk.std...Z":  Filtered Body Acceleration from Accerlerometer Jerk Standard Deviation for Axis Z
	Numeric 


"fBodyAccJerk.meanFreq...X":  Filtered Body Acceleration from Accerlerometer Jerk mean frequency for Axis X
	Numeric 


"fBodyAccJerk.meanFreq...Y":  Filtered Body Acceleration from Accerlerometer Jerk mean frequency for Axis Y
	Numeric 


"fBodyAccJerk.meanFreq...Z":  Filtered Body Acceleration from Accerlerometer Jerk mean frequency for Axis Z
	Numeric 


"fBodyGyro.mean...X": Filtered  Body Angular Velocity from Gyroscope mean for Axis X
	Numeric 


"fBodyGyro.mean...Y": Filtered Body Angular Velocity from Gyroscope mean for Axis Y
	Numeric 


"fBodyGyro.mean...Z": Filtered Body Angular Velocity from Gyroscope mean for Axis Z
	Numeric 


"fBodyGyro.std...X": Filtered Body Angular Velocity from Gyroscope Standard Deviation for Axis X
	Numeric 


"fBodyGyro.std...Y": Filtered Body Angular Velocity from Gyroscope Standard Deviation for Axis Y
	Numeric 


"fBodyGyro.std...Z": Filtered Body Angular Velocity from Gyroscope Standard Deviation for Axis Z
	Numeric 


"fBodyGyro.meanFreq...X": Filtered Body Angular Velocity from Gyroscope mean frequency for Axis X
	Numeric 


"fBodyGyro.meanFreq...Y": Filtered Body Angular Velocity from Gyroscope mean frequency for Axis Y
	Numeric 


"fBodyGyro.meanFreq...Z":  Filtered Body Angular Velocity from Gyroscope mean frequency for Axis Z
	Numeric 


"fBodyAccMag.mean..":  Filtered Body Acceleration from Accerlerometer Mag mean for
	Numeric 


"fBodyAccMag.std..":  Filtered Body Acceleration from Accerlerometer Mag Standard Deviation 
	Numeric 


"fBodyAccMag.meanFreq..":  Filtered Body Acceleration from Accerlerometer Mag mean frequency
	Numeric 


"fBodyBodyAccJerkMag.mean..":   Filtered Body Body Acceleration from Accerlerometer Jerk Mag mean
	Numeric 


"fBodyBodyAccJerkMag.std..": Filtered Body Body Acceleration from Accerlerometer Jerk Mag Standard Deviation 
	Numeric 


"fBodyBodyAccJerkMag.meanFreq..": Filtered Body Body Acceleration from Accerlerometer Jerk Mag mean frequency 
	Numeric 


"fBodyBodyGyroMag.mean..": Filtered Body Body Angular Velocity from Gyroscope Mag mean 
	Numeric 


"fBodyBodyGyroMag.std..":  Filtered Body Body Angular Velocity from Gyroscope Mag Standard Deviation 
	Numeric 


"fBodyBodyGyroMag.meanFreq..": Filtered Body Body Angular Velocity from Gyroscope Mag mean frequency
	Numeric 


"fBodyBodyGyroJerkMag.mean..":  Filtered Body Body Angular Velocity from Gyroscope Jerk Mag mean 
	Numeric 


"fBodyBodyGyroJerkMag.std..":  Filtered Body Body Angular Velocity from Gyroscope Jerk Mag Standard Deviation 
	Numeric 


"fBodyBodyGyroJerkMag.meanFreq..": Filtered Body Body Angular Velocity from Gyroscope Jerk Mag mean frequency