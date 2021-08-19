
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
my_plot <- ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm")

plotly::ggplotly(my_plot)

install.packages('plotly')

install.packages(c("car", "ggplot2"))
theme_minimal()

st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")

st_joe_land <- read.csv(file = "stJoeLand.csv")

install.packages(c("readr", "data.table"))
#1. NA造成的问题
sample(x = c(1:1000, NA), 
       size = 1001) |>
#以下是Seth添加的solution
  mean(na.rm = TRUE)

#2. NA造成的问题
cor_data <- data.frame(x = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE), 
                       y = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE), 
                       z = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE))
#以下是Seth添加的solution
cor(cor_data, use="pairwise.complete.obs")


#怎么read files? summary function是干嘛的？？？
#summary在读title的时候会把它们当作character，所以这个时候需要change into factors
#summary(land_value)
#解决方案：summary(as.factor(land_value$school_district))


#3. 问题
factor(seq(from = 1, to = 10, by = .5)) |> 
  as.numeric() |>
  mean()

#解决方案
factor(seq(from = 1, to = 10, by = .5)) |> 
  as.character() |>
  as.numeric() |>
  mean()
