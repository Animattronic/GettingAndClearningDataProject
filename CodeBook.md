DATA TRANSFORMATIONS & CODE BOOK (VARIABLES DESCRIPTION) 

Data transformations
Data in the original form has been selected and cleaned using a series of operations described below. Later on grouping and aggregation operations were performed to form per subject/per activity summaries.
Here is the high-level explanation, all detailed comments for the concrete operations can be found in a code.
1.	Cleaning operations:
a.	Test/training data has been loaded separately from the proper path
b.	Only columns describing mean or standard deviation has been extracted (including the Mean Frequency column, as it carries useful information about the devices functioning)
c.	Column renaming operation has been performed:
i.	Remove - characters
ii.	Remove (, ) characters
iii.	Split CamelCaseNames to Dot.Separated.Names
iv.	Remove duplicated words from column names e.g. Body.Body
d.	Encoding the activities names – translate numeric values provided in Feature_info.txt file to human-readable format
2.	Merging operations:
a.	Test data and Training data has been merged to long form – new rows has been added
3.	Aggregation operations
a.	Assumptions and methodology
Aggregation has been performed for every subject, against every activity. The long form of the data has been used, so we have as separate row for every subject-activity pair. So the total number of rows is:
n.subjects * n.activities
30 * 6 = 180
b.	Oprations:
i.	Create empty data frame
ii.	For each subject:
1.	Summarize each activity
2.	Add result to data frame
iii.	Return data frame
c.	Correctness – correctness of operation performed above can be checked by counting subjects against activities in the final data set. Every subject should contain one and only row per activity, as presented below:

 

Subject\activity	laying	Sitting	Standing	Walking 	Walking downstairs	Walking upstairs
1	1	1	1	1	1	1
2	1	1	1	1	1	1
3	1	1	1	1	1	1
4	1	1	1	1	1	1
5	1	1	1	1	1	1
6	1	1	1	1	1	1
7	1	1	1	1	1	1
8	1	1	1	1	1	1
9	1	1	1	1	1	1
10	1	1	1	1	1	1
11	1	1	1	1	1	1
12	1	1	1	1	1	1
13	1	1	1	1	1	1
14	1	1	1	1	1	1
15	1	1	1	1	1	1
16	1	1	1	1	1	1
17	1	1	1	1	1	1
18	1	1	1	1	1	1
19	1	1	1	1	1	1
20	1	1	1	1	1	1
21	1	1	1	1	1	1
22	1	1	1	1	1	1
23	1	1	1	1	1	1
24	1	1	1	1	1	1
25	1	1	1	1	1	1
26	1	1	1	1	1	1
27	1	1	1	1	1	1
28	1	1	1	1	1	1
29	1	1	1	1	1	1
30	1	1	1	1	1	1
	
Data code book

1.	Activity
a.	Factor
b.	Gives a descriptive name to coded activity from the raw data set. Mapping has been performed according to the activity_labels.txt attached to the main data set:
i.	1 - walking
ii.	2 – walking upstairs
iii.	3 – walking downstairs
iv.	4 – sitting 
v.	5 – standing
vi.	6 - laying
2.	T.body.Acc.mean.X
a.	numeric
b.	Mean of body acceleration over time, along X axis
3.	T.body.Acc.mean.Y
a.	Nnumeric
b.	Mean of body acceleration over time, along Y axis
4.	T.Body.Acc.mean.Z
a.	Nnumeric
b.	Mean of body acceleration over time, along Z axis
5.	T.body.Acc.std.X
a.	numeric
b.	Standard deviation of body acceleration over time, along X axis
6.	T.body.Acc.std.Y
a.	numeric
b.	Standard deviation of body acceleration over time, along Y axis
7.	T.body.Acc.std.Z
a.	numeric
b.	Standard deviation of body acceleration over time, along Z axis
8.	T.gravity.Acc.mean.X
a.	numeric
b.	Mean of gravity acceleration signal over time, along X axis
9.	T.gravity.Acc.mean.Y
a.	Nnumeric
b.	Mean of gravity acceleration signal over time, along Y axis
10.	T.gravity.Acc.mean.Z
a.	Nnumeric
b.	Mean of gravity acceleration signal over time, along Z axis
11.	T.gravity.Acc.std.X
a.	numeric
b.	Standard deviation of gravity acceleration signal over time, along X axis
12.	T.gravity.Acc.std.Y
a.	numeric
b.	Standard deviation of gravity acceleration over time, along Y axis
13.	T. gravity.Acc.std.Z
a.	numeric
b.	Standard deviation of gravity acceleration over time, along Z axis
14.	t.Body.Acc.Jerk.mean.X
a.	numeric
b.	Mean of body jerk acceleration over time, along X axis
15.	t.Body.Acc.Jerk.mean.Y
a.	numeric
b.	Mean of body jerk acceleration over time, along Y axis
16.	t.Body.Acc.Jerk.mean.Z
a.	numeric
b.	Mean of body jerk acceleration over time, along Z axis
17.	t.Body.Acc.Jerk.std.X
a.	numeric
b.	standard deviation of body jerk acceleration over time, along X axis
18.	t.Body.Acc.Jerk.std.Y
a.	numeric
b.	standard deviation of body jerk acceleration over time, along Y  axis
19.	t.Body.Acc.Jerk.std.Z
a.	numeric
b.	standard deviation of body jerk acceleration over time, along Z axis
20.	t.Body.Gyro.mean.X
a.	numeric
b.	Mean of body gyroscope position over time, along X axis
21.	t.Body.Gyro.mean.Y
a.	numeric
b.	Mean of body gyroscope position over time, along Y axis
22.	t.Body.Gyro.mean.Z
a.	numeric
b.	Mean of body gyroscope position over time, along Z axis 
23.	t.Body.Gyro.std.X
a.	numeric
b.	standard deviation of body gyroscope position over time, along X
24.	t.Body.Gyro.std.Y
a.	numeric
b.	standard deviation of body gyroscope position over time, along Y
25.	t.Body.Gyro.std.Z
a.	numeric
b.	standard deviation of body gyroscope position over time, along Z
26.	t.Body.Gyro.Jerk.mean.X
a.	numeric
b.	Mean of body gyroscope jerk acceleration over time, along X axis
27.	t.Body.Gyro.Jerk.mean.Y
a.	numeric
b.	Mean of body gyroscope jerk acceleration over time, along Y axis
28.	t.Body.Gyro.Jerk.mean.Z
a.	numeric
b.	Mean of body gyroscope jerk acceleration over time, along Z axis
29.	t.Body.Gyro.Jerk.std.X
a.	numeric
b.	Standard deviation of body gyroscope jerk acceleration over time, along X axis
30.	t.Body.Gyro.Jerk.std.Y
a.	numeric
b.	Standard deviation of body gyroscope jerk acceleration over time, along Y axis
31.	t.Body.Gyro.Jerk.std.Z
a.	numeric
b.	Standard deviation of body gyroscope jerk acceleration over time, along Z axis
32.	t.Body.Acc.Mag.mean
a.	Numeric
b.	Mean of body acceleration magnitude over time
33.	t.Body.Acc.Mag.std
a.	numeric
b.	standard deviation of body acceleration magnitude over time
34.	t.Gravity.Acc.Mag.mean
a.	numeric
b.	Mean of gravity factor acceleration magnitude over time
35.	t.Gravity.Acc.Mag.std
a.	numeric
b.	standard deviation of gravity factor acceleration magnitude over time
36.	t.Body.Acc.Jerk.Mag.mean
a.	numeric
b.	Mean of body jerk acceleration magnitude over time
37.	t.Body.Acc.Jerk.Mag.std
a.	numeric
b.	standard deviation of body jerk acceleration magnitude over time
38.	t.Body.Gyro.Mag.mean
a.	numeric
b.	Mean of body gyroscope change magnitude over time 
39.	t.Body.Gyro.Mag.std
a.	numeric
b.	standard deviation of body gyroscope change magnitude over time 
40.	t.Body.Gyro.Jerk.Mag.mean
a.	numeric
b.	Mean of body gyroscope jerk change magnitude over time 
41.	t.Body.Gyro.Jerk.Mag.std
a.	numeric
b.	standard deviation of body gyroscope jerk change magnitude over time 
42.	f.body.Acc.mean.X
a.	numeric
b.	Mean of body acceleration frequency, along X axis
43.	f.body.Acc.mean.Y
a.	Nnumeric
b.	Mean of body acceleration frequency, along Y axis
44.	f.Body.Acc.mean.Z
a.	Nnumeric
b.	Mean of body acceleration frequency, along Z axis
45.	f.body.Acc.std.X
a.	numeric
b.	Standard deviation of body acceleration frequency, along X axis
46.	f.body.Acc.std.Y
a.	numeric
b.	Standard deviation of body acceleration frequency, along Y axis
47.	f.body.Acc.std.Z
a.	numeric
b.	Standard deviation of body acceleration frequency, along Z axis
48.	f.Body.Acc.mean.Freq.X
a.	numeric
b.	mean frequency of body acceleration along X axis
49.	f.Body.Acc.mean.Freq.Y
a.	numeric
b.	frequency of mean body acceleration along Y axis
50.	f.Body.Acc.mean.Freq.Z
a.	numeric
b.	frequency of mean body acceleration along Z axis
51.	f.Body.Acc.Jerk.mean.X
a.	numeric
b.	frequency of mean body acceleration along X axis
52.	f.Body.Acc.Jerk.mean.Y
a.	numeric
b.	frequency of mean body acceleration along Y axis
53.	f.Body.Acc.Jerk.mean.Z
a.	numeric
b.	frequency of mean body acceleration along Z axis
54.	f.Body.Acc.Jerk.std.X
a.	numeric
b.	frequency of body acceleration standard deviation along X axis
55.	f.Body.Acc.Jerk.std.Y
a.	numeric
b.	frequency of body acceleration standard deviation along Y axis
56.	f.Body.Acc.Jerk.std.Z
a.	numeric
b.	frequency of body acceleration standard deviation along Z axis 
57.	f.Body.Acc.Jerk.mean.Freq.X
a.	numeric
b.	frequency of body jerk acceleration mean along X axis
58.	f.Body.Acc.Jerk.mean.Freq.Y
a.	numeric
b.	frequency of body jerk acceleration mean along Y axis
59.	f.Body.Acc.Jerk.mean.Freq.Z
a.	numeric
b.	frequency of body jerk acceleration mean along Z axis
60.	f.Body.Gyro.mean.X
a.	numeric
b.	frequency of body gyroscope position mean along X axis
61.	f.Body.Gyro.mean.Y
a.	numeric
b.	frequency of body gyroscope position mean along Y axis
62.	f.Body.Gyro.mean.Z
a.	numeric
b.	frequency of body gyroscope position mean along Z axis 
63.	f.Body.Gyro.std.X
a.	numeric
b.	frequency of body gyroscope position standard deviation along X axis
64.	f.Body.Gyro.std.Y
a.	numeric
b.	frequency of body gyroscope position standard deviation along Y axis 
65.	f.Body.Gyro.std.Z
a.	numeric
b.	frequency of body gyroscope position standard deviation along Z axis
66.	f.Body.Gyro.mean.Freq.X
a.	numeric
b.	Mean frequency of body gyroscope along X axis 
67.	f.Body.Gyro.mean.Freq.Y
a.	numeric
b.	Mean frequency of body gyroscope along Y axis
68.	f.Body.Gyro.mean.Freq.Z
a.	numeric
b.	Mean frequency of body gyroscope along Z axis
69.	f.Body.Acc.Mag.mean
a.	numeric
b.	Frequency of body acceleration magnitude mean
70.	f.Body.Acc.Mag.std
a.	numeric
b.	Frequency of body acceleration magnitude standard deviation 
71.	f.Body.Acc.Mag.mean.Freq
a.	numeric
b.	Mean Frequency of body acceleration magnitude
72.	f.Body.Acc.Jerk.Mag.mean
a.	numeric
b.	Mean Frequency of body acceleration magnitude
73.	f.Body.Acc.Jerk.Mag.std
a.	numeric
b.	Frequency of body jerk acceleration magnitude standard deviation
74.	f.Body.Acc.Jerk.Mag.mean.Freq
a.	numeric
b.	Body jerk acceleration magnitude mean frequency
75.	f.Body.Gyro.Mag.mean
a.	numeric
b.	mean of body gyroscope position change magnitude
76.	f.Body.Gyro.Mag.std
a.	numeric
b.	standard deviation of body gyroscope position change
77.	f.Body.Gyro.Mag.mean.Freq
a.	numeric
b.	mean frequency of body gyroscope position change magnitude
78.	f.Body.Gyro.Jerk.Mag.mean
a.	numeric
b.	mean of body gyroscope jerk position change magnitude
79.	f.Body.Gyro.Jerk.Mag.std
a.	numeric
b.	standard deviation of body gyroscope jerk position change magnitude
80.	f.Body.Gyro.Jerk.Mag.mean.Freq
a.	numeric
b.	mean frequency of body gyroscope jerk position change magnitude
81.	subject
a.	factor
b.	describes the number of subject, who has performed given activity
