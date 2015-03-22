Codebook


Data Source

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Variables

The below is a list of variables and their explanations contained within the output dataset.

subject

A number representing the subject being recorded performing the activity

activity

The data were supplied through the URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The activity the subject was performing six activities where values were recorded (in addition to some caluclated variables):

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING
Calculated Variables

All of the variables in this section are the average recorded for the given subject while performing the activity specified.

The variables listed here represent the mean (and have .mean appended to the filename) and the standard deviation (with std appended).  These are measuring the triaxial body acceleration. 

tBodyAcc.mean.X		tBodyAcc.std.X		tGravityAcc.mean.X		tGravityAcc.std.X
tBodyAcc.mean.Y		tBodyAcc.std.Y		tGravityAcc.mean.Y		tGravityAcc.std.Y
tBodyAcc.mean.Z		tBodyAcc.std.Z		tGravityAcc.mean.Z		tGravityAcc.std.Z

tBodyAccJerk.mean.X	tBodyAccJerk.std.X	fBodyAcc.mean.X			fBodyAcc.std.X
tBodyAccJerk.mean.Y	tBodyAccJerk.std.Y	fBodyAcc.mean.Y			fBodyAcc.std.Y
tBodyAccJerk.mean.Z	tBodyAccJerk.std.Z	fBodyAcc.mean.Z			fBodyAcc.std.Z

fBodyAccJerk.mean.X	fBodyAccJerk.std.X
fBodyAccJerk.mean.Y	fBodyAccJerk.std.Y
fBodyAccJerk.mean.Z	fBodyAccJerk.std.Z

Likewise, Those variables that represent the mean have .mean appendd to the filename and those measuring standard deviation have std appended.  These are measuring the triaxial Angular velocity from the gyroscope.. 

tBodyGyro.mean.X	tBodyGyro.std.X		tBodyGyroJerk.mean.X		tBodyGyroJerk.std.X
tBodyGyro.mean.Y	tBodyGyro.std.Y		tBodyGyroJerk.mean.Y		tBodyGyroJerk.std.Y
tBodyGyro.mean.Z	tBodyGyro.std.Z		tBodyGyroJerk.mean.Z		tBodyGyroJerk.std.Z

fBodyGyro.mean.X	fBodyGyro.std.X		
fBodyGyro.mean.Y	fBodyGyro.std.Y
fBodyGyro.mean.Z	fBodyGyro.std.Z

Finally, those variables that represent the mean have .mean appendd to the filename and those measuring estimated body acceleration while performing the activity.

tBodyAccMag.mean	tGravityAccMag.mean	tBodyAccJerkMag.mean		tBodyGyroMag.mean
tBodyAccMag.std		tGravityAccMag.std	tBodyAccJerkMag.std		tBodyGyroMag.st

tBodyGyroJerkMag.mean	fBodyAccMag.mean	fBodyBodyAccJerkMag.mean	fBodyBodyGyroMag.mean
tBodyGyroJerkMag.std	fBodyAccMag.std		fBodyBodyAccJerkMag.std		fBodyBodyGyroMag.std

fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.std