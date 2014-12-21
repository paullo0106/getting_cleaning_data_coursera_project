# Project requirements:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(reshape2)

## load dataset from files and combine train and test datasets 
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)

# same for subject files
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)

## load the second column in feature file 
feat <- read.table("UCI HAR Dataset/features.txt")[,2] 

## set descriptive column names
colnames(x) <- feat
colnames(y) <- "activity_id"
colnames(subject) <- "subject"

## after filtering, we will get 66 features for mean and std, note that xxx-meanFreq() features are not included
exfeat<- grep("mean\\(\\)|std\\(\\)", feat, value=TRUE)
x <- x[, exfeat]

## load activity label and set descriptive names 
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(activities) <- c("activity_id", "activity_name")

## inner join with activity table by 'activity_id' column
## note that we execute cbind() first and then merge() because merge() doesn't assure the order of data would be preserved
data <- cbind(x, y, subject)
data <- merge(data, activities, by="activity_id")  

## calculate mean() for each 'subject' and 'activity_name' pair
melt_data <- melt(data, id=c("subject", "activity_name"))
result <- dcast(melt_data, activity_name+subject~variable, mean)

# we get a result table of 180*69 
dim(result)  

## the question suggests write.table() instead of write.csv
write.table(result,"tidy_dataset.txt",row.names=F) 
