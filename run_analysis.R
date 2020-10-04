# Leemos los datos
activity <- read.table("./activity_labels.txt", col.names = c("IDactivity", "activity"))
View(activity)

features <- read.table("./features.txt", col.names = c("IDfeature", "feature"))
View(features)

# Leemos los datos de test
subject_test <- read.table("./test/subject_test.txt", col.names = "subject")

x_test <- read.table("./test/X_test.txt", col.names = features$feature)

y_test <- read.table("./test/y_test.txt", col.names = "code")


## Leemos los datos de train
subject_train <- read.table("./train/subject_train.txt", col.names = "subject")

x_train <- read.table("./train/X_train.txt", col.names = features$feature)

y_train <- read.table("./train/y_train.txt", col.names = "code")

# Unimos los datos
Xjoin <- rbind(x_test, x_train)
Yjoin <- rbind(y_test, y_train)
SubjectJoin <- rbind(subject_test, subject_train)

# datos finales
DataMrg <- cbind(SubjectJoin, Yjoin, Xjoin)

FinData <- DataMrg[,grepl("subject|code|mean|std", names(DataMrg))]

# Renombramos las columnas con nombres descriptivos
names(FinData) <- gsub("Acc", "Accelerometer", names(FinData))
names(FinData) <- gsub("Gyro", "Gyroscope", names(FinData))
names(FinData) <- gsub("^t", "Time", names(FinData))
names(FinData) <- gsub("^f", "Frequency", names(FinData))
names(FinData) <- gsub("mean", "Mean", names(FinData))
names(FinData) <- gsub("std", "STD", names(FinData))
names(FinData) <- gsub("angle", "Angle", names(FinData))
names(FinData) <- gsub("gravity", "Gravity", names(FinData))
names(FinData) <- gsub("BodyBody", "Body", names(FinData))
names(FinData)[2] <- "activity"

# Promedio de cada variable
library(dplyr)
IndpTidy <- group_by(.data = FinData, subject, activity)
IndpTidy <- summarise_all(IndpTidy, funs(mean))


write.table(x = IndpTidy, file = "FinalTidyData.txt",row.names = FALSE)
