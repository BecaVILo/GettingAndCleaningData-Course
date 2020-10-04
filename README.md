# GettingAndCleaningData-Course

* CodeBook.md describe las tablas que fueron creados durante el proceso, el número de variables y observaciones que contiene cada una, 
  así como una descripción de los datos con los datos que se trabajaron. Describe el proceso que se llevó a cabo para llegar a crear una tabla ordenada.

* run_analysis.R contien el código, desde la preparación de los datos hasta la última tabla con os promedios de las columnas
	- Se cargan todos los datos que se van a requerir para obtener una tabla
	- Los datos leídos de test y train, se renombran las columnas
	- Se unen los datos primero por renglones y luego por colemnas, para llegar a DataMrg
	- Se crea una nueva tabla que solo contiene las columnas subject, code y aquellas que tienen mean o std
 	- Se reagrupan los datos para crear una última tabla, InpdTidy, que contiene las medias.
	- Se exportan los datos en formato txt

* Los datos exportados se guardan como "FinalTidyData.txt" en el directorio que se esté trabajando. 
