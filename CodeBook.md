#CodeBook for the Tidy Data Set
The tidydata.txt generated contains data that were captured from 30 test subjects doing 6 different activities wearing a Samsung Galaxy S2.

Values were measures and taken from the accelerometer and gyroscope.
Signals were captures at a constant rate of 50Hz and then were filtered and transformed by a Fast Fourier Transform.

For the purposes of this project, it was required that we only saved those variable information that contained the mean and standard deviation information. 

Then the data was sorted out according to the subject and activity.
The activities done are as follows:  
*WALKING
*WALKING_UPSTAIRS
*WALKING_DOWNSTAIRS
*SITTING
*STANDING
*LAYING

#Description of Data Steps
The original test and train data sets contained 561 variables with a total of 10,299 observations.
After grabbing only the mean and standard deviation variables we are left with a total of 79 Columns.
Adding in the subject IDs and the Activity Labels, theres a total of 81 columns.

Lastly, using the ddply function, I sorted the data according to the subjects and activity while applying a mean to each of the columns.

