# load required library
library(dplyr)

# get features list from file (33 signals and 17 variables for each signal = 561 measurements)
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

# get activity list from file (6 activities)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# get training set data from file
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
s_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# get test set data from file
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
s_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# combine training and test data sets
s <- rbind(s_train, s_test) # subject ids (1:30)
x <- rbind(x_train, x_test) # feature measurements (n=561)
y <- rbind(y_train, y_test) # activity ids (1:6)

# get relevant mean and std column names for each of the 33 signals
cols <- features[grepl("\\bmean()\\b|std()", features$V2), 1]

# create descriptive activity names to name the activities in the data set
y <- apply(y, 2, function(x) activity_labels$V2[x])

# label the data set with descriptive variable names.
colnames <- c("Subject", "Activity", features$V2[cols])
data <- cbind(s, y, x[, cols])
names(data) <- colnames

# create tidy data set with with the average of each variable for each activity and each subject using dplyr
tidydata <- data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

#save tidy data set to disk
write.table(tidydata, "tidydata.txt", row.names = FALSE)
