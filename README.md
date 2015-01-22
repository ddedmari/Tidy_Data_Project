Tidy Data Set Project
=========================

Coursera: Getting and Cleaning Data
-------------------------------------

Author: Dawar Dedmari  
Created Date: 23 Jan 2015 

### Contents:

This repo includes the following files:  
  
  * README.md - This doc gives an over all picture of the contents of the repo and how they relate to each other  
  * Codebook.md - This doc gives a list of features of columns in the tidy data set along with their explanations
  * run_analysis.R - This is the R script which generates the tidy data set from the input files.   

### Introduction:  

As part of the Getting and Cleaning Data course at Coursera, the students have been asked to generate a summarized tidy data set from 
the "Human Activity Recognition Using Smartphones Dataset" from UCI Machine Learning Repository.

### Data Source:

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Input Data Files:

Out of the full data set, I am using the following files only (their descriptions are also provided):

* features.txt - list of 561 features in the input data set.
* activity_labels.txt - files which contains the mapping from activity code to activity name
* X_test.txt - test data
* y_test.txt - test activity data
* subject_test.txt - test subjects data
* X_train.txt - training data
* y_train.txt - training activity data
* subject_train.txt - training subjects data

The relationships between the various files are illustrated in the figure below:

![Input files relations](https://github.com/ddedmari/Tidy_Data_Project/blob/master/Slide2.png)

### My Approach to generate Tidy Data set:

I am listing down all the steps I perform to go from the input data files to the tidy data set output:

1. Load the full list of features into a df called features.
2. Next I look for the features which have mean() or std() in their names. This gives me 79 variables
3. However, i am not going to concider the columns which have meanFreq() in them since i think these are frequencies rather than mean values by themselves. There are 13 such variables.
4. I remove the above from my selected features. This gives me the final 66 columns i will consider to process further into my tidy data set.
5. Next I clean up the variable names by applying multiple transformations as given in the run_analysis.R comments. I am going to keep the t prefix for time domain and f prefix for frequency domain variables.
6. I then load and combine the test activity, test users and the selected variables from the test data into single df called test_data. During this step, I also give meaning full variable names to my columns.
7. I apply similar steps to combine the training users, activities and training data set into a single df called train_data.
8. Finally i merge both test and training data dfs into a single df called merged_data.
9. I convert the merged_data df into a tbl_df since i want to use dplyr package.
10. I rearrange my columns and then group the data and summarize it to create a final tidy data set.
11. I write the tidy data set into a text file called tidy_data.txt which is the final output required.




### Notes:

If you want to read the tidy data set, please use the following command:  

tidy_data <- read.table("tidy_data.txt", header = TRUE)

### License:




