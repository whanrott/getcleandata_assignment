# getcleandata_assignment

This repository contains work for the [Getting and Cleaning Data course](https://class.coursera.org/getdata-012/human_grading/)
from John Hopkins University on the Coursera platform.

## Scripts

run_analysis.R does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Writes this to disk with and without rownames

## Code Book

The script run_analysis.R uses data from the Human Activity Recognition Using Smartphones Data Set (UCI HAR),
published by [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](UCI
Machine Learning Repository).

The data files used from the UCI HAR
1. activity_labels.txt
   contains labels for the Activity Types
2. features.txt
   contains labels for the Features tracked
3. X_test.txt, y_test.txt, X_train.txt, y_train.txt
   test and training data sets for X and y orientations

The output of the run_analysis.R script is a table of mean values where the columsn
are the activity types and the rows are the features. 

The following features are returned by the script run_analysis:

 [1] tBodyAcc-mean()-Y              
 [2] tBodyAcc-mean()-Z              
 [3] tBodyAcc-std()-X               
 [4] tBodyAcc-std()-Y               
 [5] tBodyAcc-std()-Z               
 [6] tBodyAcc-mad()-X               
 [7] tGravityAcc-mean()-Y           
 [8] tGravityAcc-mean()-Z           
 [9] tGravityAcc-std()-X            
[10] tGravityAcc-std()-Y            
[11] tGravityAcc-std()-Z            
[12] tGravityAcc-mad()-X            
[13] tBodyAccJerk-mean()-Y          
[14] tBodyAccJerk-mean()-Z          
[15] tBodyAccJerk-std()-X           
[16] tBodyAccJerk-std()-Y           
[17] tBodyAccJerk-std()-Z           
[18] tBodyAccJerk-mad()-X           
[19] tBodyGyro-mean()-Y             
[20] tBodyGyro-mean()-Z             
[21] tBodyGyro-std()-X              
[22] tBodyGyro-std()-Y              
[23] tBodyGyro-std()-Z              
[24] tBodyGyro-mad()-X              
[25] tBodyGyroJerk-mean()-Y         
[26] tBodyGyroJerk-mean()-Z         
[27] tBodyGyroJerk-std()-X          
[28] tBodyGyroJerk-std()-Y          
[29] tBodyGyroJerk-std()-Z          
[30] tBodyGyroJerk-mad()-X          
[31] tBodyAccMag-std()              
[32] tBodyAccMag-mad()              
[33] tGravityAccMag-std()           
[34] tGravityAccMag-mad()           
[35] tBodyAccJerkMag-std()          
[36] tBodyAccJerkMag-mad()          
[37] tBodyGyroMag-std()             
[38] tBodyGyroMag-mad()             
[39] tBodyGyroJerkMag-std()         
[40] tBodyGyroJerkMag-mad()         
[41] fBodyAcc-mean()-Y              
[42] fBodyAcc-mean()-Z              
[43] fBodyAcc-std()-X               
[44] fBodyAcc-std()-Y               
[45] fBodyAcc-std()-Z               
[46] fBodyAcc-mad()-X               
[47] fBodyAcc-meanFreq()-Y          
[48] fBodyAcc-meanFreq()-Z          
[49] fBodyAcc-skewness()-X          
[50] fBodyAccJerk-mean()-Y          
[51] fBodyAccJerk-mean()-Z          
[52] fBodyAccJerk-std()-X           
[53] fBodyAccJerk-std()-Y           
[54] fBodyAccJerk-std()-Z           
[55] fBodyAccJerk-mad()-X           
[56] fBodyAccJerk-meanFreq()-Y      
[57] fBodyAccJerk-meanFreq()-Z      
[58] fBodyAccJerk-skewness()-X      
[59] fBodyGyro-mean()-Y             
[60] fBodyGyro-mean()-Z             
[61] fBodyGyro-std()-X              
[62] fBodyGyro-std()-Y              
[63] fBodyGyro-std()-Z              
[64] fBodyGyro-mad()-X              
[65] fBodyGyro-meanFreq()-Y         
[66] fBodyGyro-meanFreq()-Z         
[67] fBodyGyro-skewness()-X         
[68] fBodyAccMag-std()              
[69] fBodyAccMag-mad()              
[70] fBodyAccMag-skewness()         
[71] fBodyBodyAccJerkMag-std()      
[72] fBodyBodyAccJerkMag-mad()      
[73] fBodyBodyAccJerkMag-skewness() 
[74] fBodyBodyGyroMag-std()         
[75] fBodyBodyGyroMag-mad()         
[76] fBodyBodyGyroMag-skewness()    
[77] fBodyBodyGyroJerkMag-std()     
[78] fBodyBodyGyroJerkMag-mad()     
[79] fBodyBodyGyroJerkMag-skewness()