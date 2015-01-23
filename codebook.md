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
 
 ** As such, each cell value represents the Mean value of the feature for that subject and activity.**
 
 
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


## Notes: 

I have decided to keep the "t" and "f" prefixes for time domain and frequency domain signals respectively.

Std stands for standard deviation



Here is a description of each feature:

Feature	|	Type	|	Description	|	Domain
---------------------------------------------------------		-----------------		-----------------------		-------------
Subject	|	Int	|	Id of Subject	|	
ActivityName	|	Factor of 6 levels	|	Name of Activity	|	
tBodyAccelerationMeanXaxis	|	Num	|	Mean of Body Acceleration along the X Axis	|	Time
tBodyAccelerationMeanYaxis	|	Num	|	Mean of Body Acceleration along the Y Axis	|	Time
tBodyAccelerationMeanZaxis	|	Num	|	Mean of Body Acceleration along the Z Axis	|	Time
tBodyAccelerationStdXaxis	|	Num	|	Mean of Std of Body Acceleration along the X Axis	|	Time
tBodyAccelerationStdYaxis	|	Num	|	Mean of Std of Body Acceleration along the Y Axis	|	Time
tBodyAccelerationStdZaxis	|	Num	|	Mean of Std of Body Acceleration along the Z Axis	|	Time
tGravityAccelerationMeanXaxis	|	Num	|	Mean of Gravity Acceleration along the X Axis	|	Time
tGravityAccelerationMeanYaxis	|	Num	|	Mean of Gravity Acceleration along the Y Axis	|	Time
tGravityAccelerationMeanZaxis	|	Num	|	Mean of Gravity Acceleration along the Z Axis	|	Time
tGravityAccelerationStdXaxis	|	Num	|	Mean of Std of Gravity Acceleration along the X Axis	|	Time
tGravityAccelerationStdYaxis	|	Num	|	Mean of Std of Gravity Acceleration along the Y Axis	|	Time
tGravityAccelerationStdZaxis	|	Num	|	Mean of Std of Gravity Acceleration along the Z Axis	|	Time
tBodyAccelerationJerkMeanXaxis	|	Num	|	Mean of Body Acceleration Jerk along X axis	|	Time
tBodyAccelerationJerkMeanYaxis	|	Num	|	Mean of Body Acceleration Jerk along Y axis	|	Time
tBodyAccelerationJerkMeanZaxis	|	Num	|	Mean of Body Acceleration Jerk along Z axis	|	Time
tBodyAccelerationJerkStdXaxis	|	Num	|	Mean of Std of Body Acceleration Along X axis	|	Time
tBodyAccelerationJerkStdYaxis	|	Num	|	Mean of Std of Body Acceleration Along Y axis	|	Time
tBodyAccelerationJerkStdZaxis	|	Num	|	Mean of Std of Body Acceleration Along Z axis	|	Time
tBodyAngularVelocityMeanXaxis	|	Num	|	Mean of Body Angular Velocity Mean along X axis	|	Time
tBodyAngularVelocityMeanYaxis	|	Num	|	Mean of Body Angular Velocity Mean along Y axis	|	Time
tBodyAngularVelocityMeanZaxis	|	Num	|	Mean of Body Angular Velocity Mean along Z axis	|	Time
tBodyAngularVelocityStdXaxis	|	Num	|	Mean of Std of Body Angular Velocity along X axis	|	Time
tBodyAngularVelocityStdYaxis	|	Num	|	Mean of Std of Body Angular Velocity along Y axis	|	Time
tBodyAngularVelocityStdZaxis	|	Num	|	Mean of Std of Body Angular Velocity along Z axis	|	Time
tBodyAngularVelocityJerkMeanXaxis	|	Num	|	Mean of Body Jerk Angular Velocity mean along X axis	|	Time
tBodyAngularVelocityJerkMeanYaxis	|	Num	|	Mean of Body Jerk Angular Velocity mean along Y axis	|	Time
tBodyAngularVelocityJerkMeanZaxis	|	Num	|	Mean of Body Jerk Angular Velocity mean along Z axis	|	Time
tBodyAngularVelocityJerkStdXaxis	|	Num	|	Mean of Body Jerk Angular Velocity Std along X axis	|	Time
tBodyAngularVelocityJerkStdYaxis	|	Num	|	Mean of Body Jerk Angular Velocity Std along Y axis	|	Time
tBodyAngularVelocityJerkStdZaxis	|	Num	|	Mean of Body Jerk Angular Velocity Std along Z axis	|	Time
tBodyAccelerationMagnitudeMean	|	Num	|	Mean of Body Acceleration Magnitude mean	|	Time
tBodyAccelerationMagnitudeStd	|	Num	|	Mean of Body Acceleration Magnitude Std	|	Time
tGravityAccelerationMagnitudeMean	|	Num	|	Mean of Gravity Acceleration Magnitude mean	|	Time
tGravityAccelerationMagnitudeStd	|	Num	|	Mean of Gravity Acceleration Magnitude Std	|	Time
tBodyAccelerationJerkMagnitudeMean	|	Num	|	Mean of Body Acceleration Magnitude jerk mean	|	Time
tBodyAccelerationJerkMagnitudeStd	|	Num	|	Mean of Body Acceleration Magnitude jerk Std	|	Time
tBodyAngularVelocityMagnitudeMean	|	Num	|	Mean of Body Angular Velocity Magnitude mean	|	Time
tBodyAngularVelocityMagnitudeStd	|	Num	|	Mean of Body Angular Velocity Magnitude Std	|	Time
tBodyAngularVelocityJerkMagnitudeMean	|	Num	|	Mean of Body Anguklar Velocity Magnitude Jerk mean	|	Time
tBodyAngularVelocityJerkMagnitudeStd	|	Num	|	Mean of Body Anguklar Velocity Magnitude Jerk Std	|	Time
fBodyAccelerationMeanXaxis	|	Num	|	Mean of Body Acceleration along X axis mean	|	Frequency
fBodyAccelerationMeanYaxis	|	Num	|	Mean of Body Acceleration along Y axis mean	|	Frequency
fBodyAccelerationMeanZaxis	|	Num	|	Mean of Body Acceleration along Z axis mean	|	Frequency
fBodyAccelerationStdXaxis	|	Num	|	Mean of Body Acceleration along X axis Std	|	Frequency
fBodyAccelerationStdYaxis	|	Num	|	Mean of Body Acceleration along Y axis Std	|	Frequency
fBodyAccelerationStdZaxis	|	Num	|	Mean of Body Acceleration along Z axis Std	|	Frequency
fBodyAccelerationJerkMeanXaxis	|	Num	|	Mean of Body Acceleration Jerk along X axis mean	|	Frequency
fBodyAccelerationJerkMeanYaxis	|	Num	|	Mean of Body Acceleration Jerk along Y axis mean	|	Frequency
fBodyAccelerationJerkMeanZaxis	|	Num	|	Mean of Body Acceleration Jerk along Z axis mean	|	Frequency
fBodyAccelerationJerkStdXaxis	|	Num	|	Mean of Body Acceleration Jerk along X axis Std	|	Frequency
fBodyAccelerationJerkStdYaxis	|	Num	|	Mean of Body Acceleration Jerk along Y axis Std	|	Frequency
fBodyAccelerationJerkStdZaxis	|	Num	|	Mean of Body Acceleration Jerk along Z axis Std	|	Frequency
fBodyAngularVelocityMeanXaxis	|	Num	|	Mean of Body Angular Velocity Along X axis mean	|	Frequency
fBodyAngularVelocityMeanYaxis	|	Num	|	Mean of Body Angular Velocity Along Y axis mean	|	Frequency
fBodyAngularVelocityMeanZaxis	|	Num	|	Mean of Body Angular Velocity Along Z axis mean	|	Frequency
fBodyAngularVelocityStdXaxis	|	Num	|	Mean of Body Angular Velocity Along X axis Std	|	Frequency
fBodyAngularVelocityStdYaxis	|	Num	|	Mean of Body Angular Velocity Along Y axis Std	|	Frequency
fBodyAngularVelocityStdZaxis	|	Num	|	Mean of Body Angular Velocity Along Z axis Std	|	Frequency
fBodyAccelerationMagnitudeMean	|	Num	|	Mean of Body Acceleration Magnitude mean	|	Frequency
fBodyAccelerationMagnitudeStd	|	Num	|	Mean of Body Acceleration Magnitude Std	|	Frequency
fBodyAccelerationJerkMagnitudeMean	|	Num	|	Mean of Body Jerk Acceleration Magnitude mean	|	Frequency
fBodyAccelerationJerkMagnitudeStd	|	Num	|	Mean of Body Jerk Acceleration Magnitude Std	|	Frequency
fBodyAngularVelocityMagnitudeMean	|	Num	|	Mean of Body Angular Velocity Magnitude mean	|	Frequency
fBodyAngularVelocityMagnitudeStd	|	Num	|	Mean of Body Angular Velocity Magnitude Std	|	Frequency
fBodyAngularVelocityJerkMagnitudeMean	|	Num	|	Mean of Body Angular Velocity Jerk Magnitude mean	|	Frequency
fBodyAngularVelocityJerkMagnitudeStd	|	Num	|	Mean of Body Angular Velocity Jerk Magnitude Std	|	Frequency	







### Source: