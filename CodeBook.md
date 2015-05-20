****
title: "CodeBook.md"
author: "Madhu Ram"
date: "Tuesday, May 19, 2015"
output: html_document
****


# Getting and Cleaning Data Course Project - Code Book

## Human Activity Recognition Using Smartphones Data Set 

###Abstract: 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

###Coursera project additional modifications
Original data described below was further modified by Madhu Ram to create a final summary in a single tidy data set showing the mean values of each Activity measured for each Subject. The mean values were computed for all mean std deviation variables in the original data set. 

###Final Data Set Summary (tidy data mean values by Activity and Subject)
Data Set Characteristics:  Multivariate, Time-Series
Number of Instances: 180
Number of Attributes: 68

### Original Data Source:
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


###Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]


###Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

In final tidy data set, the following attributes were created with descriptive names. Each value in the dataset is the mean value for each variable computed by Activity and Subject.

1. ActivityName
2. Subject
3. Time.Body.Acceleration.Mean.X-Axis
4. Time.Body.Acceleration.Mean.Y-Axis
5. Time.Body.Acceleration.Mean.Z-Axis
6. Time.Body.Acceleration.StdDev.X-Axis
7. Time.Body.Acceleration.StdDev.Y-Axis
8. Time.Body.Acceleration.StdDev.Z-Axis
9. Time.Gravity.Acceleration.Mean.X-Axis
10. Time.Gravity.Acceleration.Mean.Y-Axis
11. Time.Gravity.Acceleration.Mean.Z-Axis
12. Time.Gravity.Acceleration.StdDev.X-Axis
13. Time.Gravity.Acceleration.StdDev.Y-Axis
14. Time.Gravity.Acceleration.StdDev.Z-Axis
15. Time.Body.Acceleration.Jerk.Mean.X-Axis
16. Time.Body.Acceleration.Jerk.Mean.Y-Axis
17. Time.Body.Acceleration.Jerk.Mean.Z-Axis
18. Time.Body.Acceleration.Jerk.StdDev.X-Axis
19. Time.Body.Acceleration.Jerk.StdDev.Y-Axis
20. Time.Body.Acceleration.Jerk.StdDev.Z-Axis
21. Time.Body.Gyroscope.Mean.X-Axis
22. Time.Body.Gyroscope.Mean.Y-Axis
23. Time.Body.Gyroscope.Mean.Z-Axis
24. Time.Body.Gyroscope.StdDev.X-Axis
25. Time.Body.Gyroscope.StdDev.Y-Axis
26. Time.Body.Gyroscope.StdDev.Z-Axis
27. Time.Body.Gyroscope.Jerk.Mean.X-Axis
28. Time.Body.Gyroscope.Jerk.Mean.Y-Axis
29. Time.Body.Gyroscope.Jerk.Mean.Z-Axis
30. Time.Body.Gyroscope.Jerk.StdDev.X-Axis
31. Time.Body.Gyroscope.Jerk.StdDev.Y-Axis
32. Time.Body.Gyroscope.Jerk.StdDev.Z-Axis
33. Time.Body.Acceleration.Mag.Mean.
34. Time.Body.Acceleration.Mag.StdDev.
35. Time.Gravity.Acceleration.Mag.Mean.
36. Time.Gravity.Acceleration.Mag.StdDev.
37. Time.Body.Acceleration.Jerk.Mag.Mean.
38. Time.Body.Acceleration.Jerk.Mag.StdDev.
39. Time.Body.Gyroscope.Mag.Mean.
40. Time.Body.Gyroscope.Mag.StdDev.
41. Time.Body.Gyroscope.Jerk.Mag.Mean.
42. Time.Body.Gyroscope.Jerk.Mag.StdDev.
43. Freq.Body.Acceleration.Mean.X-Axis
44. Freq.Body.Acceleration.Mean.Y-Axis
45. Freq.Body.Acceleration.Mean.Z-Axis
46. Freq.Body.Acceleration.StdDev.X-Axis
47. Freq.Body.Acceleration.StdDev.Y-Axis
48. Freq.Body.Acceleration.StdDev.Z-Axis
49. Freq.Body.Acceleration.Jerk.Mean.X-Axis
50. Freq.Body.Acceleration.Jerk.Mean.Y-Axis
51. Freq.Body.Acceleration.Jerk.Mean.Z-Axis
52. Freq.Body.Acceleration.Jerk.StdDev.X-Axis
53. Freq.Body.Acceleration.Jerk.StdDev.Y-Axis
54. Freq.Body.Acceleration.Jerk.StdDev.Z-Axis
55. Freq.Body.Gyroscope.Mean.X-Axis
56. Freq.Body.Gyroscope.Mean.Y-Axis
57. Freq.Body.Gyroscope.Mean.Z-Axis
58. Freq.Body.Gyroscope.StdDev.X-Axis
59. Freq.Body.Gyroscope.StdDev.Y-Axis
60. Freq.Body.Gyroscope.StdDev.Z-Axis
61. Freq.Body.Acceleration.Mag.Mean.
62. Freq.Body.Acceleration.Mag.StdDev.
63. Freq.BodyBody.Acceleration.Jerk.Mag.Mean.
64. Freq.BodyBody.Acceleration.Jerk.Mag.StdDev.
65. Freq.BodyBody.Gyroscope.Mag.Mean.
66. Freq.BodyBody.Gyroscope.Mag.StdDev.
67. Freq.BodyBody.Gyroscope.Jerk.Mag.Mean.
68. Freq.BodyBody.Gyroscope.Jerk.Mag.StdDev.

###Further processing by Madhu Ram for Coursera project

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

###Relevant Papers:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.



Citation Request:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

        
