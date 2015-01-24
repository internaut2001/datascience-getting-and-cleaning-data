# R Script
The R script does the following with the Samsung phone data:

* load required dplyr library
* get features list from file (33 signals and 17 variables for each signal = 561 measurements)
* get activity list from file (6 activities)
* get training set data from file
* get test set data from file
* combine training and test data sets
* get relevant mean and std column names for each of the 33 signals
* create descriptive activity names to name the activities in the data set
* label the data set with descriptive variable names.
* create tidy data set with with the average of each variable for each activity and each subject using dplyr
* save tidy data set to disk


