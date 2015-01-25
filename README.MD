---
title: "README.MD"
author: "Renee Baltimore"
date: "Sunday, January 25, 2015"
output: html_document
---

The purpose of this project is to prepare tidy data that can be used for later analysis. The data being prepared is represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data is processed to output a tidy dataset which averages select  readings of smartphone data, grouped by Subject and Activity.


The file "run_analysis.R" contains the code that processes and outputs the tidy data set.

It is assumed that the data to be cleaned will be located unzipped within the working directory in a folder named 'UCI HAR Dataset'. To execute the code in the file simply enter at the R prompt:


```{r}
 source("run_analysis.R")
```

Training and testing data are read in and merged into a single dataset. (data in the 'Inertial Signals' folder was not read in as they were unnecessary and would have to be removed in a later step anyway).

Measurements on the mean and standard deviation were extracted. This was done using making use of the features dataset loaded from 'UCI HAR Dataset/features.txt' which maps the names for the columns of measurements in the training and test sets

The 'features' set was used to find matches for all the column names containing the text 'std' or 'mean' as seen in the following code:

```{r}
 fmatch <- features[features[,2] %like% 'mean' | features[,2] %like% 'std',]
```

The column indices of fmatch were used to subset the data to extract only measurements on standard deviation and mean. 


```{r}
 summarydata <- traintest[,c(fmatch[,1], 562:563)]
```


Activity values were converted to character and activity codes replaced with meaningful names:
1='WALKING', 2 = 'WALKING_UPSTAIRS', 3 = 'WALKING_DOWNSTAIRS', 4 = 'SITTING', 5 = 'STANDING',
6 = 'LAYING'



The data set columns were labelled with descriptive names based of matches previous found

```{r}
 names(summarydata) <- make.names(c(as.character(fmatch[,2]), 'Subject', 'Activity'))
```


Final tidy data set with averaged variables grouping by activity (as a factor) and subject (as a factor) using the 'aggregate' function 


```{r}
  groupedaverages <- aggregate(summarydata[1:79], by=list(Activity, Subject), FUN=mean, na.rm=TRUE)
```


The resulting tidy dataset was them output to a text file 'run_analysis_result.txt' in the working directory