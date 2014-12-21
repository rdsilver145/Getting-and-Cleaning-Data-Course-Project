Getting-and-Cleaning-Data-Course-Project
========================================

I. Overview

II. Contents of repo

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

2. Copy the upzipped folder structer to your R working directory

3. In RStudio run the scripts in run_analysis.R one section at a time (the entire file can be submitted to run, but running step by step will give a better appreciation of of changes to the data)


Note: No manual manipulation of the data is necessary

The documentation inside the run_analysis.R explains what is done at each stage of the scripts.

