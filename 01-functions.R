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




# QUESTION 2. Write code to convert 25 degree Celsius to Fahrenheit 
# using this formula: fahrenheit = (celsius * 9/5) + 32
# Write the code without a function
# Re-write it with a function




# QUESTION 3. Take the function from question 2 (Celsius to Fahrenheit).
# First, rewrite it as anonymous function using the general anonymous function syntax
# Then, rewrite it as anonymous function with the purrr syntax with map_dbl() 




# QUESTION 4. Write a function that takes a single number as input, and:
# if the number is divisible by 3 and 5, the function returns "fizzbuzz"
# if the number is divisible by 3, it returns "fizz"
# if the number is divisible by 5, it returns "buzz"
# otherwise, the function returns the number
# Hint: use modular %% division and if, else if, else statements




# QUESTION 5. Write a function that calculates the mean of a numeric vector.
# Do not use any R built-in functions, e.g., do not use length(), sum(), etc.
# Then add a check to evaluate if the input vector is numeric
# If not, use stop() to stop the code and write a message




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




