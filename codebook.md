Tidy Data Set Project - Codebook
=================================

Coursera: Getting and Cleaning Data
-------------------------------------

Author: Dawar Dedmari  
Created Date: 23 Jan 2015 


### Introduction:  

This code book lists the columns in the final tidy data set produced by the run_analysis.R script in this repo.

The original data set had 561 features listed. Out of these, I have selected all the features which had mean() or std() in them.
This gave me a total of 79 features. However, I am not going to concider the columns which have meanFreq() in them since i think
 these are frequencies rather than mean values by themselves. There are 13 such variables. So after removing these columns, I have the 
 list of my final 66 features in the input data set.
 
 
 Also, after combining the test and training data set, I have grouped the final tidy data by Subject and Activity and then taken the Mean of each row.
 
 As such, each cell value represents the Mean value of the feature for that subject and activity.
 
 
### Feature Names Cleanup:

I have applied the following transformations to make my feature names tidy:

* removed hyphens "-"
* removed brackets "()"              
* removing repeated word "Body"
* expanded short form "Acc" to "Acceleration" to make it more readable 
* expanded short form "Gyro" to "AngularVelocity" to make it more meaningful
* expanded short form "Mag" to "Magnitude" to make it more readable          
* Converted variable names to uniform case where I initial letters are capitalized
* Expanded X$ to Xaxis to make it more readable
* Expanded Y$ to Yaxis to make it more readable
* Expanded Z$ to Zaxis to make it more readable


Here is a description of each feature:


Feature	|	Type	|	Description
--------|-----------|-------------------
Subject	|	Int	|	Id of Subject
ActivityName	|	Factor of 6 levels	|	Name of Activity
tBodyAccelerationMeanXaxis	|	Num	|	







### Source: