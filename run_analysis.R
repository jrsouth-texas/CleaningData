# set workingdirectory
setwd("C:/data/UCI HAR Dataset/")

# First step, we'll load into dataframes our training data
training_X = read.csv("train/X_train.txt", sep="", header=FALSE)
training_Y = read.csv("train/Y_train.txt", sep="", header=FALSE)
training_Sbj = read.csv("train/subject_train.txt", sep="", header=FALSE)

# Nexr we'll load our testing data
testing_X = read.csv("test/X_test.txt", sep="", header=FALSE)
testing_Y = read.csv("test/Y_test.txt", sep="", header=FALSE)
testing_Sbj = read.csv("test/subject_test.txt", sep="", header=FALSE)

# Let's finish up reading in our data from the data source

features = read.csv("features.txt", sep="", header=FALSE)

#Now, let's take care of all the merging of the data
#First, we'll combine the test and training data by columns to create two large datasets

training_data <- cbind(training_X, training_Y, training_Sbj)
test_data     <- cbind(testing_X, testing_Y, testing_Sbj)

#now we'll merge both data sets into one very large dataset

mergedData <- rbind(training_data, test_data)


# We only need the features that contain mean and std in their name, but first we have to change class of
# of the second column to character.

features[,2] = gsub('', '', features[,2])
newFeaturesCols <- grep(".*Mean.*|.*Std.*",ignore.case = TRUE, features[,2])

# Isolate the mean and standard deviation
newFeatures <- features[newFeaturesCols,]

# We can now postpend two aditional columns
newFeaturesCols <- c(newFeaturesCols, 562, 563)

# we can now pull the data that we need for the rest of the exercise
mergedData <- mergedData[,newFeaturesCols]

# join data with the new labels "Activity" and "Subject"

colnames(mergedData) <- c(newFeatures$V2, "Activity", "Subject")

# compute independent tidy data set with the average of each variable for each activity and each subject
tidy<-aggregate(mergedData[,1:ncol(mergedData)],list(Subject=mergedData$Subject, Activity=mergedData$Activity), mean)
tidy<-tidy[order(tidy$Subject),]


# We can load the activity labels from the provided file
#activity_labels<-read.table("activity_labels.txt")["V2"]
activity_lables <- read.csv("activity_labels.txt", sep = " ", header = FALSE)
tidy$Activity<-activity_labels[tidy$Activity, ]

# Drop last two columns as we now longer need them 
tidy[,89] = NULL
tidy[,89] = NULL

tidy<-tidy[order(tidy$Activity),]

# We'll save our results back to our UCR directory
setwd("./")
write.table(tidy, "tidy.txt", row.name=FALSE, sep="\t")
