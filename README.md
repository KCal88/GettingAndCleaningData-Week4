---
title: "README"
author: "Kyle Caldwell"
date: "September 16, 2017"
output: html_document
---

## Repo description
This repo was created to create tidy data from a larger data set. The **run_analysis.R** program extracts data from a data base in the **UCI HAR dataset** and extracts only a subset of the data. The selected data is futher processed and is then presented in a tidy data format, and saved as a file called **tidydata.txt**. The **CodeBook.md** file describes all of the variables found in the final dataset.

## Generating the tidy data
1. The origional dataset must be downloaded and unzipped. (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Make sure the **UCI HAR dataset** folder is in the acive directory of R
3. Run the **run_analysis.R** file, it should generate a file named **tidydata.txt** within the **UCI HAR dataset** folder

## The origional data  
The raw data collected comes from accelrometers and gyroscopes embedded in the Galaxy Samsung S phones. Particpants were split into a training and test groups and then completed various ambulatory tasks while the sensors were recording. The data can be found in the following files:

* X training data - **UCI HAR dataset/train/X_train.txt**  
* Y training data - **UCI HAR dataset/train/Y_train.txt**  
* subject training data - **UCI HAR dataset/train/subject_train.txt**  
* X test data - **UCI HAR dataset/test/X_test.txt**  
* Y test data - **UCI HAR dataset/test/Y_test.txt**  
* subject test data - **UCI HAR dataset/test/subject_test.txt**  
* varialbe name data - **UCI HAR dataset/features.txt**  
* activity labels - **UCI HAR dataset/activty_labels**  

The "X" data represents the data found in the sensors, while the "Y" data represents the type of activity being peformed, with a numeric code. The subject data identifies which subject was completing the task. The variable name data contain descriptive names for the data in the "X" data, and the activity labels contains the key-value pairs for the actiivty data in the "Y" data.

## Processing the data
1. The data from the training and test files are merged to create single dataset.  
2. The mean() and std() variables are selected to reduce the data set size.  
3. Next the variable names and activity labes are extracted from their repsective files and applied to the data table for a more descriptive representation of the data.  
4. The average value for each activity and subect is computed for the final tidy data set.  
5. A file called **tidydata.txt** is saved within the **UCI HAR dataset** folder.

## The tidy data
The first column describes the activity type, the second column represents the subject id, and the remaining columns represent the average value of the collected sensor data. Each row represents a unique activity and subject number.