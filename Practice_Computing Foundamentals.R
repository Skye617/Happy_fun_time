#Assign
first_vector <- c(6, 1, 7)
second_vector <- first_vector*3
second_vector

#Data type - numeric
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
