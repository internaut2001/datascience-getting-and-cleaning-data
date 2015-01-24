# datascience-getting-and-cleaning-data
Course project
You should include a README.md in the repo describing how the script works and the code book describing the variables.
Did the student submit a Github repo with the required scripts?
Was code book submitted to GitHub that modifies and updates the codebooks available to you with the data to indicate all the variables and summaries you calculated, along with units, and any other relevant information?
I was able to follow the README in the directory that explained what the analysis files did. 

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


