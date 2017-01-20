=============================================================================
# Human Activity Recognition Using Smartphones Dataset - Average Measurements
# Version 1.0
=============================================================================

## Initial Study Design
The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years.  

 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  

  
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured.  

  
The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.  


The magnitude of certain signal combinations were captured. 


All measurements were taken across a time and frequency domain.  


Several signals were captured during the study design:
* sensor signals - accelerometer, gyroscope
* sensor acceleration signal - gravitational, body
* jerk signal  
  
## Summary Design
One R script was created called run_analysis.R that does the following.
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
--- Any measurement variable with an original name containing "mean" or "std" were considered.
--- The only exception was a name containing "Freqmean", which was not considered to be a mean measurement, but rather a frequency
* Uses descriptive activity names to name the activities in the data set.
--- The activity descriptions replaced the original activity numbers
* Appropriately labels the data set with descriptive variable names.
** Each label was modified to spell out the signal, domain, etc.  
* Creates a second, independent tidy data text file with the average of each variable for each activity and each subject that meets the following principles:
** Each variable that is measured should be in one column
** Each different observation of that variable should be in a different row
** There should be one table for each "kind" of variable (Although, in this case the instructions specifically asked for one file)
** If there are multiple talbes, they should include a column in the table that allows them to be linked

## Packages required to run the R script:
* data.table
* lubridate
* dplyr
* reshape2

## For each record the following information is provided:

* A variable, called group_type, that indicates whether the summary mean was measured across subject number or activity
* A variable, called group_description, which indicates the subject number or activity description
* 73 variables across either subject number or activity that provide the average of each measurement

## This repo includes the following files:

* 'README.txt'

* A code book for the tidy.txt file which includes:
** Steps taken to transform the data and perform summaries
** A description, class and unit of measure of each column

* 'tidy.txt': The resulting dataset that includes the average of each variable for each activity and each subject.
** This file was uploaded to the Coursera website (and is not stored in the repot).
** The command for reading tidy.txt in R would be:
	data <- read.table("file_path/tidy.txt", header = TRUE)
    	View(data)

* 'run_analysis': The R script that contains the code for performing the analysis.  
** Significant comments were included within the script to define each step



