#Write a method that takes a string of digits and returns the appropriate number as an integer.
#The string may have a leading + or - sign; If the first character is a +, your method should
#return a positive number; if it is a -, your method should return a negative number.
#If no sign is given, you should return a positive number.


DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  digits = string.chars.select { |x| DIGITS.has_key?(x) }.map { |char| DIGITS[char] }

  value = 0

  if string.start_with?("-")
    digits.each { |digit| value = 10 * value - digit }
  else
    digits.each { |digit| value = 10 * value + digit }
  end
  value
end

puts string_to_signed_integer('4321') 
puts string_to_signed_integer('-570') 
puts string_to_signed_integer('+100') 