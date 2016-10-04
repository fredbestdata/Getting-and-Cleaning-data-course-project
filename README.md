# Getting and Cleaning data course project
This is the Peer-graded assignment from the Getting and Cleaning Data Course

In this assignment a tidy data set is made that can be used for later analysis. The assignment is graded by fellow students. 
The following items are included in this repository:
- A tidy data set
- A CodeBook.md that describes the data and the variables and the transformations that are done to clean up the data
- A run_analysis.R script which is the script that has been used to clean up the data in R
- This README.md file explains how the scripts work and how the scripts are connected.

# How do the scripts work and how are they connected?
The following scripts are used in this course project with the following description:
- activity_labels.txt
This file includes the 6 different activities that are done by the test persons.

-features.txt
This file includes all the different features that are tested for every X-, Y-, and Z:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

And this are the descriptives that are made per variable: 
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

And this are additional variables who are used to average the other values:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

For the test set there are the following files:
-subject_test.txt
This file shows the subject who performed the activity for each window sample. Its range is from 1 to 30. 

-X_test.txt
The big dataset

-y_test.txt
The activity labels

For the train test there are the following files:
-subject_train.txt
This file shows the subject who performed the activity for each window sample. Its range is from 1 to 30. 

-X_train.txt
The other big dataset

-y_train.txt
The acitivty labels
