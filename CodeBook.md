#CodeBook for the Tidy Data Set
The tidydata.txt generated contains data that were captured from 30 test subjects doing 6 different activities wearing a Samsung Galaxy S2.

Values were measures and taken from the accelerometer and gyroscope.
Signals were captures at a constant rate of 50Hz and then were filtered and transformed by a Fast Fourier Transform.

For the purposes of this project, it was required that we only saved those variable information that contained the mean and standard deviation information. 

Then the data was sorted out according to the subject and activity.
The activities done are as follows:

WALKING

WALKING_UPSTAIRS

WALKING_DOWNSTAIRS

SITTING

STANDING

LAYING
#Feature Selection 
(Based on the features_info.txt)

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

#Description of Data Steps
The original test and train data sets contained 561 variables with a total of 10,299 observations.
After grabbing only the mean and standard deviation variables we are left with a total of 79 Columns.
Adding in the subject IDs and the Activity Labels, theres a total of 81 columns.

Lastly, using the ddply function, I sorted the data according to the subjects and activity while applying a mean to each of the columns.

