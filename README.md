# GettingAndClearningDataProject
Project for Coursera Getting and Clearning data assignment

# 1. Script

The script run_analysis.R in this repository contains the logic necessary to perform data aggregation and analysis described in an anssignment instructions. Script performs the following operations:

1. Get the data
2. Extract only relevant feature names (more on this in a codebook)
3. Translate feature names to human-friendly form
4. Merge test and training data
5. Aggregate data
6. 6. Save data to selected location

All this steps are called one by one by function

```
process_data <- function(filepath="./aggregated_data.csv"){
  feature_names <- read_feature_names()
  test_data <- read_full_data("test", feature_names)
  train_data <- read_full_data("train", feature_names)
  all_data <- merge_test_and_train_data(test_data, train_data)
  perform_aggregation(all_data)
  save_data(aggregated_data, filepath)
}
```

# 2. Aggregation correctness

Correctness of aggregation can be checked by loading aggregated data as a data frame and performing table operation of subjects against activities. As steted in the assignment details, EVERY SUBJECT HAS PERFORMED EVERY ACTIVITY so aggregated data in a long form should contain one row per subject-activity pair. 

By executing the following lines, you should receive exactly the same results:

```
table(all.data$subject, all.data$activity)
     laying sitting standing walking walking downstairs walking upstairs
  1       1       1        1       1                  1                1
  2       1       1        1       1                  1                1
  3       1       1        1       1                  1                1
  4       1       1        1       1                  1                1
  5       1       1        1       1                  1                1
  6       1       1        1       1                  1                1
  7       1       1        1       1                  1                1
  8       1       1        1       1                  1                1
  9       1       1        1       1                  1                1
  10      1       1        1       1                  1                1
  11      1       1        1       1                  1                1
  12      1       1        1       1                  1                1
  13      1       1        1       1                  1                1
  14      1       1        1       1                  1                1
  15      1       1        1       1                  1                1
  16      1       1        1       1                  1                1
  17      1       1        1       1                  1                1
  18      1       1        1       1                  1                1
  19      1       1        1       1                  1                1
  20      1       1        1       1                  1                1
  21      1       1        1       1                  1                1
  22      1       1        1       1                  1                1
  23      1       1        1       1                  1                1
  24      1       1        1       1                  1                1
  25      1       1        1       1                  1                1
  26      1       1        1       1                  1                1
  27      1       1        1       1                  1                1
  28      1       1        1       1                  1                1
  29      1       1        1       1                  1                1
  30      1       1        1       1                  1                1
```

# 3. Script usage

All you need to do in order to run this analysis is to start the script (from the command line or) RStudio. In order to work properly the script must be in the same directory, as the test/train directories and fetures.txt files. It will save the tidy data set in the same directory or (if you pass FULL PATH WITH FILENAME) in the selected directory.

Here are the steps necessary to start the script properly:

1. Place the script in the same directory as assignment data 
2. Start the script from cmd line or from rstudio:
  a) without any arguments - it will save a file aggregated_data.csv to current directory
  b) with FULL PATH WITH FILENAME - it will save the file there (e.g. C:\data\mydata\somefile.txt)
3. Enjoy the new tidy data set created

# 4. Codebook and aggregation process details

Detailed information about the selected features and performed aggregation process can be found in an attachement. Additionally, comments in the code show exactly what each method is doing.
