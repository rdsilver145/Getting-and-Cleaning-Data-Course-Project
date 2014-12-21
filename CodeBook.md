The origingal data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

A description of the original data:

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




The set of variables from the original data set used in the data set "meansignals.txt" are: 

Identifcation variables:

[1] "subject" - An anonymous number from 1-30 each representing an individual person (or subject) participating in the data gathering experiment.   

[2] "activity" - One of 6 activities carried out by the subjects:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
 

Measurement variables

mean(): Mean value
std(): Standard deviation

Each of the measurement variables below correspond to the variables in the original dataset. In the original data set these variables represented one measurement calculated from the sensor data. The variables in "meansignals.txt" are the average values of all measurements for each "subject" for each activity of the same type.   

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
