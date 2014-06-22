## GETTING AND CLEANING DATA: PROGRAMMING ASSIGNMENT
## Jared Bowden

## Script Description
## The following script (run_analysis.R) is designed to  merge, clean, and tidy, 
## and summarize values obtained from the “Human Activity Recognition Using 
## Smartphone Data Set”

## The source data used in this exercise can be found at the following address:
## http://archive.ics.uci.edu/ml/machine-learning-databases/00240/
    
## A complete description of this dataset is available at the following address: 
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+
##    Recognition+Using+Smartphones

## Reference
## Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and 
## Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a 
## Multiclass Hardware-Friendly Support Vector Machine. International Workshop 
## of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each 
## measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each 
## variable for each activity and each subject.

## Set the working directory.
setwd("/home/jared/Dropbox/Code/UCI HAR Dataset/")

## Specify the location of the files.
testdir <- list.files(paste(getwd(), "/test", sep=""))[-1]
traindir <- list.files(paste(getwd(), "/train", sep=""))[-1]

## Read in the files
testdata <- lapply(as.list(testdir), function(a) read.table(paste(getwd(),
        "/test/", a, sep = "")))
traindata <- lapply(as.list(traindir), function(a) read.table(paste(getwd(),
        "/train/", a, sep = "")))

## column bind test files, and train files 
testmerge <- lapply(testdata, cbind)
trainmerge <- lapply(traindata, cbind)
testdframe <- as.data.frame(testmerge)
traindframe <- as.data.frame(trainmerge)

## Row bind test and train data frames together to form a single data frame
completedframe <- rbind(testdframe, traindframe)

## Load the column titles from the feature document
colnames <- read.table("./features.txt")

## Cut the first row of the feature labels and convert these features to a 
## character vector for import to the primary data frame. 
collist <- as.character(colnames[,2])
colnames(completedframe) <- c("subject", collist, "activity")

## Read in the activity labels. 
actlabels <- read.table("./activity_labels.txt")

## Again, we only need the second row; and covert to a character vectory
## Make lowercase, and remove superfalous special-characters, to comply with
## the characteristics of tidy data
labs <- gsub("_", "", tolower(as.character(actlabels[,2])))
completedframe$activity <- factor(completedframe$activity, labels = labs)

## Assign a "match" object that describes the variables we want to include 
## within the tidy dataframe.
means <- grep("mean()", colnames(completedframe))
std <- grep("std()", colnames(completedframe))
match <- c(1, means, std, 563) 

## Create a subsetted df with the values that we want, using the "match" object
subdf <- completedframe[ , match]

## Remove meanFreq(). See CodeBook.md for details. 
meanfreq <- grep("meanFreq()", colnames(subdf))
finalsubdf <- subdf[, -meanfreq]

## Edit column names: add descriptive titles to, make lowercase, and remove 
## superfalous special-characters, to comply with the characteristics of tidy 
## data
colnames(finalsubdf) <- tolower(gsub("\\()", "", colnames(finalsubdf)))
colnames(finalsubdf) <- gsub("acc", "acceleration", colnames(finalsubdf))
colnames(finalsubdf) <- gsub("-", "", colnames(finalsubdf))
colnames(finalsubdf)

## Now we are going to create a second tidy data set, displaying the average of 
## each measured variable, against each subject and activity label.

## First we need to melt the data,
library(reshape2)
longdata <- melt(finalsubdf, id = c("subject", "activity"))

## and then recast this data to form a summary table of means
tidy <- dcast(longdata, subject + activity ~ variable, mean)

## Output the tidy data. We have been working with .txt files, so let's stick
## with that. Also export a .csv.
write.table(tidy, "../Getting and cleaning data/Course_assignment/tidydata.txt", 
            sep = "\t" )

write.csv(tidy, file = 
            "../Getting and cleaning data/Course_assignment/tidydata.csv")

## Confirm that this text document looks good. Read it in, and view.
finalcheck <- read.table(
    "../Getting and cleaning data/Course_assignment/tidydata.txt")
View(finalcheck)


