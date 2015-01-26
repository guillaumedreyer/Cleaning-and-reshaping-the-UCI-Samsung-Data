
# 0. Preliminaries: Get the data and store them in 
# the working directory.

# Download the data to the working directory. 

library(downloader)

UCI_link <- 'https://d396qusza40orc.cloudfront.net/
getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' 

working_directory <- getwd()

download.file(url = UCI_link,
              destfile = paste(working_directory,
                         '/UCI_Samsung_Galaxy_S_data.zip',
                         sep= '')) 

# Unzip the zip file and store the content in 
# the "Samsung_Data" directory.

path_to_zip_file <- paste(working_directory, 
                          '/UCI_Samsung_Galaxy_S_data.zip',
                          sep = '')

unzip(path_to_zip_file,
      overwrite = T,
      exdir = "Samsung_Data")


# Question 1: Access the training and test 'X' datasets, 
# the training and test 'y' datasets, and merge the datasets. 


# Extract the training and test 'X' and 'y' datasets and merge them together.
X_train <- read.table('./Samsung_Data/UCI HAR Dataset/train/X_train.txt', quote= '')
X_test <- read.table('./Samsung_Data/UCI HAR Dataset/test/X_test.txt', quote= '')
X_merged <- rbind(X_train,X_test)

y_train <- read.table('./Samsung_Data/UCI HAR Dataset/train/y_train.txt', quote='')
y_test <- read.table('./Samsung_Data/UCI HAR Dataset/test/y_test.txt', quote='')
y_merged <- rbind(y_train, y_test)

DF <- cbind(y_merged, X_merged)



# Question 4 and 2. 

# Appropriately label the data set 
# with descriptive variable names.

# Extract the features corresponding to "mean" or
# "std" (standard deviation) measurements. 


# Rename the variables of the 'DF' dataset.
features <- read.table('./Samsung_Data/UCI HAR Dataset/features.txt',
                       quote='')

X_variable_names <- as.character(features[[2]])
colnames(DF) <- c('ACTIVITY', X_variable_names)

# Identify the variables of the 'DF' dataset 
# corresponding to "mean" and "std" measurements.

index <- sort(c(grep('mean',X_variable_names),
                grep('Mean',X_variable_names),
                grep('std',X_variable_names)))

X_mean_and_std_variables <- X_variable_names[index]

DF <- DF[c('ACTIVITY', X_mean_and_std_variables)]



# Question 3: Use descriptive activity names 
# to name the activities in the 'ACTIVITY' column of the dataset 'DF'.

activity_labels <- read.table('./Samsung_Data/UCI HAR Dataset/activity_labels.txt', quote='')
colnames(activity_labels) <- 'ACTIVITY'

DF[1] <- merge(activity_labels, DF[1], 'ACTIVITY')[2]
DF <- transform(DF,ACTIVITY = tolower(ACTIVITY))



# Question 5: Create an independent tidy dataset 
# with the average of each variable for each activity and each subject.

# Get and merge the "subject" datasets.
subject_train <- read.table('./Samsung_Data/UCI HAR Dataset/train/subject_train.txt', quote='')
subject_test <- read.table('./Samsung_Data/UCI HAR Dataset/test/subject_test.txt', quote='')
subject_merged <- rbind(subject_train, subject_test)
colnames(subject_merged) <- 'SUBJECT'

new_DF <- cbind(subject_merged,DF)
split_new_DF <- split(new_DF, new_DF$SUBJECT)

average_activity <- data.frame()
subjects <- 1:length(split_new_DF)
activities <- unique(DF[[1]])
for (subject in subjects){
        subject_DF <- split_new_DF[[subject]]
        subject_activity <- data.frame()
        for (activity in activities){
                activity_mean <- as.data.frame(lapply(subset(subject_DF, 
                                                             ACTIVITY = activity)[-c(1,2)],
                                                      mean))
                
                subject_activity <- rbind(subject_activity,
                                          activity_mean)
        }
        
        subject_activity <- cbind(data.frame('SUBJECT' = rep(subject,6),
                                             'ACTIVITY' = activities),
                                  subject_activity)
        
        average_activity <- rbind(average_activity,
                                  subject_activity)
}

write.table(average_activity,"./average_activity.txt", row.names = FALSE)
