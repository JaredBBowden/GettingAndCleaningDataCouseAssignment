README: Getting and cleaning data course assignment
===============================================
Jared Bowden


Description
--------------
This README file describes how the script, “run_analysis.R” serves to merge, clean, and tidy, and summarize values obtained from the “Human Activity Recognition Using Smartphone Data Set” [1].


Please see the the CodeBook.md within this repository for a full description of the data files, Study design, Data transformations, and tidy variables.


A complete description of this dataset is available at the following address: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Reference
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


Obtaining the data
-----------------------
The source data used by run_analysis can be found at the following address:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/


A description of the run_analysis.R script
---------------------------------------------------
Once downloaded, this data set should be extracted to a user-defined working directory. Following from this, the run_analysis.R script may be executed to:
 
* Column bind  X_test.txt, X_train.txt data, subject codes, and activity labels into one complete dataset
* Retitle activity labels with descriptive titles
* Truncate the data columns to include only: subject labels, activity labels, mean variables, and standard deviation variables
* Retitle columns headings with descriptive titles to form a tidy set
* Create a second tidy data set that displays the average of each measured variable, against each subject and activity label.
* Export this second tidy data set to a text file.