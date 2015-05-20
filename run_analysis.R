## run_analysis.R
## Clean dataset for gyro and accel readings
## from smartphone on 30 subjects
## For datascience Coursera Getting and Cleaning Data

##read in the time and frequency domain variable vectors - x_test and x_train
x_test <- read.table("UCI HAR Dataset/test/X_test.txt",header=F,strip.white=T)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt",header=F,strip.white=T)

## read in and assign the header labels for both data sets
header <- read.table("UCI HAR Dataset/features.txt",header=F,strip.white=T )
colnames(x_test) <- header[, 2]
colnames(x_train) <- header[, 2]

## read in and assign the activity codes for each row
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",header=F,strip.white=T)
y_test <- rename(y_test, Activity=V1)
x_test <- cbind(y_test, x_test)


y_train <- read.table("UCI HAR Dataset/train/y_train.txt",header=F,strip.white=T)
y_train <- rename(y_train, Activity=V1)
x_train <- cbind(y_train, x_train)


## read in and assign subject data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",header=F,strip.white=T)
subject_test <- rename(subject_test, Subject=V1)
x_test <- cbind(subject_test, x_test)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",header=F,strip.white=T)
subject_train <- rename(subject_train, Subject=V1)
x_train <- cbind(subject_train, x_train)



##merge the training and test datasets
merged_data <- rbind(x_test, x_train)


## look up activity labels and merge
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",header=F,strip.white=T)
merged_data <- merge(merged_data, activity_labels, by.x = "Activity", by.y = "V1", sort = F)
names(merged_data)[564] <- "ActivityName"

##select std and mean variables only
        ##valid_column_names <- make.names(names=names(merged_data), unique=TRUE, allow_ = TRUE)
        ##names(merged_data) <- valid_column_names

select_data <- merged_data[,grepl("mean\\(\\)|std\\(\\)|Activity|Subject", colnames(merged_data))]

## rearrange columns
select_data <- select_data[,c(2,69,3:68)]

## copy select_data for re-naming columns
named_data <- select_data

##assign meaningful variable names
colnames(named_data) <- gsub("tBody","Time.Body",colnames(named_data))
colnames(named_data) <- gsub("fBody","Freq.Body",colnames(named_data))
colnames(named_data) <- gsub("tGravity","Time.Gravity",colnames(named_data))
colnames(named_data) <- gsub("BodyAcc","Body.Acceleration.",colnames(named_data))
colnames(named_data) <- gsub("BodyGyro","Body.Gyroscope.",colnames(named_data))
colnames(named_data) <- gsub("GravityAcc","Gravity.Acceleration.",colnames(named_data))
colnames(named_data) <- gsub("Jerk","Jerk.",colnames(named_data))
colnames(named_data) <- gsub("Mag","Mag.",colnames(named_data))
colnames(named_data) <- gsub("-mean\\(\\)","Mean.",colnames(named_data))
colnames(named_data) <- gsub("-std\\(\\)","StdDev.",colnames(named_data))
colnames(named_data) <- gsub("-X","X-Axis",colnames(named_data))
colnames(named_data) <- gsub("-Y","Y-Axis",colnames(named_data))
colnames(named_data) <- gsub("-Z","Z-Axis",colnames(named_data))

## create tidy data set with averages by activity and subject
tidy_data <- group_by(named_data, ActivityName, Subject)
tidy_sum <- summarise_each(tidy_data,funs(mean))
write.table(tidy_sum, "tidy_data.txt", row.name=FALSE)


