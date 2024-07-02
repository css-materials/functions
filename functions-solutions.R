# PRACTICE WRITING FUNCTIONS -- SOLUTIONS

# Summary
# QUESTIONS 1 AND 2: practice functions' logic and syntax
# QUESTION 3: practice writing anonymous functions
# QUESTION 4: practice conditional returns
# QUESTION 5: practices loops, conditionals, and stop() statements in a function
# QUESTION 6: practice writing documentation
# QUESTION 7: practice using {{}}



# QUESTION 1. Sum the numbers 10 and 20, and divide the total by 2 
# Write the code without a function
# Re-write it with a function

# Without, option 1
result <- (10 + 20) / 2

# Without, option 2
number1 <- 10
number2 <- 20
(number1 + number2) / 2

# with function
add_two <- function(number1, number2) {
  return((number1 + number2)/2)
}
add_two(10, 20)
add_two(5, 7)



# QUESTION 2. Write code to convert 25 degree Celsius to Fahrenheit 
# using this formula: fahrenheit = (celsius * 9/5) + 32
# Write the code without a function
# Re-write it with a function

# Without, option 1
fahr <- (25 * 9/5) + 32

# Without, option 2
celsius <- 25
fahr <- (celsius * 9/5) + 32

# With a function:
celsius_to_fahr <- function(celsius) {
  return((celsius * 9/5) + 32)
}
celsius_to_fahr(25)



# QUESTION 3. Take the function from question 2 (Celsius to Fahrenheit).
# First, rewrite it as anonymous function using the general anonymous function syntax
# Then, rewrite it as anonymous function with the purrr syntax with map_dbl() 

# anonymous function syntax
(function(x) x * 9/5 + 32) (25)

# using using `purrr` syntax
library(tidyverse)
map_dbl(25, ~.x * 9/5 + 32)

# if you pass a vector as input instead than a scalar...
# this does not work
(function(x) x * 9/5 + 32) (25, 20, 15)
# this works
sapply(c(25, 20, 15), function(x) x * 9/5 + 32)



# QUESTION 4. Write a function that takes a single number as input, and:
# if the number is divisible by 3 and 5, the function returns "fizzbuzz"
# if the number is divisible by 3, it returns "fizz"
# if the number is divisible by 5, it returns "buzz"
# otherwise, the function returns the number
# Hint: use modular %% division and if, else if, else statements

fizzbuzz <- function(x){
  if(x %% 3 == 0 & x %% 5 == 0){
    return("fizzbuzz")
  } else if(x %% 3 == 0){
    return("fizz")
  } else if(x %% 5 == 0){
    return("buzz")
  } else{
    return(x)
  }
}

fizzbuzz(3)
fizzbuzz(28)



# QUESTION 5. Write a function that calculates the mean of a numeric vector.
# Do not use any R built-in functions, e.g., do not use length(), sum(), etc.
# Then add a check to evaluate if the input vector is numeric
# If not, use stop() to stop the code and write a message


# Solution with other built-in functions
my_mean <- function(vector) {
  total_values <- length(vector)
  result <- (sum(vector) /total_values)
  return(list(total_values, result))
}
my_mean(1:10)


# Solution without built-in functions
mean_vect <- function(vector) {
  
  # initialize variables
  sum_elements <- 0
  count_elements <- 0
  
  # calculate sum of elements in vector
  for (v in vector) {
    sum_elements <- sum_elements + v
  }
   
  # calculate length of vector 
  for (v in vector) {
    count_elements <- count_elements + 1 
  }
  
  # calculate the mean
  mean_value <- sum_elements / count_elements
  return(mean_value)
}

# call the function
a <- c(2,4,6)
mean_vect(a)


# Add stop() and rewrite previous function more succinctly
# and loop over vector indices vs directly on its elements 

mean_vect <- function(vector) {
  
  # check if vector is numeric and stop()
  if (!is.numeric(vector)) {
    stop("Input vector must be numeric!")
  }
  
  sum_elements <- 0
  count_elements <- 0
  
  for (i in seq_along(vector)) {
    sum_elements <- sum_elements + vector[i]
    count_elements <- count_elements + 1
  }
  return(sum_elements / count_elements)
}

# call the function
a <- c(2, 4, 6)
mean_vect(a)

b <- c(2, 4, "6")
mean_vect(b)



# QUESTION 6. Add the documentation the function you wrote in question 4 or in 5.



# QUESTION 7. Given this plot, rewrite it as a function.
# Your function should take three arguments like that (df, var, binwidth = NULL)

# import library and data
library(tidyverse)
data(diamonds)

# code to re-write 
diamonds %>% 
  ggplot(aes(x = carat)) + 
           geom_histogram(binwidth = 0.1)

# solution
hist <- function(df, var, binwidth = NULL) {
  df %>% 
  ggplot(aes(x = {{ var }})) + 
  geom_histogram(binwidth = binwidth)
}

# call the function (both codes work)
hist(diamonds, carat, 0.1)
diamonds %>% hist(carat, 0.1)

# can also add labels
diamonds %>% hist(carat, 0.1) +
  labs(x = "Size (in carats)", y = "Number of diamonds")
