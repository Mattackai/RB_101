#Write a method that takes a string of digits and returns the appropriate number as an integer.
#You may not use .to_i or integer().
#Do not worry about leading + or - sign and assume all characters will be numeric.


#Examples:
  #string_to_integer('4321') == 4321
  #string_to_integer('570') == 570

#Given a string of integer characters
#Initialize a hash assigning each numeric character to it's integer value.
#Split the string into an array
#Iterate through the characters hash, using the array as an argument.

DIGITS = {
  "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
  "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

puts string_to_integer('4321')
puts string_to_integer('570')
puts string_to_integer('693')
puts string_to_integer('44926')
puts string_to_integer('88159')