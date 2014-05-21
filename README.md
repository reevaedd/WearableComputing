Wearable Computing
==================

The script in this repo will create two text files of data frame in your working directory when run. To check your working directory, execute in R studio the command line getwd().

The names of the files created are "dataset_1 - Training and Test.txt" and "dataset_2 - Average.txt". The first file contains the data frame which is the result of merging the training and the test set. The second file corresponds to the independent tidy data set with the average of each variable for each activity and each subject.

Please note that you may save in any of your local drive folders the files downloaded from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The script will allow you to manually browse to the locations of the files and select them. As an example, on the screenshot below, a file browser is opened and the file X_train.txt is requested by the program to be selected. Depending on the size of the file and the performance of your machine, the file reading process may take some time.  


![alt tag](https://raw.githubusercontent.com/reevaedd/WearableComputing/master/FileBrowser.png "File browser opened by the script. Please select the file specified")
