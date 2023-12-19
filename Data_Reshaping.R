
#--------------Create the data frame----------------------------

emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27"),
  stringsAsFactors = FALSE
)

cat("emp.data in string form : \n\n")
str(emp.data)
cat("\n\n")


cat("emp.data summary : \n\n")
print(summary(emp.data))
cat("\n\n")

highsalemp <- emp.data[emp.data$salary > 800, ]
cat("Summary of Employees with Salary above 800:\n\n")
print(summary(highsalemp))
cat("\n\n")


cat("list data with emp_name and salary : \n\n")
result <- data.frame(emp.data$emp_name,emp.data$salary)
print(result)
cat("\n\n")


cat("print only emp data 1 to 2 \n\n")
result <- emp.data[1:2,]
print(result)
cat("\n\n")


cat("print specific details : \n\n")
result <- emp.data[c(3,5),c(2,4)]
print(result)
cat("\n\n")


cat("created new row in emp.data dept : \n\n")
emp.data$dept <- c("IT", "Operations", "IT", "HR", "Finance")
v <- emp.data
print(v)
cat("\n\n")

#--------------Create the second data frame-------------------

emp.newdata <- data.frame(
  emp_id = c (6:8),
  emp_name = c("Rasmi", "Pranab", "Tusar"),
  salary = c(578.0,722.5,632.8),
  start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT", "Operations","Fianance"),
  stringsAsFactors = FALSE
)

cat("Second Dataframe : \n\n")
print(emp.newdata)
cat("\n\n")

#--------------R Bind------------------------------------------

cat("Combined Second Data frame by R bind : \n\n")
emp.finaldata <-rbind(emp.data,emp.newdata)
print(emp.finaldata)
cat("\n\n")

#--------------C Bind------------------------------------------

newdata <- data.frame( age = c(25,32,34,25,55,23,46,31) )

cat("Combined Age column by C bind : \n\n")
emp.finaldata <- cbind(emp.finaldata,newdata)
print(emp.finaldata)
cat("\n\n")
  
#--------------MERGE------------------------------------------
  
emp.mergenewdata <- data.frame(
  emp_id = c (6:8),
  emp_name = c("Rasmi", "Pranab", "Tusar"),
  Course = c("Data Analytics", "Python", "IOT"),
  stringsAsFactors = FALSE
)

cat("Merged Data Course with merge : \n\n")
test.merge <- merge(emp.mergenewdata,emp.finaldata)
print(test.merge)
cat("\n\n")

#--------------create "data" frame data-------------------------

data <- data.frame(
  emp_name = c("Mike", "Mike", "Bob", "Bob"),
  dept = c("IT", "HR", "IT", "HR"), salary = c(500.0,400.0,450.00,280.00),
  stringsAsFactors = FALSE
)

#--------------Applying cast() and melt()---------------------

library(reshape)

cat("Cast : \n\n")
ct1=cast(data,emp_name~dept,value="salary")
print(ct1)
cat("\n\n")

cat("Cast : \n\n")
ct2=cast(data,dept~emp_name,value="salary")
print(ct2)
cat("\n\n")

cat("Melt : \n\n")
mt=melt(ct2,id.vars=c("emp_name","dept"))
print(mt)
cat("\n\n")

cat("Melt : \n\n")
rownames(mt)<-1:nrow(mt)
print(mt)
  
