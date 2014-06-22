Code Book: Getting and cleaning data course assignment
===============================================
Jared Bowden


Description
--------------
The source data described in this exercise was obtained from a study [1] which used Samsung Galaxy S II smartphones to quantify the 3-axial linear acceleration and 3-axial angular velocity of 30 human participants (aged 19-48) engaged in 6 of the following activities: walking, walking upstairs, walking down stairs, sitting, standing, and laying. 


The source data used in this exercise can be found at the following address:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/


A complete description of this dataset is available at the following address: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Reference
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


Study Design
-----------------
The source data was subdivided into two groups: 70% of participants were assigned to a “training”group, 30% of participants were assigned to a “test” group. This data, and additional descriptive information was  following files:


Within ./
README.txt: A description of the source data
features_info.txt: A description of the measured variables and statistical transformations
features.txt: A list of the measured variables
activity_labels.txt: A description of the 6 quantified activities, and their index values, as referenced in the data 
./test
./train


Within ./test
subject_test.txt: A list of subject codes
X_test.txt: Data for the test group
y_test.txt: Labels for the the test group 
./Inertial Signals: not used


Within ./train
subject_train.txt: A list of subject codes
X_train.txt: data for the train group 
y_train.txt: Labels for the train group
./Inertial Signals: not used


Data transformations
---------------------------
Data from the test and training data sets were first merged; additional columns were added to merge information from the subject label and activity label files. Variables in the dataset were then truncated to include columns pertaining to:
* mean(): mean values
and
* std(): standard deviations


These variables were both specified within the assignment instructions of the Getting and Cleaning Data Course  


Some consideration was given to the inclusion of data describing:
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
This variable was not included as it was decided that weighting constituted an additional level of data transformation; and as such, did not meet with the specific requirements of the course assignment.    


Column names were then updated to comply with the characteristics of tidy data, as described in Getting and Cleaning Data, week 4, in the lecture titled: “editing text variables” (slide #16). Specifically, column names were updated to be more descriptive, lowercase, devoid of underscores, dots, and white space. 


This tidy data set was then melted and recast to form a final data set, displaying the average of each measured variable, against each subject and activity label.


This final dataset was exported to a txt file.   


Code book: variables
--------------------------
Activity labels and column variables within the final data frame (tidydata.txt) were reformatted to comply with the characteristics of tidy data. The following abbreviations have been maintained:
* X, Y, Z: describe the 3 spatial dimensions
* gyro: “gyroscope”
* mag: “magnitude”
* std: “standard deviation:


* activity: 6 activity labels, obtained from activity_labels.txt.
* walking
* walking-upstairs
* walking-downstairs
* sitting
* standing
* aying


* subject: subject labels (1-30)


* Column variables: 66 column variables, obtained from features.txt. Entries on the left are retitled variables within the tidy data set, entries on the right are the unformated variable labels, as they are describe in the source data  

* tbodyaccelerationmeanx is the mean of: tBodyAcc-mean()-X
* tbodyaccelerationmeany is the mean of: tBodyAcc-mean()-Y
* tbodyaccelerationmeanz is the mean of: tBodyAcc-mean()-Z
* tgravityaccelerationmeanx is the mean of: tGravityAcc-mean()-X
* tgravityaccelerationmeany is the mean of: tGravityAcc-mean()-Y
* tgravityaccelerationmeanz is the mean of: tGravityAcc-mean()-Z
* tbodyaccelerationjerkmeanx is the mean of: tBodyAccJerk-mean()-X
* tbodyaccelerationjerkmeany is the mean of: tBodyAccJerk-mean()-Y
* tbodyaccelerationjerkmeanz is the mean of: tBodyAccJerk-mean()-Z
* tbodygyromeanx is the mean of: tBodyGyro-mean()-X
* tbodygyromeany is the mean of: tBodyGyro-mean()-Y
* tbodygyromeanz is the mean of: tBodyGyro-mean()-Z
* tbodygyrojerkmeanx is the mean of: tBodyGyroJerk-mean()-X
* tbodygyrojerkmeany is the mean of: tBodyGyroJerk-mean()-Y
* tbodygyrojerkmeanz is the mean of: tBodyGyroJerk-mean()-Z
* tbodyaccelerationmagmean is the mean of: tBodyAccMag-mean()
* tgravityaccelerationmagmean is the mean of: tGravityAccMag-mean()
* tbodyaccelerationjerkmagmean is the mean of: tBodyAccJerkMag-mean()
* tbodygyromagmean is the mean of: tBodyGyroMag-mean()
* tbodygyrojerkmagmean is the mean of: tBodyGyroJerkMag-mean()
* fbodyaccelerationmeanx is the mean of: fBodyAcc-mean()-X
* fbodyaccelerationmeany is the mean of: fBodyAcc-mean()-Y
* fbodyaccelerationmeanz is the mean of: fBodyAcc-mean()-Z
* fbodyaccelerationjerkmeanx is the mean of: fBodyAccJerk-mean()-X
* fbodyaccelerationjerkmeany is the mean of: fBodyAccJerk-mean()-Y
* fbodyaccelerationjerkmeanz is the mean of: fBodyAccJerk-mean()-Z
* fbodygyromeanx is the mean of: fBodyGyro-mean()-X
* fbodygyromeany is the mean of: fBodyGyro-mean()-Y
* fbodygyromeanz is the mean of: fBodyGyro-mean()-Z
* fbodyaccelerationmagmean is the mean of: fBodyAccMag-mean()
* fbodybodyaccelerationjerkmagmean is the mean of: fBodyBodyAccJerkMag-mean()
* fbodybodygyromagmean is the mean of: fBodyBodyGyroMag-mean()
* fbodybodygyrojerkmagmean is the mean of: fBodyBodyGyroJerkMag-mean()
* tbodyaccelerationstdx is the standard deviation of: tBodyAcc-std()-X
* tbodyaccelerationstdy is the standard deviation of: tBodyAcc-std()-Y
* tbodyaccelerationstdz is the standard deviation of: tBodyAcc-std()-Z
* tgravityaccelerationstdx is the standard deviation of: tGravityAcc-std()-X
* tgravityaccelerationstdy is the standard deviation of: tGravityAcc-std()-Y
* tgravityaccelerationstdz is the standard deviation of: tGravityAcc-std()-Z
* tbodyaccelerationjerkstdx is the standard deviation of: tBodyAccJerk-std()-X
* tbodyaccelerationjerkstdy is the standard deviation of: tBodyAccJerk-std()-Y
* tbodyaccelerationjerkstdz is the standard deviation of: tBodyAccJerk-std()-Z
* tbodygyrostdx is the standard deviation of: tBodyGyro-std()-X
* tbodygyrostdy is the standard deviation of: tBodyGyro-std()-Y
* tbodygyrostdz is the standard deviation of: tBodyGyro-std()-Z
* tbodygyrojerkstdx is the standard deviation of: tBodyGyroJerk-std()-X
* tbodygyrojerkstdy is the standard deviation of: tBodyGyroJerk-std()-Y
* tbodygyrojerkstdz is the standard deviation of: tBodyGyroJerk-std()-Z
* tbodyaccelerationmagstd is the standard deviation of: tBodyAccMag-std()
* tgravityaccelerationmagstd is the standard deviation of: tGravityAccMag-std()
* tbodyaccelerationjerkmagstd is the standard deviation of: tBodyAccJerkMag-std()
* tbodygyromagstd is the standard deviation of: tBodyGyroMag-std()
* tbodygyrojerkmagstd is the standard deviation of: tBodyGyroJerkMag-std()
* fbodyaccelerationstdx is the standard deviation of: fBodyAcc-std()-X
* fbodyaccelerationstdy is the standard deviation of: fBodyAcc-std()-Y
* fbodyaccelerationstdz is the standard deviation of: fBodyAcc-std()-Z
* fbodyaccelerationjerkstdx is the standard deviation of: fBodyAccJerk-std()-X
* fbodyaccelerationjerkstdy is the standard deviation of: fBodyAccJerk-std()-Y
* fbodyaccelerationjerkstdz is the standard deviation of: fBodyAccJerk-std()-Z
* fbodygyrostdx is the standard deviation of: fBodyGyro-std()-X
* fbodygyrostdy is the standard deviation of: fBodyGyro-std()-Y
* fbodygyrostdz is the standard deviation of: fBodyGyro-std()-Z
* fbodyaccelerationmagstd is the standard deviation of: fBodyAccMag-std()
* fbodybodyaccelerationjerkmagstd is the standard deviation of: fBodyBodyAccJerkMag-std()
* fbodybodygyromagstd is the standard deviation of: fBodyBodyGyroMag-std()
* fbodybodygyrojerkmagstd is the standard deviation of: fBodyBodyGyroJerkMag-std()