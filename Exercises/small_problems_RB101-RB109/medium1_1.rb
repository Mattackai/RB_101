#Write a method that rotates an array by moving the first
#element to the end of the array. The original array should
#not be modified

#Example:
#rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
#rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
#rotate_array(['a']) == ['a']

#x = [1, 2, 3, 4]
#rotate_array(x) == [2, 3, 4, 1]   # => true
#x == [1, 2, 3, 4]                 # => true


#Given an array of varying size
#Initialize an empty result array
#Push all of the items from the original to the new array
#shift the first element from the new array and push it to the end

def rotate_array(array)
  result = array.select {|x| x}
  result << result.shift
end

def rotate_string(string)
  result = rotate_array(string.chars)
  result.join
end

def rotate_integer(integer)
  result = rotate_array(integer.to_s.chars)
  result.join.to_i
end


a = [1, 2, 3, 4]
b = [7, 3, 5, 2, 9, 1]
c = ['a']


#p rotate_array(a)
#p a

#p rotate_string("the big red dog")

p rotate_integer(12345)