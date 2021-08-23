#Vector
# 1) Vector keeps all the data in the same type
# 2) Shortcut key to assign: Alt+-
first_vector <- c(6, 1, 7)
second_vector <- first_vector*3
second_vector

#Data type - numeric
# How to convert double to integer? 
# 1) assign <- as.integer() , OR
# 2) add "L" after numbers
numeric_vector <- c(6.171, 5.211)
typeof(numeric_vector)
typeof(first_vector)
test_vec <- c(10L, 20L, 30L, 40L, 50L)
typeof(test_vec)
test_vec <- as.integer(test_vec)
typeof(test_vec)
class(test_vec)

#Data type - string
character_vector <- c("ABC", "abc", "1,000", "$100", 123)
character_vector
typeof(character_vector)

#Data type - factor
factor_variable <- as.factor(c("freshman", "sophomore", "junior", "senior"))
factor_variable
ordered_factor <- ordered(factor_variable, 
                          levels = c("freshman", "sophomore", "junior", "senior"), 
                          labels = c("freshman", "sophomore", "junior", "senior"))

logical_vector <- c(TRUE, FALSE, TRUE, FALSE)
logical_vector
sum(logical_vector)

#Matrix
matrix_example <- matrix(data = c(1:9), ncol = 3, nrow = 3)
matrix_example

#Lists 
# 1) don't forget , ""
# 2) $ anchors value 
list_example <- list(names = c("Skye", "MT"), 
                     ages = c(23, 24), 
                     height = c(68, 76))
list_example
list_example["names"]

list_of_list <- list(girls = list(names = c("Skye", "Inderjeet"),
                                  ages = c(23, 28), 
                                  height = c(68, 70)),
                     boys = list(names = c("MT", "CL"), 
                                 ages = c(24, 24), 
                                 height = c(74, 76)))
list_of_list
#Access values in list of list
# Error: list_of_list[["girls",["names"]]]
list_of_list$girls$names
list_of_list |> 
  getElement(1) |>
  getElement("names")

# Question 1: What's the difference between class() and typeof()??
a <- 1
b <- "lalal"

typeof(a)
class(a)

typeof(b)
class(b)

lalala1 <- c(1, 2, 3)
typeof(lalala1)
class(lalala1)

lalala2 <- matrix(1:9, nrow=3, ncol=3)
lalala2
class(lalala2)
typeof(lalala2)

# Question 2: 

Q2 <- matrix(1:9, nrow=3, ncol=3)
Q2 * 2
Q2 %*% Q2
