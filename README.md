# Getting and Cleaning Data - Coursera Course Project

This is the last requirement for the Getting and Cleaning Data Module in the Data Science Specialization
The purpose of this requirement is to demostrate the ability to collect, work with and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. 

## Dataset
The dataset that would be used is the datasets from Human Activity Recognition using Smartphones
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Requirements
Included in this repository are the following requirements:

* README.md - explains how the script works
* CodeBook.md  - describes the variables and the data
* run_analysis.R - merge, extract and clean the data
* tidy_data.txt - result of the manipulations done by run_analysis.R