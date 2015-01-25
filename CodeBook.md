Feature Selection 
=================

###Description of the dataset "average_activity.txt":

The tidy dataset showed in "average_activity.txt" displays 88 variables:

1. 'SUBJECT': This is an integer variable, ranging from 1 to 30, indicating the subject.

2. 'ACTIVITY': This is a character variable describing the activity of the subject
during which the measurements were made. There are 6 activity levels: "walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying". 

3. 86 numeric variables: These variables correspond to the measurements available in the
"Samsung data" that indicates a mean or a standard deviation value. Note that the 
numerical values in the dataset "average_activity.txt" corresponds to the mean of those 
measurements.

[1] "tBodyAcc-mean()-X"                   
 [2] "tBodyAcc-mean()-Y"                   
 [3] "tBodyAcc-mean()-Z"                   
 [4] "tBodyAcc-std()-X"                    
 [5] "tBodyAcc-std()-Y"                    
 [6] "tBodyAcc-std()-Z"                    
 [7] "tGravityAcc-mean()-X"                
 [8] "tGravityAcc-mean()-Y"                
 [9] "tGravityAcc-mean()-Z"                
[10] "tGravityAcc-std()-X"                 
[11] "tGravityAcc-std()-Y"                 
[12] "tGravityAcc-std()-Z"                 
[13] "tBodyAccJerk-mean()-X"               
[14] "tBodyAccJerk-mean()-Y"               
[15] "tBodyAccJerk-mean()-Z"               
[16] "tBodyAccJerk-std()-X"                
[17] "tBodyAccJerk-std()-Y"                
[18] "tBodyAccJerk-std()-Z"                
[19] "tBodyGyro-mean()-X"                  
[20] "tBodyGyro-mean()-Y"                  
[21] "tBodyGyro-mean()-Z"                  
[22] "tBodyGyro-std()-X"                   
[23] "tBodyGyro-std()-Y"                   
[24] "tBodyGyro-std()-Z"                   
[25] "tBodyGyroJerk-mean()-X"              
[26] "tBodyGyroJerk-mean()-Y"              
[27] "tBodyGyroJerk-mean()-Z"              
[28] "tBodyGyroJerk-std()-X"               
[29] "tBodyGyroJerk-std()-Y"               
[30] "tBodyGyroJerk-std()-Z"               
[31] "tBodyAccMag-mean()"                  
[32] "tBodyAccMag-std()"                   
[33] "tGravityAccMag-mean()"               
[34] "tGravityAccMag-std()"                
[35] "tBodyAccJerkMag-mean()"              
[36] "tBodyAccJerkMag-std()"               
[37] "tBodyGyroMag-mean()"                 
[38] "tBodyGyroMag-std()"                  
[39] "tBodyGyroJerkMag-mean()"             
[40] "tBodyGyroJerkMag-std()"              
[41] "fBodyAcc-mean()-X"                   
[42] "fBodyAcc-mean()-Y"                   
[43] "fBodyAcc-mean()-Z"                   
[44] "fBodyAcc-std()-X"                    
[45] "fBodyAcc-std()-Y"                    
[46] "fBodyAcc-std()-Z"                    
[47] "fBodyAcc-meanFreq()-X"               
[48] "fBodyAcc-meanFreq()-Y"               
[49] "fBodyAcc-meanFreq()-Z"               
[50] "fBodyAccJerk-mean()-X"               
[51] "fBodyAccJerk-mean()-Y"               
[52] "fBodyAccJerk-mean()-Z"               
[53] "fBodyAccJerk-std()-X"                
[54] "fBodyAccJerk-std()-Y"                
[55] "fBodyAccJerk-std()-Z"                
[56] "fBodyAccJerk-meanFreq()-X"           
[57] "fBodyAccJerk-meanFreq()-Y"           
[58] "fBodyAccJerk-meanFreq()-Z"           
[59] "fBodyGyro-mean()-X"                  
[60] "fBodyGyro-mean()-Y"                  
[61] "fBodyGyro-mean()-Z"                  
[62] "fBodyGyro-std()-X"                   
[63] "fBodyGyro-std()-Y"                   
[64] "fBodyGyro-std()-Z"                   
[65] "fBodyGyro-meanFreq()-X"              
[66] "fBodyGyro-meanFreq()-Y"              
[67] "fBodyGyro-meanFreq()-Z"              
[68] "fBodyAccMag-mean()"                  
[69] "fBodyAccMag-std()"                   
[70] "fBodyAccMag-meanFreq()"              
[71] "fBodyBodyAccJerkMag-mean()"          
[72] "fBodyBodyAccJerkMag-std()"           
[73] "fBodyBodyAccJerkMag-meanFreq()"      
[74] "fBodyBodyGyroMag-mean()"             
[75] "fBodyBodyGyroMag-std()"              
[76] "fBodyBodyGyroMag-meanFreq()"         
[77] "fBodyBodyGyroJerkMag-mean()"         
[78] "fBodyBodyGyroJerkMag-std()"          
[79] "fBodyBodyGyroJerkMag-meanFreq()"     
[80] "angle(tBodyAccMean,gravity)"         
[81] "angle(tBodyAccJerkMean),gravityMean)"
[82] "angle(tBodyGyroMean,gravityMean)"    
[83] "angle(tBodyGyroJerkMean,gravityMean)"
[84] "angle(X,gravityMean)"                
[85] "angle(Y,gravityMean)"                
[86] "angle(Z,gravityMean)"

###Variable description:

Here is a short description of the meaning of these variables. (EXTRACT, FOR THE MOST 
PART, FROM THE "features_info.txt" CONTAINED IN THE 'Samsung_Data' DIRECTORY).

The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove 
noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time 
to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of 
these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag,
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
angle(): Angle between to vectors  

Additional vectors obtained by averaging the signals in a signal window sample. These are 
used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  



Analysis
========

The analysis performed by the "run_analysis.R" which produces the tidy dataset 
"average_activity.txt" does the following.

0. Downloads the zip file containing the data from the UCI url 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'. Creates a directory "Samsung_Data" in the working directory, unzips the downloaded zip file and stores its content in the directory "Samsung_Data".


1. Opens and extracts the training and test "X" datasets, and "y" datasets, contained in the directory "Samsung_Data". Then merges these datasets all together to a single dataset "DF".


2. Appropriately relabels the merged dataset "DF" with the more descriptive variable names contained in the txt file "features.txt". Then extracts from the dataset "DF" all the variables corresponding to "mean" and "standard deviation" measurements. The extracted dataset is assigned to the variable "DF". 


3. Replaces the integer value, ranging from 1 to 6, indicating the activity ("ACTIVITY" column) in the dataset "DF" with descriptive activity names contained in the txt file "activity_lables.txt". These descriptive activity names are: "walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying".


4. Creates an independent tidy dataset assigned to the variable "average_activity". The dataset "average_activity" displays the average of each variable showed in the dataset "DF", for each activity and each subject. The tidy dataset "average_activity" is then stored in a txt file called "average_activity.txt". 