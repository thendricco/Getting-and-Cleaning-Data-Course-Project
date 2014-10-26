# Create one R Script called run_analysis.R that does the following:
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Script is to be run from the base directory of the data set given.

if(!require("plyr")){
        install.packages("plyr")
}

# Read- Variable Names
features  <-  read.table("features.txt")[,2]

# Read - Activity Labels
activity_labels  <-  read.table("activity_labels.txt")[,2]

# Taking only the mean and standard deviation measurements putting it to a logical vector
MeanAndStd  <- grepl("mean()|std()", features)

#-----Reading Test Data information-----

x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

#Naming the columns with the variable names
colnames(x_test) <- features
colnames(subject_test) <- "subject"

#Taking only the required columns
x_test <- x_test[,MeanAndStd]

#Naming the activity with the activity labels
y_test[,2] <- activity_labels[y_test[,1]]
colnames(y_test) <- c("ID","activity")
activity <- y_test[,2]

#Combining the data
testdata <- cbind(subject_test,x_test,activity)

#-----Reading in training data-----

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

#Naming the columns with the variable names
colnames(x_train) <- features
colnames(subject_train) <- "subject"

#Taking only the required columns
x_train <- x_train[,MeanAndStd]

#Naming the activity with the activity labels
y_train[,2] <- activity_labels[y_train[,1]]
colnames(y_train) <- c("ID","activity")
activity <- y_train[,2]

#Combining the data
traindata <- cbind(subject_train,x_train,activity)

#-----Combine both sets of data-----
merged_data <- rbind(testdata,traindata)

#-----To calculate the mean of the variables based on subject and activity-----
tidydata <- ddply(merged_data,.(subject,activity),numcolwise(mean))

#-----Output data to file for upload or inspection-----
write.table(tidydata,file="tidydata.txt", row.name=FALSE)
