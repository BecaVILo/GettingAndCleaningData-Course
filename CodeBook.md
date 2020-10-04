* Se descarga el archivo http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  y se extrae en la carpeta que se vaya a trabajar

* Leemos los documentos que contienen los datos necesarios para el análisis
	- activity, lee el archivo "activity_labels.txt" que contiene 2 variables con 6 observaciones.
	   Lista de actividades que corresponden a las medidas que se tomaron.
	- features, lee el archivo "features.txt" que contiene 2 variables con 561 observacines.
	   Correspondientes a accelerometer gyroscope.
	- subject_test, contiene 1 variable y 2947 observaciones.
	   Contiene datos de 9/30 voluntarios para pruebas bajo observación.
	- x_test, contiene 561 variables con 2947 observaciones.
	   Contiene datos de pruebas de características registradas.
	- y_test, 1 variable con 2947 observaciones
	   Contiene las etiquetas de los códigos de actividades.
	- subject_train, contiene 1 variable con 7352 observaciones
	   Contiene los datos de los voluntarios restantes 21/30 que son observados.
	- x_train 561 variables con 7352 observaciones
	   Contiene datos de características registradas
	- y_train 1 variable con 7352 observaciones.
	   Contiene los códigos de las actividades.

* Datos unidos
	- Xjoin, 561 variables con 10299 observaciones.
	   Contiene los datos unidos por renglones de las tablas x_test y x_train. 
	- Yjoin, 1 variable con 10299 observaciones.
	   Contiene los datos de las tables y_test y y_train unidos por renglones.
	- SubjectJoin, 1 variable con 10299 observaciones.
	   Contiene los datos de las tablas subject_test y subject_train unidas por renglones.

* Una vez unidas todas estas tablas, ya que cuentan con el mismo número de renglones procedemos a unirlas por columnas, para crear la tabla final.
	- DataMrg, 563 variables con 10299 observaciones.
	   Contiene los datos de las tablas SubjectJoin, Yjoin, Xjoin unidos por columnas.

* Con la última tabla creada (DataMrg) creamos una nueva tabla la cual contiene solo aquellas columnas cuyo nombre incluye las palabras "mean" y "std", se incluyen las columnas subject y code
	- FinData, contiene solo los datos que coinciden con los criterios que se le piden.

* Procedemos a renombrar los nombres de las columnas para que cuenten con un título descriptivo de la variable.
	- Acc es sustituido por la palabra Accelerometer
	- Gyro es sustituido por la palabra Gyroscope
	- Las columnas que comienzen con alguna t serán remplazadas con la palabra Time
	- Aquellas que tengas f al principio serán remplazadas por Frequency
	- mean es remplazado por Mean
	- std será remplazado por STD
	- BodyBody será sustituido por Body
	- Se renombra "code" por "activity"

* Se creata la última tabla
	- IndTidy, 
	   Contiene los datos agrupados por Subject y activity, para tomar el promedio de las columnas que se pide.

* Se exporta la última tabla creada IndTidy como "FinalTidyData.txt".
