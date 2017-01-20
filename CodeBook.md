# Code Book
This code book summarizes the variables in the data set tidy.txt.  
Listed below are the measurements and identifiers in the tidy.txt data set.

## Transformation performed to clean up data

* Replaced activity numbers with activity descriptions
* Updated feature labels
* Perfomed a cbind and rbind to bring all data together from the training and test files
* Extracted only the columns that measured mean or standard deviation, removed the Freqmean columns
* Modified the column labels to be more descriptive
* Prepared data for calculations by performing the following:  Removed any rows with missing values (since all subjects should have performed every activity). Changed the class on all measurement variables from character to numeric.
* Performed averages across subject and activity
* Added columns for the grouping labels (to assign the appropriate indicators of "subject" or "activity")
* Using rbind, brought the subject and activity averages together into one file
* sorted data by group_type


## Identifiers

'group_type' - Identifies whether the measurement was performed on a subject_number or on an activity
* character field

'group_description' - Identifies the subject number or activity the measurement was performed on
* character field
* subject number - One of 30 volunteers within an age bracket of 19-48 years
* activity - Each subject performed the following six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

## Measurements

* 'time_body_acceleration_mean_Xaxis'
+ Average of the means measuring the body motion component (using an accelerometer) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_mean_Yaxis' 
+ Average of the means measuring the body motion component (using an accelerometer) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_mean_Zaxis' 
+ Average of the means measuring the body motion component (using an accelerometer) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_mean_Xaxis' 
+ Average of the means measuring the gravity motion component (using an accelerometer) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_mean_Yaxis' 
+ Average of the means measuring the gravity motion component (using an accelerometer) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_mean_Zaxis' 
+ Average of the means measuring the gravity motion component (using an accelerometer) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_mean_Xaxis' 
+ Average of the means measuring the body motion component with jerk signals (using an accelerometer) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_mean_Yaxis' 
+ Average of the means measuring the body motion component with jerk signals (using an accelerometer) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_mean_Zaxis' 
+ Average of the means measuring the body motion component with jerk signals (using an accelerometer) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_mean_Xaxis' 
+ Average of the means measuring the body motion component (using a gyroscope) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_mean_Yaxis' 
+ Average of the means measuring the body motion component (using a gyroscope) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_mean_Zaxis' 
+ Average of the means measuring the body motion component (using a gyroscope) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_mean_Xaxis' 
+ Average of the means measuring the body motion component with jerk signals (using a gyroscope) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_mean_Yaxis' 
+ Average of the means measuring the body motion component with jerk signals (using a gyroscope) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_mean_Zaxis' 
+ Average of the means measuring the body motion component with jerk signals (using a gyroscope) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_magnitude_mean' 
+ Average of the means measuring the magnitude of the gravity motion component (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component with jerk signals (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component (using a gyroscope) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component with jerk signals (using a gyroscope) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_mean_Xaxis' 
+ Average of the means measuring the body motion component (using an accelerometer) over the frequency domain in the X axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_acceleration_mean_Yaxis' 
+ Average of the means measuring the body motion component (using an accelerometer) over the frequency domain in the Y axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_acceleration_mean_Zaxis' 
+ Average of the means measuring the body motion component (using an accelerometer) over the frequency domain in the Z axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_acceleration_jerk_mean_Xaxis' 
+ Average of the means measuring the body motion component with jerk signals (using an accelerometer) over the frequency domain in the X axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_acceleration_jerk_mean_Yaxis' 
+ Average of the means measuring the body motion component with jerk signals (using an accelerometer) over the frequency domain in the Y axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_acceleration_jerk_mean_Zaxis' 
+ Average of the means measuring the body motion component with jerk signals (using an accelerometer) over the frequency domain in the Z axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_gyroscope_mean_Xaxis' 
+ Average of the means measuring the body motion component (using a gyroscope) over the frequency domain in the X axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_gyroscope_mean_Yaxis' 
+ Average of the means measuring the body motion component (using a gyroscope) over the frequency domain in the Y axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_gyroscope_mean_Zaxis' 
+ Average of the means measuring the body motion component (using a gyroscope) over the frequency domain in the Z axial direction
+ numeric field
+ unit of measure is FFT

* 'frequency_body_acceleration_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component (using an accelerometer) over the frequency domain
+ numeric field
+ unit of measure is FFT

* 'frequency_body_acceleration_jerk_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component with jerk signals (using an accelerometer) over the frequency domain
+ numeric field
+ unit of measure is FFT

* 'frequency_body_gyroscope_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component (using a gyroscope) over the frequency domain
+ numeric field
+ unit of measure is FFT

* 'frequency_body_gyroscope_jerk_magnitude_mean' 
+ Average of the means measuring the magnitude of the body motion component with jerk signals (using a gyroscope) over the frequency domain
+ numeric field
+ unit of measure is FFT

* 'angle_time_body_acceleration_mean' 
+ Average of the mean signals in a signal window sample for body motion component (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'angle_time_body_acceleration_jerk_mean' 
+ Average of the mean signals in a signal window sample for body motion component with jerk signals (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'angle_time_body_gyroscope_mean' 
+ Average of the mean signals in a signal window sample for body motion component (using a gyroscope) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'angle_time_body_gyroscope_jerk_mean' 
+ Average of the mean signals in a signal window sample for body motion component with jerk signals (using a gyroscope) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'angle_Xaxis_mean' 
+ Average of the mean signals in a signal window sample in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'angle_Yaxis_mean' 
+ Average of the mean signals in a signal window sample in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'angle_Zaxis_mean' 
+ Average of the mean signals in a signal window sample in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_stddev_Xaxis' 
+ Average of the standard deviations measuring the body motion component (using an accelerometer) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_stddev_Yaxis' 
+ Average of the standard deviations measuring the body motion component (using an accelerometer) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_stddev_Zaxis' 
+ Average of the standard deviations measuring the body motion component (using an accelerometer) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_stddev_Xaxis' 
+ Average of the standard deviations measuring the gravity motion component (using an accelerometer) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_stddev_Yaxis' 
+ Average of the standard deviations measuring the gravity motion component (using an accelerometer) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_stddev_Zaxis' 
+ Average of the standard deviations measuring the gravity motion component (using an accelerometer) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_stddev_Xaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using an accelerometer) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_stddev_Yaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using an accelerometer) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_stddev_Zaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using an accelerometer) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_stddev_Xaxis' 
+ Average of the standard deviations measuring the body motion component (using a gyroscope) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_stddev_Yaxis' 
+ Average of the standard deviations measuring the body motion component (using a gyroscope) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_stddev_Zaxis' 
+ Average of the standard deviations measuring the body motion component (using a gyroscope) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_stddev_Xaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using a gyroscope) over the time domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_stddev_Yaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using a gyroscope) over the time domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_stddev_Zaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using a gyroscope) over the time domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'time_gravity_acceleration_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'time_body_acceleration_jerk_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component with jerk signals (using an accelerometer) over the time domain
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component (using a gyroscope) over the frequency domain
+ numeric field
+ Unit of measure = Hz

* 'time_body_gyroscope_jerk_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component with jerk signals (using a gyroscope) over the frequency domain
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_stddev_Xaxis' 
+ Average of the standard deviations measuring the body motion component (using an accelerometer) over the frequency domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_stddev_Yaxis' 
+ Average of the standard deviations measuring the body motion component (using an accelerometer) over the frequency domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_stddev_Zaxis' 
+ Average of the standard deviations measuring the body motion component (using an accelerometer) over the frequency domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_jerk_stddev_Xaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using an accelerometer) over the frequency domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_jerk_stddev_Yaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using an accelerometer) over the frequency domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_jerk_stddev_Zaxis' 
+ Average of the standard deviations measuring the body motion component with jerk signals (using an accelerometer) over the frequency domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_gyroscope_stddev_Xaxis' 
+ Average of the standard deviations measuring the body motion component (using a gyroscope) over the frequency domain in the X axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_gyroscope_stddev_Yaxis' 
+ Average of the standard deviations measuring the body motion component (using a gyroscope) over the frequency domain in the Y axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_gyroscope_stddev_Zaxis' 
+ Average of the standard deviations measuring the body motion component (using a gyroscope) over the frequency domain in the Z axial direction
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component (using an accelerometer) over the frequency domain
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_acceleration_jerk_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component with jerk signals (using an accelerometer) over the frequency domain
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_gyroscope_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component (using a gyroscope) over the frequency domain
+ numeric field
+ Unit of measure = Hz

* 'frequency_body_gyroscope_jerk_magnitude_stddev' 
+ Average of the standard deviations measuring the magnitude of the body motion component with jerk signals (using a gyroscope) over the frequency domain
+ numeric field
+ Unit of measure = Hz