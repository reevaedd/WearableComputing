run_Analysis <- function() {

	## ==============================
	## Tidy up the training data set
	## ==============================

	## Load in R the training set
	fname <- choose.files(default = "", caption = "Please select the file X_train.txt", multi = FALSE)
	Xtrain <- read.table(fname)

	## Load in R the training labels - Activity IDs
	fname <- choose.files(default = "", caption = "Please select the file y_train.txt", multi = FALSE)
	trainLbl <- read.table(fname)

	## Load into R the subject of the training
	fname <- choose.files(default = "", caption = "Please select the file subject_train.txt", multi = FALSE)
	trainSubj <- read.table(fname)

	## Load in R the activity labels
	fname <- choose.files(default = "", caption = "Please select the file activity_labels.txt", multi = FALSE)
	actLbl <- read.table("./activity_labels.txt")

	## Rename the column of trainLbl
	colnames(trainLbl) <- "Activity.ID"

	## Rename the column of trainSubj
	colnames(trainSubj) <- "Subject.ID"

	## Rename the column of actLbl
	colnames(actLbl) <- c("Activity.ID", "Activity.Name")

	## Load into R the features
	fname <- choose.files(default = "", caption = "Please select the file features.txt", multi = FALSE)
	features <- read.table("./features.txt")

	## Unfactor features
	features <- data.frame(lapply(features, as.character), stringsAsFactors = FALSE)

	featLbl <- c(features$V2)

	## Rename the columns of Xtrain
	colnames(Xtrain) <- featLbl

	## Extract only the measurements on the mean and standard deviation
	fieldNames <- names(Xtrain)
	
	## Indices of columns with mean measurement
	meanIndex <- grep("mean", fieldNames)

	## Indices of columns with standard deviation measurement
	stdIndex <- grep("std", fieldNames)

	## Indices of columns with mean and standard deviation measurements
	extract <- c(meanIndex, stdIndex)

	## Training data set with mean and standard deviation measurement only
	subTraining <- Xtrain[extract]

	## Append trainSubj and trainLbl to subTraining
	Training <- cbind(trainSubj, trainLbl, subTraining)

	## Merge the data frame Training with activity labels
	mergedTraining <- merge(actLbl, Training, by.x="Activity.ID", by.y="Activity.ID", all=FALSE)

	## Create a new data frame for training data category
	Data.Category <- c(rep("Training", nrow(mergedTraining))) 
	dataCat <- data.frame(Data.Category)

	## Append the new data frame to mergedTraining
	mergedTraining <- cbind(dataCat, mergedTraining)

	## ==============================
	## Tidy up the test data set
	## ==============================

	## Load in R the test set
	fname <- choose.files(default = "", caption = "Please select the file X_test.txt", multi = FALSE)
	Xtest <- read.table("./test/X_test.txt")

	## Load in R the test labels - Activity IDs
	fname <- choose.files(default = "", caption = "Please select the file y_test.txt", multi = FALSE)
	testLbl <- read.table("./test/y_test.txt")

	## Load into R the subject of the test
	fname <- choose.files(default = "", caption = "Please select the file subject_test.txt", multi = FALSE)
	testSubj <- read.table("./test/subject_test.txt")

	## Rename the column of testLbl
	colnames(testLbl) <- "Activity.ID"

	## Rename the column of testSubj
	colnames(testSubj) <- "Subject.ID"

	## Rename the column of actLbl
	colnames(actLbl) <- c("Activity.ID", "Activity.Name")

	## Rename the columns of Xtest
	colnames(Xtest) <- featLbl

	## Extract only the measurements on the mean and standard deviation
	fieldNames <- names(Xtest)
	
	## Indices of columns with mean measurement
	meanIndex <- grep("mean", fieldNames)

	## Indices of columns with standard deviation measurement
	stdIndex <- grep("std", fieldNames)

	## Indices of columns with mean and standard deviation measurements
	extract <- c(meanIndex, stdIndex)

	## Training data set with mean and standard deviation measurement only
	subTest <- Xtest[extract]

	## Append testSubj and testLbl to subTest
	Test <- cbind(testSubj, testLbl, subTest)

	## Merge the data frame Test with activity labels
	mergedTest <- merge(actLbl, Test, by.x="Activity.ID", by.y="Activity.ID", all=FALSE)

	## Create a new data frame for test data category
	Data.Category <- c(rep("Test", nrow(mergedTest))) 
	dataCat <- data.frame(Data.Category)

	## Append the new data frame to mergedTest
	mergedTest <- cbind(dataCat, mergedTest)

	## ===========================================================
	## Merge the training and the test sets to create one data set
	## ===========================================================
	dataset1 <- rbind(mergedTraining, mergedTest)
	
	## Save the dataset1 data frame to a txt file
	write.table(dataset1, "./dataset_1 - Training and Test.txt", sep="\t")

	## ==============================================================================================
	## Independent tidy data set with the average of each variable for each activity and each subject
	## ==============================================================================================

	## Training set
	## ------------

	avgTrainData <- mergedTraining

	## Drop the columns "Data.Category" and "Activity.Name" because they are not numeric
	avgTrainData$Data.Category <- NULL
	avgTrainData$Activity.Name <- NULL

	## Compute the average of each variable for each activity and each subject
	avgTrainData <- aggregate(avgTrainData, list(avgTrainData$Activity.ID, avgTrainData$Subject.ID), FUN = mean)

	## Merge avgTrainData with actLbl
	avgTrainData <- merge(actLbl, avgTrainData, by.x = "Activity.ID", by.y = "Activity.ID", all = FALSE)

	## Drop the unnecessary columns "Group.1" and "Group.2"
	avgTrainData$Group.1 <- NULL
	avgTrainData$Group.2 <- NULL

	## Create a new data frame for training data category
	Data.Category <- c(rep("Training", nrow(avgTrainData))) 
	dataCat <- data.frame(Data.Category)

	## Append the new data frame to avgTrainData
	avgTrainData <- cbind(dataCat, avgTrainData)

	## Test set
	## ------------

	avgTestData <- mergedTest

	## Drop the columns "Data.Category" and "Activity.Name" because they are not numeric
	avgTestData$Data.Category <- NULL
	avgTestData$Activity.Name <- NULL

	## Compute the average of each variable for each activity and each subject
	avgTestData <- aggregate(avgTestData, list(avgTestData$Activity.ID, avgTestData$Subject.ID), FUN = mean)

	## Merge avgTestData with actLbl
	avgTestData <- merge(actLbl, avgTestData, by.x = "Activity.ID", by.y = "Activity.ID", all = FALSE)

	## Drop the unnecessary columns "Group.1" and "Group.2"
	avgTestData$Group.1 <- NULL
	avgTestData$Group.2 <- NULL

	## Create a new data frame for training data category
	Data.Category <- c(rep("Test", nrow(avgTestData))) 
	dataCat <- data.frame(Data.Category)

	## Append the new data frame to avgTestData
	avgTestData <- cbind(dataCat, avgTestData)

	## ===========================================================
	## Merge the training and the test sets to create one data set
	## ===========================================================
	dataset2 <- rbind(avgTrainData, avgTestData)
	
	## Save the dataset2 data frame to a txt file
	write.table(dataset2, "./dataset_2 - Average.txt", sep="\t")	

}