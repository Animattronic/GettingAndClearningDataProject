# reads the feature names from the proper file
read_feature_names <- function(){
  feature_names <- read.table("./features.txt", header=FALSE, col.names=c("id", "name"))
  return(feature_names$name)
}

# gives the meaningfull names to coded activites
rename_activities <- function(activities_codes){
  names <- c("walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying")
  sapply(activities_codes, function(code) names[code])
}

# translates original names to fiendly ones.
# Friendly-names are constricted as follows:
# a) remove "-" and "()" signs and replace them with dots
# b) remove CamelCaseTexts and replace them with the text.separated.by.dot
build_friendly_name <- function(name){
  name <- gsub("\\(\\)", "\\1", name)
  name <- gsub("\\-", " ", name)
  name <- paste(strsplit(gsub("([A-Z])", " \\1", name), " ")[[1]], collapse=".")
  name <- gsub("\\.\\.", ".", name)
  name <- gsub("Body\\.Body", "Body", name)
  name
}

# given the list of un-friendly names, transform every one of them into the friendly form
build_friendly_names <- function(all.names){
  sapply(all.names, FUN=function(name) build_friendly_name(name))
}

# extracts the features names which contain the word "mean" or "std" inside
get_mean_std_feature_names <- function(all_feature_names){
  all_feature_names[grep("mean|std", all_feature_names)]
}

# reads full data of a given type - either test or train
read_full_data <- function(type, feature_names){  
  
  # build paths for main data, activities and subjects
  X.path <- paste("./", type, "/", "X_", type, ".txt", sep="")
  Y.path <- paste("./", type, "/", "Y_", type, ".txt", sep="")
  subjects.path <- paste("./", type, "/subject_", type, ".txt", sep="")
  
  # reads the main data from path, extracts mean/std columns and renames them
  full_data <- read.table(X.path, header=FALSE, col.names=feature_names)    
  mean_or_std_feature_names <- get_mean_std_feature_names(feature_names)
  full_data <- full_data[, mean_or_std_feature_names]
  colnames(full_data) <- build_friendly_names(mean_or_std_feature_names)
  
  # gets and renames activities
  activity_data <- read.table(Y.path, header=FALSE, col.names=c("activity"))
  activities <- rename_activities(activity_data$activity)
  
  # extracts subjects and merges all types of data together
  subject_data <- read.table(subjects.path, header=FALSE, col.names=c("subject"))
  full_data <- cbind(full_data, activities, subject_data)
  
  full_data
}

# binds together test data and train data
merge_test_and_train_data <- function(test_data, train_data){
  all_data <- rbind(test_data, train_data)
  all_data
}

# summarizes data in a LONG FORM (multiple rows per one subject)
perform_aggregation <- function(all_data){
  
  long_form_results <- data.frame()
  
  # select columns for which the means will be calculated
  value_columns_indices <- which(!(colnames(all_data) %in% c("subject", "activities")))
  value_columns <- colnames(all_data)[value_columns_indices]
  
  # for each subject...
  for(subject in unique(all_data$subject)){
    subject_data <- all_data[all_data$subject == subject,]
    
    # aggregate subject by the activity type
    aggregated_data <- aggregate(x = subject_data[,value_columns], by=list(activity=subject_data[, "activities"]), FUN = mean)
    aggregated_data$subject <- subject
    
    # bind aggregated results for each subject
    long_form_results <- rbind(long_form_results, aggregated_data)
  }
  long_form_results
}

# saves the tidy data set in a given location
save_data <- function(data){
  write.table(x = data, file = "./aggregated_data.csv", sep = ",", row.names = FALSE)
}

# the main procedure which combines all necessary steps to complete the task
process_data <- function(){
  feature_names <- read_feature_names()
  test_data <- read_full_data("test", feature_names)
  train_data <- read_full_data("train", feature_names)
  all_data <- merge_test_and_train_data(test_data, train_data)
  aggregated_data <- perform_aggregation(all_data)
  save_data(aggregated_data)
}

process_data()