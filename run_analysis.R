## Getting and Cleaning Data Course Project
## getcleandata_assignment/run_analysis.R

## Assignment for Getting and Cleaning Data course from John Hopkins/Coursera
## https://class.coursera.org/getdata-012/human_grading/

## GitHub repository at
## https://github.com/whanrott/getcleandata_assignment

## get the activity labels (just in case at the moment)
activity_labels <- 
  read.table("./uci_har_dataset/activity_labels.txt", header = FALSE, sep = " ", col.names = c("activity_number","activity_name"))

## get the feature descriptions to be used as headings
features <-
  read.table("./uci_har_dataset/features.txt", header = FALSE, sep = " ", col.names = c("feature_number","feature_name"))

## merge the activity columns with the data observations, adding in column headers
all_data_xy <-
  rbind(
    cbind(
      read.table("./uci_har_dataset/test/y_test.txt", col.names = "activity"), 
      read.table("./uci_har_dataset/test/X_test.txt", col.names = features[,2])),
    cbind(
      read.table("./uci_har_dataset/train/y_train.txt", col.names = "activity"), 
      read.table("./uci_har_dataset/train/X_train.txt", col.names = features[,2]))
  )
