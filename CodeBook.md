* Download the file http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  and it is extracted in the folder that is going to work

* We read the documents that contain the data necessary for the analysis
	- **activity**, reads the file "activity_labels.txt" which contains 2 variables with 6 observations. \
	   List of activities that correspond to the measures that were taken.
	- **features**, read the file "features.txt" which contains 2 variables with 561 observations. \
	   Corresponding to accelerometer gyroscope.
	- **subject_test**, contains 1 variable and 2947 observations. \
	   Contains data from 9/30 volunteers for observational testing.
	- **x_test**, contains 561 variables with 2947 observations. \
	   Contains data from registered feature tests.
	- **y_test**, 1 variable with 2947 observations \
	   Contains the activity code labels.
	- **subject_train**, contains 1 variable with 7352 observations \
	   It contains the data of the remaining 21/30 volunteers who are observed.
	- **x_train** 561 variables with 7352 observations \
	   Contains data of registered characteristics
	- **y_train** 1 variable with 7352 observations. \
	   Contains the activity codes.

* Merge Data
	- **Xjoin**, 561 variables with 10,299 observations. \
	   Contains data from the x_test and x_train tables joined by rows. 
	- **Yjoin**, 1 variable with 10,299 observations. \
	   Contains the data from the y_test and y_train tables joined by rows.
	- **SubjectJoin**, 1 variable with 10,299 observations. \
	   Contains the data from the subject_test and subject_train tables joined by rows.

* Once all these tables are joined, since they have the same number of rows, we proceed to join them by columns, to create the final table.
	- **MergeData**, 563 variables with 10,299 observations. \
	   Contains the data from the SubjectJoin, Yjoin, Xjoin tables joined by columns.
	   
* With the last table created (MergeData) we create a new table which contains only those columns whose name includes the words "mean" and "std", the subject and code columns are included
	- **MergeData**, contains only the data that matches the criteria that are requested.

* We proceed to rename the column names so that they have a descriptive title of the variable.
	- Acc is replaced by the word Accelerometer
	- Gyro is replaced by the word Gyroscope
	- Columns that start with some t will be replaced with the word Time
	- Those with f at the beginning will be replaced by Frequency
	- BodyBody will be replaced by Body
	- Rename "code" to "activity"

* The last table is created
	- **TidyData**,  \
	   It contains the data grouped by Subject and activity, to take the average of the columns that are requested.

* The last table created IndTidy is exported as "FinalTidyData.txt".
