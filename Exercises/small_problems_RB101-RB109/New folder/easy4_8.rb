#Write a method that takes a string of digits and returns those digits as integers. You may not use integer to_i or any similar method to achieve this goal.
DIGITS = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

print string_to_integer('4321') # == 4321
print string_to_integer('570') # == 570