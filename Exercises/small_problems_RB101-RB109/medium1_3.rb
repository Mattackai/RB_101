#If you take a number like 735291, and rotate it to the left, you get 352917. 
#If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
#Keep the first 2 digits fixed in place and rotate again to 321759. 
#Keep the first 3 digits fixed in place and rotate again to get 321597. 
#Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
#The resulting number is called the maximum rotation of the original number.

#Write a method that takes an integer as an argument and returns the maximum rotation of that argument.
#You should use the rotate_rightmost_digits method from the previous exercise.

#you do not have to handle multiple 0's

#Example:
#max_rotation(735291) == 321579
#max_rotation(3) == 3
#max_rotation(35) == 53
#max_rotation(105) == 15 # the leading zero gets dropped
#max_rotation(8_703_529_146) == 7_321_609_845

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

#Rotate entire array to the left
#Rotate result to the left, keeping 1st digit locked in place
#repeat for every digit in the array.

def max_rotation(integer)
  int_length = integer.to_s.chars.length
  result = integer
  loop do
    result = rotate_rightmost_digits(result, int_length)
    int_length -= 1
    break if int_length <= 1
  end
  result
end

p max_rotation(735291)
p max_rotation(3)
p max_rotation(35)
p max_rotation(105)
p max_rotation(8_703_529_146)