## CodeBook - data documentation
========================================================

### Transformations

* Test dataset and Train dataset are combined together.
* Activity and subject data are added to test and train data.
* 66 variables containing mean() or std() are selected out from 561 variables as required. 
* melt() and dcast() are applied in order to group by the dataset by (subject, activity) and calculate the mean() for each variable.

### Variables in the result dataset (tidy_dataset.txt)

The output of run_analysis.R is a data.frame with 180 rows and 69 columns:

* activity_name: labels for activity with 6 different values (WALKING/WALKING_UPSTAIRS/WALKING_DOWNSTAIRS/SITTING/STANDING/LAYING)
* subject: unique identifier for the subject (integer 1-30)
* activity_id: unique identifier (integer 1-6) for each activity 
* Others 66 variables with mean() or std(): signal measured by accelerometer and gyroscope as described in features_info.txt
* Each row is a unique pair of (activity_name, subject), and the values mapping to that 66 columns indicate the average value of that attribute for this activity and subject pair. There are 180 unique pairs in our generated result.
* Below are the name and type of 69 columns:

 $ activity_name              : Factor w/ 6 levels  
 $ subject                    : int     
 $ activity_id                : num     
 $ tBodyAcc-mean()-X          : num   
 $ tBodyAcc-mean()-Y          : num    
 $ tBodyAcc-mean()-Z          : num    
 $ tBodyAcc-std()-X           : num  
 $ tBodyAcc-std()-Y           : num  
 $ tBodyAcc-std()-Z           : num  
 $ tGravityAcc-mean()-X       : num   
 $ tGravityAcc-mean()-Y       : num  
 $ tGravityAcc-mean()-Z       : num   
 $ tGravityAcc-std()-X        : num  
 $ tGravityAcc-std()-Y        : num  
 $ tGravityAcc-std()-Z        : num  
 $ tBodyAccJerk-mean()-X      : num  
 $ tBodyAccJerk-mean()-Y      : num  
 $ tBodyAccJerk-mean()-Z      : num  
 $ tBodyAccJerk-std()-X       : num  
 $ tBodyAccJerk-std()-Y       : num  
 $ tBodyAccJerk-std()-Z       : num  
 $ tBodyGyro-mean()-X         : num  
 $ tBodyGyro-mean()-Y         : num  
 $ tBodyGyro-mean()-Z         : num  
 $ tBodyGyro-std()-X          : num  
 $ tBodyGyro-std()-Y          : num  
 $ tBodyGyro-std()-Z          : num  
 $ tBodyGyroJerk-mean()-X     : num  
 $ tBodyGyroJerk-mean()-Y     : num  
 $ tBodyGyroJerk-mean()-Z     : num  
 $ tBodyGyroJerk-std()-X      : num  
 $ tBodyGyroJerk-std()-Y      : num  
 $ tBodyGyroJerk-std()-Z      : num  
 $ tBodyAccMag-mean()         : num  
 $ tBodyAccMag-std()          : num  
 $ tGravityAccMag-mean()      : num   
 $ tGravityAccMag-std()       : num  
 $ tBodyAccJerkMag-mean()     : num  
 $ tBodyAccJerkMag-std()      : num  
 $ tBodyGyroMag-mean()        : num  
 $ tBodyGyroMag-std()         : num  
 $ tBodyGyroJerkMag-mean()    : num  
 $ tBodyGyroJerkMag-std()     : num  
 $ fBodyAcc-mean()-X          : num  
 $ fBodyAcc-mean()-Y          : num  
 $ fBodyAcc-mean()-Z          : num  
 $ fBodyAcc-std()-X           : num  
 $ fBodyAcc-std()-Y           : num  
 $ fBodyAcc-std()-Z           : num  
 $ fBodyAccJerk-mean()-X      : num  
 $ fBodyAccJerk-mean()-Y      : num  
 $ fBodyAccJerk-mean()-Z      : num  
 $ fBodyAccJerk-std()-X       : num  
 $ fBodyAccJerk-std()-Y       : num  
 $ fBodyAccJerk-std()-Z       : num  
 $ fBodyGyro-mean()-X         : num  
 $ fBodyGyro-mean()-Y         : num  
 $ fBodyGyro-mean()-Z         : num  
 $ fBodyGyro-std()-X          : num  
 $ fBodyGyro-std()-Y          : num  
 $ fBodyGyro-std()-Z          : num  
 $ fBodyAccMag-mean()         : num  
 $ fBodyAccMag-std()          : num  
 $ fBodyBodyAccJerkMag-mean() : num  
 $ fBodyBodyAccJerkMag-std()  : num  
 $ fBodyBodyGyroMag-mean()    : num  
 $ fBodyBodyGyroMag-std()     : num  
 $ fBodyBodyGyroJerkMag-mean(): num  
 $ fBodyBodyGyroJerkMag-std() : num  

