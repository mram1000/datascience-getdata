# datascience-getdata

---
#### run_analysis.R
#### Clean dataset for gyro and accelerometer readings
#### from smartphone readings on 30 subjects
#### For datascience Coursera Getting and Cleaning Data
---

## Program Steps
1. Read in the time and frequency domain variable vectors - from x_test.txt and x_train.txt
2. Read in and assign the header labels for both data sets - from features.txt
3. Read in and assign the activity codes for each row from file - from y_test.txt and y_train.txt  
4. Read in and assign subject data - from subject_test.txt and subject_train.txt
5. Merge the training and test datasets 
6. Look up activity labels and merge - from activity_labels.txt
7. Select std and mean variables only from the merged dataset
8. Rearrange columns for readability
9. Copy the data set (select_data) for re-naming columns
10. Assign meaningful variable names
11. Create tidy data set with averages by activity and subject
12. Write out the tidy data set to tidy_data.txt




