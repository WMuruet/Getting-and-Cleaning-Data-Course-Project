---
title: "README"
author: "Walter Muruet"
---

# Getting and Cleaning Data Course Project

## README File

### Content

1) UCI HAR Dataset: A folder containing the unzipped files. Please refer to ../UCI HAR Dataset/README.txt for more information

2) CodeBook.md: Contains a brief description of how the raw data was collected, as well as the list of variables included in the tidy data set (tidyDS.csv) with a brief description of each.

3) getdata-projectfiles-UCI HAR Dataset.zip: The zip file containing the raw data

4) INFO.txt: A file created as part of the output of Run_analysis.R. Contains information regarding the source of the data and the date it was downloaded.

5) README.md: This README file. Contains a description of the content in this repository as well as an explanation of how the scripts works.

6) Run_analysis.R: The R script used to process the data. Information about the process can be found below.

7) tidyDS.csv: The tidy data set containing 88 variables and 180 observations. The csv file is created for convinience Please refer to the CodeBook.md for more information

8) tidyDS.txt: The tidy data set containing 88 variables and 180 observations. The txt file is created to be uploaded to coursera. Please refer to the CodeBook.md for more information

9) untidyDS.csv: A by product of the tidying process. Contains a processed, but still untidy version of the merged data sets.

### Project Description

*Background: One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

*Purpose: to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

Methods: The processing and "tidying" of the data sets is performed by the Run_analysis.R Script available in this repository.
The Raw data sets were obtained from the [University of California Irvine Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The raw files can be downloaded [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

Run_analysis.R
This script was created in R Studio Version 0.98.1049

1) The script first checks if the required package (dplyr) is already installed. if not, it proceeds to install it

2) The script then checks if the raw files are in the current working directory. if not, it proceeds to obtain them/unzip them.

3) For convienence, the working directory is temporary changed to the unzipped folder (/UCI HAR Dataset). It would be changed back at the end of the script run.

4) The Script loads the train and test datasets using the read.table() function

5) The name of the variables, contained in "features.txt" are loded into the variable colnames using read.table

6) The name of the variables (contained in colnames) is used as column names for the train and test datasets

7) Two objects, one containing the subjects and one containing the activities (these can be found in "/train/subject_train.txt", "/test/subject_test.txt" for the subjects, and "/test/y_test.txt","/train/y_train.txt" for the activities) are created. Each is column binded with their respectice data set. 

8) The Train and Test Data sets are merged together. 

9) The activity labels (found in "activity_labels.txt") are aded to the activity column. Subject labels composed of "Subject#", where # is the subject number (1:30) are created and also added to the Subject Column. Both variables (Subject and Activity) are transformed into factors.

10) The variables names are change to more descriptive ones. In order to balance between tidy data principles for variable names (be all lower case, be descriptive, not repeated, not contain non-alphabetic characters or numbers) but maintain readability a camelcase approach was used as a middle ground when naming variables. the new names were then passed by the make.names() function to avoid duplicated columns names.

11) The tidy data set (tidyDS.csv) was created by selecting the Subject, Activity variables as well as all variables containin the words "mean" or "StandardDeviation" with select() and contain() functions. A "vague" approach was used in order to maximize the sensitivity (albeit sacrificing specificity) of the select() function, prefering to select some additional variables, than to lose important variables.

12) Four ouput files are created using the write.table() function with the parameters row.name=FALSE and Sep=",". Sep="," was used in order to allow reading the resulting csv files with the the read.csv without additional arguments. The output files are:

a) tidyDS.csv: the tidy data set

b) tidyDS.csv: the tidy data set in txt format to upload to coursera

C) untidyDS.csv: a by product

d) INFO.txt: a text file containing information (Source, Download Date) of the raw data sets.
