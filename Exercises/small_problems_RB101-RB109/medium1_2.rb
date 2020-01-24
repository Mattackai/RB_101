#Write a method that can rotate the last n digits of a number.

#Example:
#rotate_rightmost_digits(735291, 1) == 735291
#rotate_rightmost_digits(735291, 2) == 735219
#rotate_rightmost_digits(735291, 3) == 735912
#rotate_rightmost_digits(735291, 4) == 732915
#rotate_rightmost_digits(735291, 5) == 752913
#rotate_rightmost_digits(735291, 6) == 352917

#Note that rotating just 1 digit results in the original array being returned.
#You may use the rotate_array method you wrote in the last exercise.
#You may assume n is always a positive integer.

#Given an integer of varying lengths and a number representing digits to rotate
#Convert the integer into a string, and again into an array
#Isolate the digits to rotate
#rotate the digits with previously used "rotate_array"
#join the array together again and convert it back into an integer.

def rotate_array(array)
  result = array.select {|x| x}
  result << result.shift
end

def rotate_rightmost_digits(integer, digits)
  array = integer.to_s.chars
  part_to_rotate = array[array.length - digits..-1]
  part_to_not_rotate = array[0..array.length - (digits + 1)]
  if part_to_not_rotate == array
    result = rotate_array(part_to_rotate)
  else
    result = part_to_not_rotate << rotate_array(part_to_rotate)
  end
  result.join.to_i
end

def rotate_rightmost_digitsLS(number, n) #LS solution
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 4)
p rotate_rightmost_digits(735291, 5)
p rotate_rightmost_digits(735291, 6)