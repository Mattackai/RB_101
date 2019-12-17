#Write a method that accepts a string of space separated numbers
#and returns the highest and lowest numbers as a string.

#Examples:
  #high_low("1 2 3 4 5") ➞ "5 1"

  #high_low("1 2 -3 4 5") ➞ "5 -3"

  #high_low("1 9 3 4 -5") ➞ "9 -5"

  #high_low("13") ➞ "13 13"

#All numbers can be considered valid, no need to validate them
#Assume there will always be at least one number in the input string.
#Output must be two numbers separated by a single space, highest number first.

#Data Structure
  #string input
  #array of integers from convered string
  #string output

#Algorithm
  #Given a string of integers
  #split the string into an array
  #Iterate through the array, converting every element into an integer.
  #Iterate through the converted array, assigning the first element to a variable1 and variable2
  #Compare every element to the variable1, reassigning the variable1 if the element is greater or equal to the variable
  #Compare every element to the variable2, reassigning the variable2 if the element is less than or equal to the variable.
  #Convery both variables to string form and join them, return the joined string.

  def high_low(str)
    arr = str.split.map { |num| num.to_i }
    result = arr.max.to_s + " " + arr.min.to_s
  end

  puts high_low("1 2 3 4 5")4
  puts high_low("3 6 8 44 28 1")


