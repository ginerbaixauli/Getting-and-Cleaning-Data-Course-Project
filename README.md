# Getting and Cleaning Data Course Project

## Introduction
In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was collected and cleaned in order to prepare a tidy data set.
This repository contains the following files:
- average.txt, which contains the data set. 
- CodeBook.md, which describes the variables of the data set
- README.md, which provides an overview of the data set and how it was created. 
- run_analysis.R, the script used to create the data set

## Experiment design 
The data set used in this project was obtained from the Human Activity Recognition Using Smartphones Data Set.
The experiments were carried out with a group of 30 people aged 19 to 48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone. The obtained data set was partitioned into two sets, where 70% of the people was selected for generating the training data and 30% the test data.

Training and test data were merged together to create one data set, then the measurements on the mean and standard deviation were extracted for each measurement (79 variables extracted from the original 561), and then the measurements were averaged for each subject and activity, resulting in the final data set.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Data set 
The R script run_analysis.R can be used to create a clean and tidy data set. It gets the source data set and transforms it to produce the final tidy data set by implementing the following steps:
1. Loads the dplyr package.
2. Downloads and unzip the source data if it doesn't already exist. 
3. Reads the data. 
4. Merges the training and the test sets to create one data set. 
5. Extracts the mean and standard deviation for each measurement. 
6. Renames the activities in the data set. 
7. Labels the data set with descriptive variable names. 
8. Creates a new tidy data set with the average of each variable for each activity and subject. 
9. Saves the data set in the average.txt file.
