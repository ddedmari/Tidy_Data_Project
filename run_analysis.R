# This code will create a tidy data set from the raw data
# author: dawar dedmari
# created date: 21 jan 2015

#loading required libraries

library(dplyr)

# ----- in this code section, i am going to get the list of features to process further -------

# I have used full paths to the raw data files on my computer
# if you want to run the code, please change the paths to reflect your relative locations

# loading the list of features

features<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/features.txt")

# next I look for the features which have mean() or std() in their names
# this gives me 79 variables

selected_columns<-grep("mean()|std()",features$V2)

# however, i am not going to concider the columns which have meanFreq() since i think 
# these are frequencies rather than mean values by themselves
# this gives me 13 variables

remove<-grep("meanFreq()",features$V2)

# i remove the above from my selected features
# this gives me the 66 columns i will concider to process further

selected_columns<-selected_columns[-which(selected_columns %in% remove)]
selected_features<-features[selected_columns,]

# cleaning up by removing objects
rm("features","remove")


# ----- in this code section, i am going to clean up the variable names to make them tidy -------

# In this section, I am going to clean up the variable names by applying multiple transformations
# I am going to keep the t prefix for time domain and f prefix for frequency domain

# removing hyphens
selected_features$V2<-gsub("-", "", selected_features$V2)

# removing ()
selected_features$V2<-gsub("\\()", "", selected_features$V2)                  

# removing repeated word
selected_features$V2<-gsub("BodyBody", "Body", selected_features$V2)
 
# expanding short forms to make it more readable           
selected_features$V2<-gsub("Acc", "Acceleration", selected_features$V2)
selected_features$V2<-gsub("Gyro","AngularVelocity", selected_features$V2)
selected_features$V2<-gsub("Mag", "Magnitude", selected_features$V2)

# getting the uniform case
selected_features$V2<-gsub("mean", "Mean", selected_features$V2)
selected_features$V2<-gsub("std", "Std", selected_features$V2)


 # replacing with meaningfull expansion
selected_features$V2<-sub("X$", "Xaxis", selected_features$V2)                
selected_features$V2<-sub("Y$", "Yaxis", selected_features$V2) 
selected_features$V2<-sub("Z$", "Zaxis", selected_features$V2)


# ----- in this code section, i am going to load the test data and combine it into single df -------


# loading activity labels
activity_labels<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/activity_labels.txt")

# giving meaningfull names to the column headers
names(activity_labels)<-c("Activity","ActivityName")

#loading test data
test<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/test/X_test.txt")

# subsetting to only the selected columns
test_selected_columns<-test[,selected_columns]

# loading test activities data
test_activities<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/test/y_test.txt")

# loading test users data
test_subjects<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/test/subject_test.txt")

# giving appropriate column names 

names(test_subjects)<-"Subject"
names(test_activities)<-"Activity"
names(test_selected_columns)<-selected_features$V2

# combining test subjects, activities and data into a single dataframe
test_data<-data.frame(test_subjects,test_activities, test_selected_columns)

# cleaning up by removing objects
rm("test_subjects", "test_activities","test", "test_selected_columns")


# ----- in this code section, i am going to load the training data and combine it into single df -------

#loading training data
train<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/train/X_train.txt")

# subsetting to only the selected columns
train_selected_columns<-train[,selected_columns]

# loading training activities data
train_activities<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/train/y_train.txt")

# loading training users data
train_subjects<-read.table("/Users/ddedmari/my_R/tidy_project/UCI HAR Dataset/train/subject_train.txt")

# giving appropriate column names 
names(train_subjects)<-"Subject"
names(train_activities)<-"Activity"
names(train_selected_columns)<-selected_features$V2

# combining training subjects, activities and data into a single dataframe
train_data<-data.frame(train_subjects,train_activities, train_selected_columns)

# cleaning up by removing objects
rm("train_subjects","train_activities", "train", "train_selected_columns")

# combining test and training data
merged_data<-rbind(test_data,train_data)


# cleaning up by removing objects
rm("test_data","train_data")

# ----- in this code section, i am going to merge the data with activity to get activity names -------

merged_data_with_activity_names<-merge(merged_data,activity_labels,by.merged_data="Activity",by.activity_labels="Activity")

# converting my df to tbl_df for further processing using dplyr package

merged_data_with_activity_names_tbl<-tbl_df(merged_data_with_activity_names)

# cleaning up by removing objects
rm("merged_data", "merged_data_with_activity_names")

# ----- in this code section, i am going to group the data and summarize it to create a tidy data set -------

tidy_data<-merged_data_with_activity_names_tbl %>%
select(-Activity) %>%
select(Subject,ActivityName,2:67) %>%
group_by(Subject, ActivityName) %>%
summarise_each(funs(mean),-Subject,-ActivityName)

# ----- in this code section, i am finally writing my tidy data set into a txt file -------

write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)








