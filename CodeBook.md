##Code Book
This code book is a summary of the activities performed on the data and fields contained in the final resultant dataset called tidy.txt. This dataset is a derivitive of the "Human Activity Recognition Using Smartphones Data Set" found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The code in file run_analysis.R carries out 6 major tasks as defined in the project's question.
*Reads the training and test datasets.
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement. 
*Names the activities in the data set with descriptive activity names
*Labels the data set with descriptive variable names. 
*Creates a second, independent tidy data set with the average of each variable for each activity and each subject called tidy.txt.

###Dataset Identifiers
*subject - The ID number of the test subject
*activity - The activity type that was carried out at the time  the maatching measurements was taken

###Dataset Measurements
For all fields in this dataset, the prefix 't' denotes time while 'f' denotes frequency domain signals. 'X,Y,Z' represents the 3~axial signals in the X, Y and Z directions, while Mean=mean of each measuremnt and Std=Standard deviation. Furthermore,Acc=accelerometer;Gyro=gyroscope. The acceleration signal was separated into body and gravity acceleration signals (tBodyAcc~XYZ and tGravityAcc~XYZ).
Jerk signals were obatined which gives us(tBodyAccJerk~XYZ and tBodyGyroJerk~XYZ) and similarly the magnitude of these three~dimensional signals were calculated giving rise to(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Thereafter, Fast Fourier Transformation was applied to some of these signals giving rise to fBodyAcc~XYZ, fBodyAccJerk~XYZ, fBodyGyro~XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.
Therefore variables that contain 'Mean' implies the mean of those measurement while those that contain 'Std' implies the standard deviation of those measurents.

*tBodyAccMeanX
*tBodyAccMeanY
*tBodyAccMeanZ
*tBodyAccStdX
*tBodyAccStdY
*tBodyAccStdZ
*tGravityAccMeanX
*tGravityAccMeanY
*tGravityAccMeanZ
*tGravityAccStdX
*tGravityAccStdY
*tGravityAccStdZ
*tBodyAccJerkMeanX
*tBodyAccJerkMeanY
*tBodyAccJerkMeanZ
*tBodyAccJerkStdX
*tBodyAccJerkStdY
*tBodyAccJerkStdZ
*tBodyGyroMeanX
*tBodyGyroMeanY
*tBodyGyroMeanZ
*tBodyGyroStdX
*tBodyGyroStdY
*tBodyGyroStdZ
*tBodyGyroJerkMeanX
*tBodyGyroJerkMeanY
*tBodyGyroJerkMeanZ
*tBodyGyroJerkStdX
*tBodyGyroJerkStdY
*tBodyGyroJerkStdZ
*tBodyAccMagMean
*tBodyAccMagStd
*tGravityAccMagMean
*tGravityAccMagStd
*tBodyAccJerkMagMean
*tBodyAccJerkMagStd
*tBodyGyroMagMean
*tBodyGyroMagStd
*tBodyGyroJerkMagMean
*tBodyGyroJerkMagStd
*fBodyAccMeanX
*fBodyAccMeanY
*fBodyAccMeanZ
*fBodyAccStdX
*fBodyAccStdY
*fBodyAccStdZ
*fBodyAccMeanFreqX
*fBodyAccMeanFreqY
*fBodyAccMeanFreqZ
*fBodyAccJerkMeanX
*fBodyAccJerkMeanY
*fBodyAccJerkMeanZ
*fBodyAccJerkStdX
*fBodyAccJerkStdY
*fBodyAccJerkStdZ
*fBodyAccJerkMeanFreqX
*fBodyAccJerkMeanFreqY
*fBodyAccJerkMeanFreqZ
*fBodyGyroMeanX
*fBodyGyroMeanY
*fBodyGyroMeanZ
*fBodyGyroStdX
*fBodyGyroStdY
*fBodyGyroStdZ
*fBodyGyroMeanFreqX
*fBodyGyroMeanFreqY
*fBodyGyroMeanFreqZ
*fBodyAccMagMean
*fBodyAccMagStd
*fBodyAccMagMeanFreq
*fBodyBodyAccJerkMagMean
*fBodyBodyAccJerkMagStd
*fBodyBodyAccJerkMagMeanFreq
*fBodyBodyGyroMagMean
*fBodyBodyGyroMagStd
*fBodyBodyGyroMagMeanFreq
*fBodyBodyGyroJerkMagMean
*fBodyBodyGyroJerkMagStd
*fBodyBodyGyroJerkMagMeanFreq


###Dataset Activity Labels
*WALKING; subject was walking during the test (value=1)
*WALKING_UPSTAIRS; subject was walking up a staircase during the test (value=2)
*WALKING_DOWNSTAIRS; subject was walking down a staircase during the test (value=3)
*SITTING; subject was sitting during the test (value=4)
*STANDING; subject was standing during the test (value=5)
*LAYING; subject was laying down during the test (value=6)