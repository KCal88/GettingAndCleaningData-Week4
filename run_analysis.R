library(dplyr)
rm(list=ls())
#The "UCI HAR Dataset" folder needs to placed in the active directory
fp <- file.path(getwd(),'UCI HAR Dataset')

# read in data (file.path() for OS control)
X_train <- read.table(file.path(fp, "train", "X_train.txt"))
X_test <- read.table(file.path(fp, "test", "X_test.txt"))

Y_train <- read.table(file.path(fp, "train", "Y_train.txt"))
Y_test <- read.table(file.path(fp, "test", "Y_test.txt"))

subject_train <- read.table(file.path(fp, "train", "subject_train.txt"))
subject_test <- read.table(file.path(fp, "test", "subject_test.txt"))


# read in descritive variable names from "features.txt" file
features <- read.table(file.path(fp, "features.txt"))
var_names <- features[,2]


# read in descriptive activity identifiers
activity_ids <- read.table(file.path(fp, "activity_labels.txt"))
activity_ids <- activity_ids[,2]


# Merge training and test data
X_merged <- rbind(X_train, X_test)
Y_merged <- rbind(Y_train, Y_test)
subject_merged <- rbind(subject_train, subject_test)


# Pull the mean and standard deviation
mean_or_std_cols <- grep("mean\\(|std\\(", var_names)
good_var_names <- var_names[mean_or_std_cols]
X_merged_mean_or_std <- X_merged[mean_or_std_cols]


# Use descriptive activity names and give columns descrie variable names
colnames(Y_merged) <- "activity_id"
activity <- factor(Y_merged$activity_id, labels = as.character(activity_ids))

colnames(X_merged_mean_or_std) <- good_var_names


# Create the tidy data with average of mean and standard deviation
# for each activity and subject
colnames(subject_merged) <- "subject_id"
good_data <- cbind(X_merged_mean_or_std, activity, subject_merged)
tidy_data <- group_by(good_data, activity, subject_id) %>% 
        summarize_all(mean)


# save the (finaly) tidy data to a text file, it will be placed within the
# "UCI HAR Dataset" folder called "tidydata.txt"
write.table(tidy_data, file = file.path(fp, "tidydata.txt"), row.names = FALSE, 
            col.names = TRUE)

# check to make sure it saved properly
#f <- read.table(file.path(fp, "tidydata.txt"), header = TRUE)
#head(f[,1:3])