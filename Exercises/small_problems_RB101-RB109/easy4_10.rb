#Write a method that takes a positive integer or zero, and converts it to a string representation.

#Given a positive integer, or 0
#

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}


def integer_to_string(integer)
  strings = integer.digits.map { |num| DIGITS[num] }
  string = strings.reverse.join
end

puts integer_to_string(4321) 
puts integer_to_string(0) 
puts integer_to_string(5000) 