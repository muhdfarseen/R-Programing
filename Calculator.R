#Read Numbers

num1 <- as.integer(readline(prompt = "Enter the first number: "))
num2 <- as.integer(readline(prompt = "Enter the second number: "))

cat(" 
      1.Addition
      2.Subtraction
      3.Multiplication
      4.Division 
  ")

#Read Choice

choice <- as.integer(readline(prompt = "Enter the choice: "))

#Functions for add , sub , mul and div

add <- function(x, y) {
  return(x + y)
}

sub <- function(x, y) {
  return(x - y)
}

mul <- function(x, y) {
  return(x * y)
}

div <- function(x, y) {
  return(x / y)
}

#if else conditions to return desired output

if (choice == 1) {
  res <- add(num1, num2)
  print(res)
} else if (choice == 2) {
  res <- sub(num1, num2)
  print(res)
} else if (choice == 3) {
  res <- mul(num1, num2)
  print(res)
} else if (choice == 4) {
  res <- div(num1, num2)
  print(res)
} else {
  print("Invalid input")
}
