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

## filter the column names to include only those containing "mean" or "std"
mean_std_columns <- grep("(mean|std)",names(all_data_xy), value = FALSE)
filtered_data_xy <- all_data_xy[c(1,mean_std_columns)]

## match the activity categories to replace numbers in activity column

filtered_data_xy <- 
  merge(
    activity_labels,
    filtered_data_xy,
    by.x = "activity_number",
    by.y = "activity",
    all.y = TRUE
    )

## I've interpreted step 4 (tidy variable names) as meaning internal variable names
## I am going to do a bit of tidying on the column names as well. I don't see that I 
## can improve on the names without making them very long.

names(filtered_data_xy) <- gsub("[.]+","_",names(filtered_data_xy))

## for the average of each variable, I'm going to split, apply, combine!

data_by_activity <- 
  split(filtered_data_xy,filtered_data_xy$activity_name)
#print(str(data_by_activity))

data_by_activity_mean <-
  sapply(data_by_activity,
         function(x) {colMeans(x[, -(1:2)])})

print(head(data_by_activity_mean))
write.table(data_by_activity_mean,"tidy_data.txt", row.name=FALSE,)
write.table(data_by_activity_mean,"tidy_data_with_rownames.txt", row.name=TRUE,)
