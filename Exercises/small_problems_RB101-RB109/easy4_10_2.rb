#Write a method that takes an integer and converts it to a string representation.
#This method should convert negative numbers as well as positive numbers.

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  strings = integer.digits.map { |num| DIGITS[num] }
  string = strings.reverse.join
end

 
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end


puts signed_integer_to_string(4321) 
puts signed_integer_to_string(-123) 
puts signed_integer_to_string(0) 