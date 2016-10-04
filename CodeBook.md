# Codebook 
 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
In this codebook the following is explained:
- The variables
- The data
- The transformations that are performed on data

The data can be found in the file tidydata.txt.

# The variables
The first variable of the tidydata.txt file is the subject, then the activity is mentioned. 

For every subject and every activity, the mean is calculated per column feature.

# The following transformations are done:
- First the features and activity data has been loaded in R, called Features and Activities. 

- Then the test data has been loaded in R, called X_test, y_test and subject_test. 

- Then the train data has been loaded in R, called X_train, y_train and subject_train.

- Then the data has been labeled by the correct variable names. For this step, the Features is combined with the x_test and with x_train.

- In the next step, the training and test data are merged with cbind and rbind to have 1 big dataset.

- Then the column names are selected on the mean and the stddev with the grep function. 

- In the next step the activity values are changed in the specific activities.

- Finally, the average is calculated per activity and per subject with the aggregate function.

- In the final step a tidy dataset is created in tidydata.txt
