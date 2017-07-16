# path variable should be introduced in environment and point to dataset folder
#path <- "~/Documents/_Work/Coursera/DataScience/UCI HAR Dataset/"

featureToColName <- function(feature) {
    f <- gsub("std\\(\\)", "Std", feature)
    f <- gsub("mean\\(\\)", "Mean", f)
    f <- gsub("\\,", "_", f)
    f <- gsub("\\(\\)", "", f)
    f <- gsub("\\-", "", f)
    f
}

firstUp <- function(text) { paste0(toupper(substr(text, 1, 1)), substr(text, 2, nchar(text))) }

readTable <- function(path, group, name) { read.table(file = sprintf("%1$s%2$s/%3$s_%2$s.txt", path, group, name)) }

prepareColumns <- function(path) { 
    features <- read.table(file = sprintf("%1$sfeatures.txt", path))
    names(features) <- c("id", "name")
    features$colName <- featureToColName(features$name)
    features$useColumn <- grepl("\\-(mean|std)\\(\\)", features$name)
    features
}

readGroup <- function(path, group) {
    data <- readTable(path, group, "X")

    features <- prepareColumns(path)
    names(data) <- features$colName
    
    colIndices <- features[features$useColumn,]$id
    data <- data[colIndices]
    
    subjects <- readTable(path, group, "subject")
    names(subjects) <- c("id")
    
    activities <- readTable(path, group, "y")
    names(activities) <- c("id")
    
    data$subject <- subjects$id
    data$activity <- activities$id
    
    data
}

readCleanData <- function(path) {
    test <- readGroup(path, "test")
    train <- readGroup(path, "train")
    
    rbind(test, train)
}

computeMeans <- function(data) {
    len <- dim(data)[2]
    y <- aggregate(data[,1:len], FUN = mean, by = list(data$activity, data$subject))
}
