DATA DICTIONARY - HUMAN ACTIVITY RECOGNITION (TRAINING AND TEST DATASET)
 
This code book was created using the R function codebook(). In order to use the function, you have to install the package epicalc and load it with the line command library(epicalc).

The following process was followed to create this dataset.

1. For the training set, load in R the files X_train.txt, y_train.txt and subject_train.txt

2. For the test set, load in R the files X_test.txt, y_test.txt and subject_test.txt

3. To be commonly used for the training and test set, load in R the files activity_labels.txt and features.txt

4. Rename the columns of the data frames loaded in R from 1. and 2. above. The column 2 of features is used for renaming X_train and X_test.

5. Extract only the measurements on the mean and standard deviation. Use the function grep() to select columns 	from X_train and X_test

6. Combine the subject group, the training labels and X_train, on one hand, and the subject group, the training labels and X_test on the other hand, using cbind() function

7. Merge each of the data set in 6. with the activity labels data frame

8. Insert in the first column of the transformed training set a column named Data.Category and with value "Training" in each row

9.  Insert in the first column of the transformed text set a column named Data.Category and with value "Test" in each row

10. Merge the training and test set obtained in 8. and 9. using the function rbind() 

----------------------------------------------------------------


Data.Category 	 : 	  
         Frequency Percent
Test          2947    28.6
Training      7352    71.4

 ================== 
Activity.ID 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 3.625  4       1.74   1      6     

 ================== 
Activity.Name 	 : 	  
                   Frequency Percent
LAYING                  1944    18.9
SITTING                 1777    17.3
STANDING                1906    18.5
WALKING                 1722    16.7
WALKING_DOWNSTAIRS      1406    13.7
WALKING_UPSTAIRS        1544    15.0

 ================== 
Subject.ID 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 16.146 17      8.68   1      30    

 ================== 
tBodyAcc.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.274  0.277   0.07   -1     1     

 ================== 
tBodyAcc.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.018 -0.017  0.04   -1     1     

 ================== 
tBodyAcc.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.109 -0.109  0.05   -1     1     

 ================== 
tGravityAcc.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.669  0.922   0.52   -1     1     

 ================== 
tGravityAcc.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.004  -0.144  0.38   -1     1     

 ================== 
tGravityAcc.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.092  0.037   0.33   -1     1     

 ================== 
tBodyAccJerk.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.079  0.076   0.18   -1     1     

 ================== 
tBodyAccJerk.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.008  0.011   0.16   -1     1     

 ================== 
tBodyAccJerk.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.005 -0.001  0.16   -1     1     

 ================== 
tBodyGyro.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.031 -0.028  0.18   -1     1     

 ================== 
tBodyGyro.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.075 -0.075  0.13   -1     1     

 ================== 
tBodyGyro.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.088  0.086   0.13   -1     1     

 ================== 
tBodyGyroJerk.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.097 -0.098  0.13   -1     1     

 ================== 
tBodyGyroJerk.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.042 -0.041  0.11   -1     1     

 ================== 
tBodyGyroJerk.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.055 -0.055  0.13   -1     1     

 ================== 
tBodyAccMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.548 -0.875  0.47   -1     1     

 ================== 
tGravityAccMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.548 -0.875  0.47   -1     1     

 ================== 
tBodyAccJerkMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.649 -0.948  0.39   -1     1     

 ================== 
tBodyGyroMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.605 -0.822  0.4    -1     1     

 ================== 
tBodyGyroJerkMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.762 -0.956  0.28   -1     1     

 ================== 
fBodyAcc.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.623 -0.946  0.42   -1     1     

 ================== 
fBodyAcc.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.537 -0.864  0.48   -1     1     

 ================== 
fBodyAcc.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.665 -0.895  0.36   -1     1     

 ================== 
fBodyAcc.meanFreq...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.221 -0.238  0.26   -1     1     

 ================== 
fBodyAcc.meanFreq...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.015  0.005   0.24   -1     1     

 ================== 
fBodyAcc.meanFreq...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.047  0.061   0.28   -1     1     

 ================== 
fBodyAccJerk.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.657 -0.952  0.39   -1     1     

 ================== 
fBodyAccJerk.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.629 -0.926  0.41   -1     1     

 ================== 
fBodyAccJerk.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.744 -0.948  0.3    -1     1     

 ================== 
fBodyAccJerk.meanFreq...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.048 -0.045  0.3    -1     1     

 ================== 
fBodyAccJerk.meanFreq...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.213 -0.237  0.27   -1     1     

 ================== 
fBodyAccJerk.meanFreq...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.124 -0.102  0.27   -1     1     

 ================== 
fBodyGyro.mean...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.672 -0.892  0.35   -1     1     

 ================== 
fBodyGyro.mean...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.706 -0.92   0.34   -1     1     

 ================== 
fBodyGyro.mean...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.644 -0.888  0.38   -1     1     

 ================== 
fBodyGyro.meanFreq...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.101 -0.099  0.26   -1     1     

 ================== 
fBodyGyro.meanFreq...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.174 -0.173  0.27   -1     1     

 ================== 
fBodyGyro.meanFreq...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.051 -0.054  0.27   -1     1     

 ================== 
fBodyAccMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.586 -0.876  0.45   -1     1     

 ================== 
fBodyAccMag.meanFreq.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.077  0.07    0.26   -1     1     

 ================== 
fBodyBodyAccJerkMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.621 -0.929  0.43   -1     1     

 ================== 
fBodyBodyAccJerkMag.meanFreq.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.173  0.164   0.25   -1     1     

 ================== 
fBodyBodyGyroMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.697 -0.876  0.32   -1     1     

 ================== 
fBodyBodyGyroMag.meanFreq.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.042 -0.052  0.28   -1     1     

 ================== 
fBodyBodyGyroJerkMag.mean.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.78  -0.945  0.27   -1     1     

 ================== 
fBodyBodyGyroJerkMag.meanFreq.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 0.127  0.136   0.25   -1     1     

 ================== 
tBodyAcc.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.608 -0.943  0.44   -1     1     

 ================== 
tBodyAcc.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.51  -0.835  0.5    -1     1     

 ================== 
tBodyAcc.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.613 -0.851  0.4    -1     1     

 ================== 
tGravityAcc.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.965 -0.982  0.08   -1     1     

 ================== 
tGravityAcc.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.954 -0.976  0.09   -1     1     

 ================== 
tGravityAcc.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.939 -0.967  0.1    -1     1     

 ================== 
tBodyAccJerk.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.64  -0.951  0.41   -1     1     

 ================== 
tBodyAccJerk.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.608 -0.925  0.43   -1     1     

 ================== 
tBodyAccJerk.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.763 -0.954  0.28   -1     1     

 ================== 
tBodyGyro.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.721 -0.902  0.3    -1     1     

 ================== 
tBodyGyro.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.683 -0.911  0.36   -1     1     

 ================== 
tBodyGyro.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.654 -0.882  0.37   -1     1     

 ================== 
tBodyGyroJerk.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.731 -0.935  0.3    -1     1     

 ================== 
tBodyGyroJerk.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.786 -0.955  0.27   -1     1     

 ================== 
tBodyGyroJerk.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.74  -0.95   0.3    -1     1     

 ================== 
tBodyAccMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.591 -0.844  0.43   -1     1     

 ================== 
tGravityAccMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.591 -0.844  0.43   -1     1     

 ================== 
tBodyAccJerkMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.628 -0.929  0.42   -1     1     

 ================== 
tBodyGyroMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.663 -0.826  0.35   -1     1     

 ================== 
tBodyGyroJerkMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.778 -0.94   0.27   -1     1     

 ================== 
fBodyAcc.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.603 -0.942  0.45   -1     1     

 ================== 
fBodyAcc.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.528 -0.833  0.48   -1     1     

 ================== 
fBodyAcc.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.618 -0.84   0.4    -1     1     

 ================== 
fBodyAccJerk.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.655 -0.956  0.39   -1     1     

 ================== 
fBodyAccJerk.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.612 -0.928  0.43   -1     1     

 ================== 
fBodyAccJerk.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.781 -0.959  0.26   -1     1     

 ================== 
fBodyGyro.std...X 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.739 -0.905  0.29   -1     1     

 ================== 
fBodyGyro.std...Y 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.674 -0.906  0.37   -1     1     

 ================== 
fBodyGyro.std...Z 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.69  -0.892  0.34   -1     1     

 ================== 
fBodyAccMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.66  -0.855  0.36   -1     1     

 ================== 
fBodyBodyAccJerkMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.64  -0.926  0.41   -1     1     

 ================== 
fBodyBodyGyroMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.7   -0.827  0.31   -1     1     

 ================== 
fBodyBodyGyroJerkMag.std.. 	 : 	  
  obs.  mean   median  s.d.   min.   max.  
  10299 -0.792 -0.938  0.26   -1     1     

 ================== 
