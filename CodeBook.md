---
title: "Code book"
author: "Kyle Caldwell"
date: "September 16, 2017"
output: html_document
---

## Data in tidydata.txt

The data in "tidydata.txt" represents the average values of a varialbe for a subject completing one of 6 activites, including: walking, walking upstairs, walking downstairs, sitting, standing, and laying down. The data were obtained from the "UCI HAR dataset"" available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

First the data from the training and test subjects were combined into a single dataset, then only the data containing the "mean()" or "std()" for each vairalbe (see below) were extracted into a smaller dataset.

The data was then grouped by the type of actiity, and the subject peforming the ativity. Lastly the average was computed for each activity and subject.

The first column **activity** contains a factor variable containing a string describing the activity whch is either:  
*WALKING  
*WALKING_UPSTAIRS  
*WALKING_DOWNSTAIRS  
*SITTING  
*STANDING  
*LAYING  

The second colunm **subject_id** contains an intiger value, ranging from 1 to 30, that is unique for each subject involved in the study.

The remaining columns contain data objtained from accelerometers and gyroscopes. The folloiwng description comes directly from the "Features info.txt", included with the data set, to describe the remaining varialbes that are reported in "tidydata.txt" that were produced by running "run_analysis.R"

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ  
>tGravityAcc-XYZ  
>tBodyAccJerk-XYZ  
>tBodyGyro-XYZ  
>tBodyGyroJerk-XYZ  
>tBodyAccMag  
>tGravityAccMag  
>tBodyAccJerkMag  
>tBodyGyroMag  
>tBodyGyroJerkMag  
>fBodyAcc-XYZ  
>fBodyAccJerk-XYZ  
>fBodyGyro-XYZ  
>fBodyAccMag  
>fBodyAccJerkMag  
>fBodyGyroMag  
>fBodyGyroJerkMag  

For each variable above both mean and standard deviation were reported as numeric values:  

mean(): Mean value  
std(): Standard deviation

For example the mean fBodyGryo value in the X direction would be **fBodyGryo-mean()-X**

The full list of column names is:

 [1] "activity"                   
 [2] "subject_id"                 
 [3] "tBodyAcc-mean()-X"          
 [4] "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"          
 [6] "tBodyAcc-std()-X"           
 [7] "tBodyAcc-std()-Y"           
 [8] "tBodyAcc-std()-Z"           
 [9] "tGravityAcc-mean()-X"       
[10] "tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"       
[12] "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"        
[14] "tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"      
[16] "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"      
[18] "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"       
[20] "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"         
[22] "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"         
[24] "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"          
[26] "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"     
[28] "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"     
[30] "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"      
[32] "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"         
[34] "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"      
[36] "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"     
[38] "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"        
[40] "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"    
[42] "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"          
[44] "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"          
[46] "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"           
[48] "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"      
[50] "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"      
[52] "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"       
[54] "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"         
[56] "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"         
[58] "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"          
[60] "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"         
[62] "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()"  
[64] "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"    
[66] "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()"  
[68] "fBodyBodyGyroJerkMag-std()" 
