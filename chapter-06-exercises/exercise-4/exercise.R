# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string

twice_as_long <- function(string1,string2){
  length_s1 <- nchar(string1)
  length_s2 <- nchar(string2)
  (length_s1 >= length_s2*2) | (length_s2 >= length_s1*2)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

aaa <- twice_as_long("test","asfasfasfas")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference <- function(string1,string2){
  length_s1 <- nchar(string1)
  length_s2 <- nchar(string2)
  if(length_s1 == length_s2) {
    "Your strings are the same length!"
    }
  else if (length_s1 > length_s2) {
    paste("Your first string is longer by", length_s1 - length_s2 ,"characters")
          }
  else {
  paste("Your second string is longer by", length_s2 - length_s1 ,"characters")
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("test","test")
describe_difference("test1","test")
describe_difference("test","test1")

