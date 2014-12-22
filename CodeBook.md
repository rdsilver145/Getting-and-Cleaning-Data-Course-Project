I Original Data

The original data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

A brief description of the original data:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

======================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

======================================

II Variables used in project

The set of variables from the original data set used in the data set "meansignals.txt" are described below.

The number in [] is the column number of the variable in the data set.

Identification variables:

[1] "subject" - An anonymous number from 1-30 each representing an individual person (or subject) participating in the data gathering experiment.   

[2] "activity" - One of 6 activities carried out by the subjects:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
 
Measurement variables:

These correspond to the variables in the original data set with the suffixes:
mean(): Mean value
std(): Standard deviation

Each of the measurement variables below correspond to the variables in the original data set. In the original data set these variables represented one measurement calculated from the sensor data captured by the Samsung smartphone. The variables in "meansignals.txt" are all average values. The values are averaged over all of the samples for each measurement for each "subject" for each "activity"" where the "activity" is of the same type.   

All values are numeric and range between -1 and 1. There are no units. The orignial values were normalised.  

freq = frequency
Acc = accelerometer
Gyro = gyroscope

[3] "timeBodyAcc.mean.X"      
[4] "timeBodyAcc.mean.Y"
[5] "timeBodyAcc.mean.Z"
[6] "timeGravityAcc.mean.X"   
[7] "timeGravityAcc.mean.Y"    
[8] "timeGravityAcc.mean.Z"    
[9] "timeBodyAccJerk.mean.X"  
[10] "timeBodyAccJerk.mean.Y"   
[11] "timeBodyAccJerk.mean.Z"   
[12] "timeBodyGyro.mean.X"     
[13] "timeBodyGyro.mean.Y"      
[14] "timeBodyGyro.mean.Z"      
[15] "timeBodyGyroJerk.mean.X" 
[16] "timeBodyGyroJerk.mean.Y"  
[17] "timeBodyGyroJerk.mean.Z"  
[18] "timeBodyAccMag.mean"     
[19] "timeGravityAccMag.mean"   
[20] "timeBodyAccJerkMag.mean"  
[21] "timeBodyGyroMag.mean"    
[22] "timeBodyGyroJerkMag.mean" 
[23] "freqBodyAcc.mean.X"       
[24] "freqBodyAcc.mean.Y"      
[25] "freqBodyAcc.mean.Z"       
[26] "freqBodyAccJerk.mean.X"   
[27] "freqBodyAccJerk.mean.Y"  
[28] "freqBodyAccJerk.mean.Z"   
[29] "freqBodyGyro.mean.X"      
[30] "freqBodyGyro.mean.Y"     
[31] "freqBodyGyro.mean.Z"      
[32] "freqBodyAccMag.mean"      
[33] "freqBodyAccJerkMag.mean" 
[34] "freqBodyGyroMag.mean"     
[35] "freqBodyGyroJerkMag.mean" 
[36] "timeBodyAcc.std.X"       
[37] "timeBodyAcc.std.Y"        
[38] "timeBodyAcc.std.Z"        
[39] "timeGravityAcc.std.X"    
[40] "timeGravityAcc.std.Y"     
[41] "timeGravityAcc.std.Z"     
[42] "timeBodyAccJerk.std.X"   
[43] "timeBodyAccJerk.std.Y"    
[44] "timeBodyAccJerk.std.Z"    
[45] "timeBodyGyro.std.X"      
[46] "timeBodyGyro.std.Y"       
[47] "timeBodyGyro.std.Z"       
[48] "timeBodyGyroJerk.std.X"  
[49] "timeBodyGyroJerk.std.Y"   
[50] "timeBodyGyroJerk.std.Z"   
[51] "timeBodyAccMag.std"      
[52] "timeGravityAccMag.std"    
[53] "timeBodyAccJerkMag.std"   
[54] "timeBodyGyroMag.std"     
[55] "timeBodyGyroJerkMag.std"  
[56] "freqBodyAcc.std.X"        
[57] "freqBodyAcc.std.Y"       
[58] "freqBodyAcc.std.Z"        
[59] "freqBodyAccJerk.std.X"    
[60] "freqBodyAccJerk.std.Y"   
[61] "freqBodyAccJerk.std.Z"    
[62] "freqBodyGyro.std.X"       
[63] "freqBodyGyro.std.Y"      
[64] "freqBodyGyro.std.Z"       
[65] "freqBodyAccMag.std"       
[66] "freqBodyAccJerkMag.std"  
[67] "freqBodyGyroMag.std"      
[68] "freqBodyGyroJerkMag.std" 
