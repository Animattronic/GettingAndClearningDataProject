# DATA TRANSFORMATIONS & CODE BOOK (VARIABLES DESCRIPTION) 

## Data transformations
Data in the original form has been selected and cleaned using a series of operations described below. Later on grouping and aggregation operations were performed to form per subject/per activity summaries.
Here is the high-level explanation, all detailed comments for the concrete operations can be found in a code.
1. Cleaning operations:
  1. Test/training data has been loaded separately from the proper path
  2. Only columns describing mean or standard deviation has been extracted (including the Mean Frequency column, as it carries useful information about the devices functioning)
  3. Column renaming operation has been performed:
    1. Remove "-" characters
    2. Remove (, ) characters
    3. Split CamelCaseNames to Dot.Separated.Names
    4. Remove duplicated words from column names e.g. Body.Body
  4. Encoding the activities names – translate numeric values provided in Feature_info.txt file to human-readable forma
2. Merging operations: test data and Training data has been merged to long form – new rows has been added for subject and activity
3. Aggregation operations
  1. Assumptions and methodology
  Aggregation has been performed for every subject, against every activity. The long form of the data has been used, so we have as separate row for every subject-activity pair. So the total number of rows is:
n.subjects * n.activities
30 * 6 = 180
  2. Oprations:
    1. Create empty data frame
    2. For each subject: summarize each activity, add result to data frame
    3. return data frame
  3. Correctness: correctness of operation performed above can be checked by counting subjects against activities in the final data set (by using table(data$activities, data$subject). Every subject should contain one and only row per activity.

 
## Data code book

All variables in a data set are numeric, except the activity and subject, which are factors (described below)

1. Activity - Gives a descriptive name to coded activity from the raw data set. Mapping has been performed according to the activity_labels.txt attached to the main data set:
    i. 1 - walking
    ii. 2 – walking upstairs
    iii. 3 – walking downstairs
    iv. 4 – sitting 
    v. 5 – standing
    vi. 6 - laying
2. T.body.Acc.mean.X - Mean of body acceleration over time, along X axis
3. T.body.Acc.mean.Y - Mean of body acceleration over time, along Y axis
4. T.Body.Acc.mean.Z - Mean of body acceleration over time, along Z axis
5. T.body.Acc.std.X - Standard deviation of body acceleration over time, along X axis
6. T.body.Acc.std.Y - Standard deviation of body acceleration over time, along Y axis
7. T.body.Acc.std.Z - Standard deviation of body acceleration over time, along Z axis
8. T.gravity.Acc.mean.X - Mean of gravity acceleration signal over time, along X axis
9. T.gravity.Acc.mean.Y - Mean of gravity acceleration signal over time, along Y axis
10. T.gravity.Acc.mean.Z - Mean of gravity acceleration signal over time, along Z axis
11. T.gravity.Acc.std.X - Standard deviation of gravity acceleration signal over time, along X axis
12. T.gravity.Acc.std.Y - Standard deviation of gravity acceleration over time, along Y axis
13. T. gravity.Acc.std.Z  -Standard deviation of gravity acceleration over time, along Z axis
14. t.Body.Acc.Jerk.mean.X - Mean of body jerk acceleration over time, along X axis
15. t.Body.Acc.Jerk.mean.Y -Mean of body jerk acceleration over time, along Y axis
16. t.Body.Acc.Jerk.mean.Z - Mean of body jerk acceleration over time, along Z axis
17. t.Body.Acc.Jerk.std.X - standard deviation of body jerk acceleration over time, along X axis
18. t.Body.Acc.Jerk.std.Y - standard deviation of body jerk acceleration over time, along Y  axis
19. t.Body.Acc.Jerk.std.Z - standard deviation of body jerk acceleration over time, along Z axis
20. t.Body.Gyro.mean.X  - Mean of body gyroscope position over time, along X axis
21. t.Body.Gyro.mean.Y - Mean of body gyroscope position over time, along Y axis
22. t.Body.Gyro.mean.Z - Mean of body gyroscope position over time, along Z axis 
23. t.Body.Gyro.std.X - standard deviation of body gyroscope position over time, along X
24. t.Body.Gyro.std.Y - standard deviation of body gyroscope position over time, along Y
25. t.Body.Gyro.std.Z - standard deviation of body gyroscope position over time, along Z
26. t.Body.Gyro.Jerk.mean.X - Mean of body gyroscope jerk acceleration over time, along X axis
27. t.Body.Gyro.Jerk.mean.Y - Mean of body gyroscope jerk acceleration over time, along Y axis
28. t.Body.Gyro.Jerk.mean.Z - Mean of body gyroscope jerk acceleration over time, along Z axis
29. t.Body.Gyro.Jerk.std.X - Standard deviation of body gyroscope jerk acceleration over time, along X axis
30. t.Body.Gyro.Jerk.std.Y - Standard deviation of body gyroscope jerk acceleration over time, along Y axis
31. t.Body.Gyro.Jerk.std.Z - Standard deviation of body gyroscope jerk acceleration over time, along Z axis
32. t.Body.Acc.Mag.mean - Mean of body acceleration magnitude over time
33. t.Body.Acc.Mag.std - standard deviation of body acceleration magnitude over time
34. t.Gravity.Acc.Mag.mean - Mean of gravity factor acceleration magnitude over time
35. t.Gravity.Acc.Mag.std  - standard deviation of gravity factor acceleration magnitude over time
36. t.Body.Acc.Jerk.Mag.mean - Mean of body jerk acceleration magnitude over time
37. t.Body.Acc.Jerk.Mag.std - standard deviation of body jerk acceleration magnitude over time
38. t.Body.Gyro.Mag.mean - Mean of body gyroscope change magnitude over time 
39. t.Body.Gyro.Mag.std - standard deviation of body gyroscope change magnitude over time 
40. t.Body.Gyro.Jerk.Mag.mean - Mean of body gyroscope jerk change magnitude over time 
41. t.Body.Gyro.Jerk.Mag.std - standard deviation of body gyroscope jerk change magnitude over time 
42. f.body.Acc.mean.X - Mean of body acceleration frequency, along X axis
43. f.body.Acc.mean.Y - Mean of body acceleration frequency, along Y axis
44. f.Body.Acc.mean.Z - Mean of body acceleration frequency, along Z axis
45. f.body.Acc.std.X -Standard deviation of body acceleration frequency, along X axis
46. f.body.Acc.std.Y - Standard deviation of body acceleration frequency, along Y axis
47. f.body.Acc.std.Z - Standard deviation of body acceleration frequency, along Z axis
48. f.Body.Acc.mean.Freq.X - mean frequency of body acceleration along X axis
49. f.Body.Acc.mean.Freq.Y - frequency of mean body acceleration along Y axis
50. f.Body.Acc.mean.Freq.Z - frequency of mean body acceleration along Z axis
51. f.Body.Acc.Jerk.mean.X - frequency of mean body acceleration along X axis
52. f.Body.Acc.Jerk.mean.Y - frequency of mean body acceleration along Y axis
53. f.Body.Acc.Jerk.mean.Z - frequency of mean body acceleration along Z axis
54. f.Body.Acc.Jerk.std.X - frequency of body acceleration standard deviation along X axis
55. f.Body.Acc.Jerk.std.Y - frequency of body acceleration standard deviation along Y axis
56. f.Body.Acc.Jerk.std.Z - frequency of body acceleration standard deviation along Z axis 
57. f.Body.Acc.Jerk.mean.Freq.X - frequency of body jerk acceleration mean along X axis
58. f.Body.Acc.Jerk.mean.Freq.Y - frequency of body jerk acceleration mean along Y axis
59. f.Body.Acc.Jerk.mean.Freq.Z - frequency of body jerk acceleration mean along Z axis
60. f.Body.Gyro.mean.X - frequency of body gyroscope position mean along X axis
61. f.Body.Gyro.mean.Y - frequency of body gyroscope position mean along Y axis
62. f.Body.Gyro.mean.Z - frequency of body gyroscope position mean along Z axis 
63. f.Body.Gyro.std.X - frequency of body gyroscope position standard deviation along X axis
64. f.Body.Gyro.std.Y  - frequency of body gyroscope position standard deviation along Y axis 
65. f.Body.Gyro.std.Z - frequency of body gyroscope position standard deviation along Z axis
66. f.Body.Gyro.mean.Freq.X - Mean frequency of body gyroscope along X axis 
67. f.Body.Gyro.mean.Freq.Y- Mean frequency of body gyroscope along Y axis
68. f.Body.Gyro.mean.Freq.Z - Mean frequency of body gyroscope along Z axis
69. f.Body.Acc.Mag.mean - Frequency of body acceleration magnitude mean
70. f.Body.Acc.Mag.std - Frequency of body acceleration magnitude standard deviation 
71. f.Body.Acc.Mag.mean.Freq - Mean Frequency of body acceleration magnitude
72. f.Body.Acc.Jerk.Mag.mean - Mean Frequency of body acceleration magnitude
73. f.Body.Acc.Jerk.Mag.std - Frequency of body jerk acceleration magnitude standard deviation
74. f.Body.Acc.Jerk.Mag.mean.Freq - Body jerk acceleration magnitude mean frequency
75. f.Body.Gyro.Mag.mean- mean of body gyroscope position change magnitude
76. f.Body.Gyro.Mag.std - standard deviation of body gyroscope position change
77. f.Body.Gyro.Mag.mean.Freq - mean frequency of body gyroscope position change magnitude
78. f.Body.Gyro.Jerk.Mag.mean - mean of body gyroscope jerk position change magnitude
79. f.Body.Gyro.Jerk.Mag.std - standard deviation of body gyroscope jerk position change magnitude
80. f.Body.Gyro.Jerk.Mag.mean.Freq - mean frequency of body gyroscope jerk position change magnitude
81. subject - describes the number of subject, who has performed given activity
