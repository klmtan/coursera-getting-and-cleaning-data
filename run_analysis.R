
### Created by: Katherine Loren Tan
### January 05, 2019


### Download the file 
### Function that gets the data
### creates a folder named data and puts the download zip file inside
library(dplyr)


getData <- function(fileUrl,filename){
	if(!file.exists("./data")){
		dir.create('./data')
	}
	download.file(fileUrl,filename,method="curl")
	unzip(filename)
}


### Reads the data, It gets the filename and loads it into a dataframe and then returns
loadData <- function(filename){
	dataset <- read.table(filename)
}



fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
filename <- './data/data.zip'

### GETTING THE DATA
getData(fileUrl,filename)

### READING THE DATA


### Reads activity labels
activityLabels <- loadData('data/UCI HAR Dataset/activity_labels.txt')
activityLabels[,2] <- as.character(activityLabels[,2])
colnames(activityLabels) <- c('id','activity_type')

### Reads the Feature
features <- loadData('data/UCI HAR Dataset/features.txt')
features[,2] <- as.character(features[,2])
colnames(features) <- c('id','feature_name')

### Reads the training set
trainingSubject <- loadData('data/UCI HAR Dataset/train/subject_train.txt')
trainingX <- loadData('data/UCI HAR Dataset/train/X_train.txt')
trainingY <- loadData('data/UCI HAR Dataset/train/Y_train.txt')

### Reads the test set
testSubject <- loadData('data/UCI HAR Dataset/test/subject_test.txt')
testX <- loadData('data/UCI HAR Dataset/test/X_test.txt')
testY <- loadData('data/UCI HAR Dataset/test/Y_test.txt')

### Merging the datasets into one big dataset named mergeData
mergeTrain <- cbind(trainingSubject,trainingX,trainingY)
mergeTest <- cbind(testSubject,testX,testY)
mergeData <- rbind(mergeTrain,mergeTest)

### Renaming the columns as subject, names of the features and the last column as the activity
colnames(mergeData) <- c('subject',features$feature_name,'activity')


### Getting only the Mean and Standard Deviation
mean_std_columns <- grepl('subject|activity|.*mean.*|.*std.*',colnames(mergeData))
mergeSet <- mergeData[,mean_std_columns]


### Use factor in replacing activity values
mergeSet$activity <- factor(mergeSet$activity, levels = activityLabels$id,labels =activityLabels$activity_type)

### Get the column of the final set
mergeSetColumns <- colnames(mergeSet)

### Remove non alphanumeric characters
mergeSetColumns <- gsub('\\(\\)','',mergeSetColumns)					# removing ()
mergeSetColumns <- gsub('^t','time',mergeSetColumns)					# replace t with time
mergeSetColumns <- gsub('^f','frequency',mergeSetColumns)				# replace f with frequency
mergeSetColumns <- gsub('mean','Mean',mergeSetColumns)					# replace mean with Mean
mergeSetColumns <- gsub('std','Standard_Deviation',mergeSetColumns)		#replace std with Standard_Deviation

colnames(mergeSet) <- mergeSetColumns

### creating another set with the means of each subject and activity. uses the dplyr package
mergeSet2 <- mergeSet %>% group_by(subject,activity) %>% summarise_all(funs(mean))

### creating tidy_data.txt removes the column names and quotes
write.table(mergeSet2,"tidy_data.txt",col.names = FALSE, quote = FALSE)
