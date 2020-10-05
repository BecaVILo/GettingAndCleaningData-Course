# GettingAndCleaningData-Course

* CodeBook.md describe las tablas que fueron creados durante el proceso, el número de variables y observaciones que contiene cada una, 
  así como una descripción de los datos con los datos que se trabajaron. Describe el proceso que se llevó a cabo para llegar a crear una tabla ordenada.

* CodeBook 
	Describes tables that were created during the process, the number of variables and observatons for each variable,
	furthermore, contains a data description. This document describe the process that was carried out to create an ordered table. 


* run_analysis.R 
	It contains the code, from the preparation of the data to the last table with the averages of the columns
		- All the data that will be required to obtain a table is loaded.
		- The data read from test and train folders, the columns are renamed.
		- The data is joined first by rows and then by columns, to arrive at MergeData
		- A new table is created that only contains the columns subject, code and those that have mean or std.
		- The data is regrouped to create a final table, TidyData, which contains the means of the data.
		- The data is exported in txt format.

* The exported data is saved as "FinalTidyData.txt" in the directory you are working on.
