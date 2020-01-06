#The string to_i method converts a string of numeric characters to an integer.
#Write a method that takes a string of digits and returns the appropriate number
#as an integer. You may not use to_i or integer.

#Examples:
  # => string_to_integer('4321') == 4321
  # => string_to_integer('570') == 570

#Given a string of numeric characters
#Assign each number, 0 through 9 to a hash where the key is the string representation and the value is the integer representation.
#Initiate an empty array
#Iterate through the given string, pushing the value to the given array

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0

  digits.each { |digit| value = 10 * value + digit }
  value
end