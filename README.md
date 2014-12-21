Getting-and-Cleaning-Data-Course-Project
========================================

I. Overview

The purpose of this project is to demonstrate ones ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

The data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


II. contents of repo
1. This file README.md
2. The script for creating a tidy data set named "run_analysis.R"
3. A code book describing the variables in the tidy data set named "CodeBook.md"

III. run_analysis.R

I created an R script called run_analysis.R that at a high level does the following: 


1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names. 
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


To use run_analysis.R:

1. Download the following:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Copy the upzipped folder structure to your R working directory

3. In RStudio run the scripts in run_analysis.R one section at a time (the entire file can be submitted to run, but running step by step will give a better appreciation of of changes to the data)


Note: No manual manipulation of the data is necessary

The documentation inside the run_analysis.R explains what is done at each stage of the scripts.

Below is an overview of the approach for each of the stages.

1.  Merging the training and the test sets
  The identification variables ("subject" and "activity") for both the training and test sets that were stored in seperate files from the measurement variables. Therfore before merging the training and the test sets the identification variables were added to the files containting the measuremtn variables.   

2.  Extracting variables  
  Once the test and training sets were merged the variables that contained means and standard deviations for each measurement were extracted and copied into a new data set. Mean mearsurements and standard deviation measurement wer extracted into seperate data sets and those datsets were then combined.

3.  Adding descriptive activity names
The "activity" variable was represented by activity codes (i.e. numbers 1 to 6). These descriptive names for these codes were stored in a file supplied with the orignial data set. The codes were replaced with these labels.

4.  Appropriately label data set with descriptive variable names. 
The variable names supplied in a file with the original data set were extracted and used as a starting point. The variable names were then modified so that they are more descriptive. Names with errors were corrected and name changes resulting from transformations in the script were also corrected. Finally cryptic abbreivations contained in the names were expended to be more meaningful.


5.  From the data set in step 4 a new independent tidy data set with the average of each variable for each activity and each subject was created. This was achieved using the melt and dcast function from the reshape2 library.


The tidy data set named "meansignals.txt" was then written to a text file using the write.table funciton with row.name=FALSE. This file was uploaded for submission using Coursera.
