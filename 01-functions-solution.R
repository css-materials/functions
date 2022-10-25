# practice working with functions - solutions


## Question 1. Perform the sum (number 1 + number 2) of the numbers 10 and 20, and divide it by 2 
## Write the code without a function
num1 <- 10
num2 <- 20
(num1 + num2) / 2


## Question 2. Write the same code in a function and call it with a few examples
add_two <- function(num1, num2){
  return((num1 + num2)/2)
}
# Call the function
add_two(10, 20)
add_two(5, 7)

## Same code without the return statement 
add_two <- function(num1, num2){
  (num1 + num2)/2
}
# Call the function
add_two(10, 20)
add_two(5, 7)


# Question 3. Write a fizz buzz function that takes a single number as input
# hint: you need to use modular %% division and if, else if, else statements

# If the number is divisible by three, it returns "fizz"
# If it’s divisible by five it returns "buzz"
# If it’s divisible by three and five, it returns "fizzbuzz"
# Otherwise, it returns the number

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
