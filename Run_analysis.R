## Coursera Data Scientist Specialisation ##
## Getting and Cleaning Data ##
#### Course Project ####

## Check if required Libraries are installed
##
if (!"dplyr" %in% rownames(installed.packages())){install.packages("Dplyr")}

## Load Required Libraries

require("dplyr")

## Check if the need it files exist in the working directory
## and download the zip file if they do not exist
if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip"))
        {
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ",
                      destfile= "getdata-projectfiles-UCI HAR Dataset.zip", #Name of the destination file
                      mode="wb") # Unzip seems to have problems unzipping the files if not downloaded with this mode..
downloaddatezip<-date()
}
if(!file.exists("UCI HAR Dataset"))
        {
         unzip("getdata-projectfiles-UCI HAR Dataset.zip") #unzips the downloaded files
}
setwd("UCI HAR Dataset") #Sets working directory to the folder containing the database files

## Load the test and train datasets

testds<-read.table("./test/X_test.txt") 
# testds Contains 2947 observations (30% of all observations) 
# of 561 variables. This is the test data set

trainds<- read.table("./train/X_train.txt")
# trainds Contains 7352 observations (70% of all observations)
# of 561 variables. This is the train data set

## Add the variables names to the data sets
# Read the file containing the names
colnames<- read.table("features.txt") #Loads a dataframe of dim. 561,2
colnames<-colnames[,2] #contains a vector of length 561 corresponding
# to the names of the variables

# change the names of the variables in our train and test data sets
names(trainds)<- colnames
names(testds)<- colnames

## Add a column that contains the subjects (cases) to which the 
# measurements correspond
# and another column containing the activities (coded) the subjects
# performed while the measurements were made

# Read the files containing the name of the subjects
subjtrain<-read.table("./train/subject_train.txt")# 7352 Subjects in train
subjtest<-read.table("./test/subject_test.txt")# 2947 Subjects in test

# Read the files containing the name of the cases
ytest<- read.table("./test/y_test.txt")#Contains 2947 activities codes 
# (levels 1-6) for the test data set

ytrain<- read.table("./train/y_train.txt")#Contains 7352 activities code
# (levels 1-6) for the training data set

# Add the new columns to their respective data sets
trainds<-cbind(subjtrain,ytrain,trainds)
testds<-cbind(subjtest,ytest,testds)

# Name the new columns "Subject" and "Activity" respectively
names(trainds)[c(1,2)]<- c("Subject","Activity")
names(testds)[c(1,2)]<- c("Subject","Activity")

## Merge both datasets
DS<-rbind(trainds,testds)

## Add the corresponding Labels to the "Activity" variable
# Create a vector containing the appropiate levels and labels for
# the variable activity
actlabels<- read.table("activity_labels.txt")
actlevels<- actlabels[,1]
actlabels<- actlabels[,2]

# Although activity is considered as an "integer", for our purposes
# it is a categorical variable, and as such, it should be classified
# as a "factor"
DS$Activity<-factor(DS$Activity,levels=actlevels, labels=actlabels)

# The variable subject is also considered as an "integer" and again,
# it would be better suited to classified as factor
DS$Subject<- factor(DS$Subject,
                    levels=1:length(unique(DS$Subject)),
                    labels=paste("Subject",1:length(unique(DS$Subject))))

# Replacing Variables names to more descriptive ones
names(DS)<-gsub("tBodyAcc", "timeBodyAccel",names(DS))
names(DS)<-gsub("tBodyGyro", "timeBodyAngularAccel",names(DS))
names(DS)<-gsub("tGravityAcc","timeGravityAccel",names(DS))
names(DS)<-gsub("tBodyAccJerk","timeBodyAccelJerk",names(DS))
names(DS)<-gsub("tBodyGyroJerk","timeBodyAngularJerk",names(DS))

names(DS)<-gsub("timeBodyAccelMag","timeBodyAccelmagnitude",names(DS))
names(DS)<-gsub("timeGravityAccelMag","timeGravityAccelMagnitude",names(DS))
names(DS)<-gsub("timeBodyAccelJerkMag","timeBodyAccelJerkMagnitude",names(DS))
names(DS)<-gsub("timeBodyAngularAccelMag","timeBodyAngularMagnitude",names(DS))
names(DS)<-gsub("timeBodyAngularJerkMag","timeBodyAngularJerkMagnitude",names(DS))

names(DS)<-gsub("fBodyAcc","freqBodyAccel",names(DS))
names(DS)<-gsub("fBodyBodyAcc","freqBodyAccel",names(DS))
names(DS)<-gsub("fBodyAccJerk","freqBodyAccelJerk",names(DS))
names(DS)<-gsub("fBodyBodyAccJerk","freqBodyAccelJerk",names(DS))
names(DS)<-gsub("fBodyGyro","freqAngularAccel",names(DS))
names(DS)<-gsub("fBodyBodyGyro","freqAngularAccel",names(DS))

names(DS)<-gsub("FreqBodyAccelJerk","freqBodyAccelJerkMagnitude",names(DS))
names(DS)<-gsub("fBodyBodyAccJerkMag","freqBodyAccelJerkMagnitude",names(DS))
names(DS)<-gsub("freqAngularAccelMag","freqBodyAngularMagnitude",names(DS))
names(DS)<-gsub("fBodyBodyGyroMag","freqBodyAngularMagnitude",names(DS))
names(DS)<-gsub("freqAngularAccelMag","freqBodyAngularJerkMagnitude",names(DS))
names(DS)<-gsub("freqAngularAccelkMag","freqBodyAngularJerkMagnitude",names(DS))
names(DS)<-gsub("fBodyBodyGyroJerkMag","freqBodyAngularJerkMagnitude",names(DS))

names(DS)<-gsub("mean\\()","mean",names(DS)) #\\ is needed to escape parenthesis or special characters in R
names(DS)<-gsub("std\\()","standardDeviation",names(DS))
names(DS)<-gsub("mad\\()","medianAbsoluteDeviation",names(DS))
names(DS)<-gsub("max\\()","maximum",names(DS))
names(DS)<-gsub("min\\()","minimun",names(DS))
names(DS)<-gsub("sma\\()","signalMagnitudeArea",names(DS))
names(DS)<-gsub("energy\\()","energy",names(DS))
names(DS)<-gsub("iqr\\()","interquartileRange",names(DS))
names(DS)<-gsub("entropy\\()","entropy",names(DS))
names(DS)<-gsub("arCoeff\\()","autorregresionCoef",names(DS))
names(DS)<-gsub("correlation\\()","correlCoef",names(DS))
names(DS)<-gsub("maxInds\\()","maximumFreqIndex",names(DS))
names(DS)<-gsub("meanFreq\\()","meanFreq",names(DS))
names(DS)<-gsub("skewness\\()","skewness",names(DS))
names(DS)<-gsub("kurtosis\\()","kurtosis",names(DS))
names(DS)<-gsub("bandsEnergy\\()","energyInterval",names(DS))


names(DS)<-gsub("angle\\(timeBodyaccelMean,gravity\\)","angleTimeBodyAccelMeanGravity",names(DS))
names(DS)<-gsub("angle\\(timeBodyaccelJerkMean\\),gravityMean\\)","angleTimeBodyAccelJerkMeanGravityMean",names(DS))
names(DS)<-gsub("angle\\(timeBodyAngularAccelMean,gravityMean\\)","angleTimeBodyAngularMeanGravityMean",names(DS))
names(DS)<-gsub("angle\\(timeBodyAngularAccelJerkMean,gravityMean\\)","angleTimeBodyAngularJerkMeanGravityMean",names(DS))
names(DS)<-gsub("angle\\(X,gravityMean\\)","angleXGravityMean",names(DS))
names(DS)<-gsub("angle\\(Y,gravityMean\\)","angleYGravityMean",names(DS))
names(DS)<-gsub("angle\\(Z,gravityMean\\)","angleZGravityMean",names(DS))

## Valid Columns names (to avoid Duplicated Columns)
valid_names<-make.names(names=names(DS), unique=TRUE, allow_=TRUE)
names(DS)<- valid_names

## Extracts only measurements on the mean and stadard deviation
DS_mean_std<-select(DS,Subject, Activity,contains("mean"),contains("standardDeviation"))

tidyDS<-aggregate(DS_mean_std[,3:dim(DS_mean_std)[2]], by=list(Subject=DS_mean_std$Subject, Activity=DS_mean_std$Activity ),mean)
setwd("../")

write.table(tidyDS,"tidyDS.csv",row.name=FALSE, sep=",")

write.table(tidyDS,"tidyDS.txt",row.name=FALSE, sep=",")

write.table(DS, "untidyDS.csv",row.name=FALSE, sep=",")

downloaddate<-paste ("The data sets were obtained from the University of Irvine (UCI) \nRepository Center for Machine Learning and Intelligent Systems \n\nFrom the Human Activity Recognition Using Smartphones Data Set[1] \n\n\nFile Url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip \n\n\nDownloaded on:",downloaddatezip, sep=" ")
downloaddate<-paste (downloaddate, "\n\n\n[1]Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra \nand Jorge L. Reyes-Ortiz. \nHuman Activity Recognition on Smartphones using a \nMulticlass Hardware-Friendly Support Vector Machine. \nInternational Workshop of Ambient Assisted Living (IWAAL 2012). \nVitoria-Gasteiz, Spain. Dec 2012
")

write.table(downloaddate, "INFO.txt",row.name=FALSE, col.name=FALSE)                     


