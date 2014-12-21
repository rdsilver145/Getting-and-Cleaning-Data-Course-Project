##The scripts in this file are applied to the data sets located at:
##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


##At a high level the scripts do the following: 
##1.Merge the training and the test sets to create one data set.
##2.Extract only the measurements on the mean and standard deviation for each measurement. 
##3.Apply descriptive activity names to name the activities in the data set.
##4.Appropriately label the data set with descriptive variable names. 
##5.From the data set in step 4, create a second, independent tidy data set with
##  the average of each variable for each activity and each subject.

##Load libraries to be used for anlaysis

library(dplyr)
library(reshape2)

##Get the path to the working directory
workingdir <- getwd()

##file path to root directory of local data file folder
file_path_root = workingdir

##read the file containing the variable names of the features
##in the training and test sets

file_path = paste0(file_path_root, "/UCI HAR Dataset/features.txt")

feature_names <- read.table(file_path, sep=" ", colClasses = "character", header= FALSE) 

features <- as.vector(feature_names[,2])

##read the files containing the activity codes and subject ids of the features
##in the training set

file_path = paste0(file_path_root, "/UCI HAR Dataset/train/y_train.txt")

trainActivity <- read.table(file_path, col.names="activity", header= FALSE) 

file_path = paste0(file_path_root,"/UCI HAR Dataset/train/subject_train.txt")

trainSubject <- read.table(file_path, col.names="subject", header= FALSE) 

##read the files containing the activity codes and subject ids of the features
##in the testing set

file_path = paste0(file_path_root, "/UCI HAR Dataset/test/y_test.txt")

testActivity <- read.table(file_path, col.names="activity", header= FALSE) 

file_path = paste0(file_path_root,"/UCI HAR Dataset/test/subject_test.txt")

testSubject <- read.table(file_path, col.names="subject", header= FALSE) 


##read the training and test sets

file_path = paste0(file_path_root,"/UCI HAR Dataset/train/X_train.txt")

trainData <- read.table(file_path,col.names=features,header = FALSE)

file_path = paste0(file_path_root,"/UCI HAR Dataset/test/X_test.txt")

testData <- read.table(file_path, col.names=features, header = FALSE)

##add the activity codes and subject ids of the features 
##to the training and sets

trainData2 <- cbind(trainSubject,trainActivity,trainData)

testData2 <- cbind(testSubject,testActivity,testData)

##merge training and test sets

mergedData <- rbind(trainData2,testData2)

##create a new data set by extracting only the measurements on
##the mean and standard deviation for each measurement (including id variables). 

meanvalues <- mergedData[, grepl("mean\\.", names(mergedData))] 

stddev <- mergedData[, grepl("std()", names(mergedData))]

stdandmean <- cbind(mergedData$subject,mergedData$activity,meanvalues,stddev)

##change activity codes to descriptive activity names

##read in activity labels

file_path = paste0(file_path_root, "/UCI HAR Dataset/activity_labels.txt")

activity_names <- read.table(file_path, sep=" ", colClasses = "character", header= FALSE) 

activities <- as.vector(activity_names[,2])

##replace activity codes with activity names

stdandmean[,2] <- activities[stdandmean[,2]] 

##Modify variable names so that they are more descriptive

##clean up names with errors and artifacts from transformations

colnames(stdandmean)[1] <- "subject"

colnames(stdandmean)[2] <- "activity"

colnames(stdandmean) <- gsub("BodyBody", "Body", colnames(stdandmean)) 

##Expand vague abbreviations

colnames(stdandmean) <- gsub("tBody", "timeBody", colnames(stdandmean)) 

colnames(stdandmean) <- gsub("tGravity", "timeGravity", colnames(stdandmean)) 

colnames(stdandmean) <- gsub("fBody", "freqBody", colnames(stdandmean)) 

colnames(stdandmean) <- gsub("mean\\..", "mean", colnames(stdandmean)) 

colnames(stdandmean) <- gsub("std\\..", "std", colnames(stdandmean)) 

##create a new tidy data set with 
##the average of each variable for each activity and each subject.

sigmelt <- melt(stdandmean,id=c("subject","activity"),measure.vars=names(stdandmean)[3:68])

sigcast <- dcast(sigmelt, subject+activity ~variable,mean)

## write sigcast to a text file for submission

write.table(sigcast, file ="meansignals.txt", row.name=FALSE)


