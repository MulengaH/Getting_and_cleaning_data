## Getting and Cleaning Data: Course Project

### Introduction
This repository contains my work for the "Getting and Cleaning data", project course, the third part of the Data Science specialization. 
The purpose of this project is to demonstrate the student's ability to collect, work with, and clean a dataset with the ultimate goal of preparing a tidy dataset.
The main tasks associated with this project are that the student should:
* submit a tidy data set that can be used for later analyis
* submit a link to a Github repository that contains the script for performing the analysis, and
* submit a code book that describes the variables, the data, and any transformations performed to clean up the data called CodeBook.md as well as include a README.md file (this document) which explains how all the scripts work and how they are connected.

### The raw data
This data represent data collected from the accelerometers from the Samsung Galaxy SII smartphone. For a full description, please refer to the url below.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
However, briefly, the features (561) are not labeled and can be found in the x_test.txt while the activity labels are in the y_test.txt file. The test subjects are found in the subject_test.txt file. Similary, this applies to the training set as well.

### The analysis script and final tidy dataset
As per the instructions, the code for performing the anlysis is stored in a file named run_analysis.R. This script perfoms the following activities:
*Reads the training and test datasets.
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement. 
*Names the activities in the data set with descriptive activity names
*Labels the data set with descriptive variable names. 
*Creates a second, independent tidy data set with the average of each variable for each activity and each subject called tidy.txt.
 
In order for this script to run correctly, the UCI HAR Dataset.zip file must be extracted and ensure that the directory is called "UCI HAR Dataset" and is located in the working directory

### The code book
The CodeBook.md file explains the resultant data, variables and ransformations carried out.

