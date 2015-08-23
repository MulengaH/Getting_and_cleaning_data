#setwd("C:/Users/01420965/Documents/Coursera/ReadingData/Project")
library(reshape2)
# Load activity labels and features
#==================================
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extract data on mean and standard deviation only and appropriately substitute names
#====================================================================================
requiredData <- grep(".*mean.*|.*std.*", features[,2])
requiredData.names <- features[requiredData,2]
requiredData.names = gsub('-mean', 'Mean', requiredData.names)
requiredData.names = gsub('-std', 'Std', requiredData.names)
requiredData.names <- gsub('[-()]', '', requiredData.names)

# Load and read the training and test datasets
#=============================================
train <- read.table("UCI HAR Dataset/train/X_train.txt")[requiredData]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)
test <- read.table("UCI HAR Dataset/test/X_test.txt")[requiredData]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merge the datasets and add labels
#==================================
mergedData <- rbind(train, test)
colnames(mergedData) <- c("subject", "activity", requiredData.names)

# Change activities  and subjects into factors
#==============================================
mergedData$activity <- factor(mergedData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
mergedData$subject <- as.factor(mergedData$subject)
mergedData.melted <- melt(mergedData, id = c("subject", "activity"))
mergedData.mean <- dcast(mergedData.melted, subject + activity ~ variable, mean)

# Extract a tidy data set called tidy.txt
#========================================
write.table(mergedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
