#Write a method that takes two Array arguments in which each array contains a list of numbers
#and returns a new array that contains the product of every pair of numbers that can be formed
#between the elements of the Arrays. The result should be sorted by increasing value.

#You may assume that neither argument is an empty array.

#Examples:
#multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#Given two arrays of numbers
#Iterate through the first array, one by one
#multiply each element by every element in the second array
#push the result to a new array
#Sort the resulting array.

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |x|
    arr2.each do |y|
      new_arr << x * y
    end
  end
  new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])