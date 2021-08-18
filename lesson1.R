
logical_vector <- c(TRUE, FALSE, TRUE, FALSE)

logical_vector

logical_vector_COPY <- logical_vector

logical_vector <- c(TRUE, FALSE, TRUE)

sum(logical_vector)

factorial

list_example <- list(names = c("seth", "sharif"), 
                     ages = c(30, 30), 
                     height = c(76, 76))

list_example

list_of_lists <- list(professors = list(names = c("seth", "sharif"), 
                                        ages = c(30, 30), 
                                        height = c(76, 76)), 
                      students = list(names = c("joe", "hexuan"), 
                                      ages = c(23, 25), 
                                      height = c(64, 64)))
list_of_lists$professors$names

list_example["names"]
list_example[1]
list_of_lists [[1]]

df_example <- data.frame(name = c("seth", "sharif",
                                  "joe", "hexuan", 
                                  "hermalena"), 
                         age = c(30, 30, 23, 25, 30), 
                         height = c(76, 76, 64, 64, 68), 
                         role = c("professor", "professor", 
                                  "student", "student", 
                                  "student_services"))

df_example
str(df_example)
names(df_example)
dim(df_example)
df_example[df_example$age > 28, ]
df_example[df_example$height > 72, ]

people

plot(mtcars$disp, mtcars$mpg)
abline(lm(mpg ~ disp, data = mtcars))
install.packages(c("car", "ggplot2"))
library(car)
car::scatterplot(mpg ~ disp, 
                 data = mtcars)
library(ggplot2)
ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm")
install.packages('plotly')
