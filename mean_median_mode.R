
setwd("C:/Users/LENOVO/Desktop/R_programming/") 

myData <- read.csv("data.csv")

cat("CSV DATA : \n\n")
print(myData)
cat("\n\n")

#-----------Mean------------------

mean = mean(myData$agee)
cat(paste("mean of Age attribute =", mean))
cat("\n\n")

#-----------Median------------------

median = median(myData$agee)
cat(paste("median of Age attribute =", median))
cat("\n\n")

#-----------Mode------------------

mode <- function(){
  print(sort(-table(myData$agee))[1])
}

mode()

#--------method two---------

mode <- function(x) {
  tbl <- table(x)
  modes <- as.numeric(names(tbl[tbl == max(tbl)]))
  return(modes)
}


get_mode(myData$agee)