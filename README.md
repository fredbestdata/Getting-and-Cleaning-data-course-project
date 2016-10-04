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
This file includes all the different features that are tested for every X-, Y-, and Z

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
