#Getting and Cleaning data Course project - Frederica Janga

# read the features and activity data
setwd("C:/Users/EX27825/Downloads/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset")
Features <- read.table("features.txt")
Activities <- read.table("activity_labels.txt")

# read the test data
setwd("C:/Users/EX27825/Downloads/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")

# read the train data
setwd("C:/Users/EX27825/Downloads/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")

#Appropriately labels the data set with descriptive variable names.
colnames(X_test) <- as.vector(Features[,2]) #Combine features with x_test 
colnames(X_train) <- as.vector(Features[,2]) #Combine features with x_train
colnames(subject_test) <- "Subject"         #setting the right names to the columns
colnames(y_test) <- "Activity"
colnames(y_train) <- "Activity"
colnames(subject_train) <- "Subject"
colnames(Activities) <- c('ActivityType','Activity')

#Merges the training and the test sets to create one data set.
all_train <- cbind(y_train, subject_train, X_train)  #Combine the train data
all_test <- cbind(y_test, subject_test, X_test)     #Combine the test data
alltogether <- rbind(all_train, all_test)           #Combine the test and the train data

#Extracts only the measurements on the mean and standard deviation for each measurement.
mean_col <- grep("mean",names(alltogether),ignore.case=TRUE)
mean_colnames <- names(alltogether)[mean_col]
std_col <- grep("std",names(alltogether),ignore.case=TRUE)
std_colnames <- names(alltogether)[std_col]
meanstddata <-alltogether[, c("Activity","Subject",mean_colnames,std_colnames)]

#Uses descriptive activity names to name the activities in the data set
meanstddata$Activity[meanstddata$Activity == 1] <- "WALKING"
meanstddata$Activity[meanstddata$Activity == 2] <- "WALKING_UPSTAIRS"
meanstddata$Activity[meanstddata$Activity == 3] <- "WALKING_DOWNSTAIRS" 
meanstddata$Activity[meanstddata$Activity == 4] <- "SITTING"
meanstddata$Activity[meanstddata$Activity == 5] <- "STANDING"
meanstddata$Activity[meanstddata$Activity == 6] <- "LAYING"

#Calculate the average of each variable for each activity and each subject and order it
final_data <- aggregate(. ~Subject + Activity, meanstddata, mean)
final_data <- final_data[order(final_data$Subject,final_data$Activity),]

#Create a second, independent tidy data set 
write.table(final_data, file = "tidydata.txt", sep = "")
