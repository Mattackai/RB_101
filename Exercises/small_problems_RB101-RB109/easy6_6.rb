#Write a method that takes two Array's as arguments, and returns an Array
#that contains all of the values from the argument Array's.
#There should be no duplication of values in the returned Array, even if 
#there are duplicares in the original Arrays.

#Example:
  #merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#Given two array objects
#Initialize a new, empty array
#Iterate through each argument array, one by one.
#If the new array does not have the current element, add it to the new array
#return the new array.

def merge(arr1, arr2)
  merged_array = []
  arr1.each do |x|
    merged_array << x unless merged_array.include?(x)
  end
  arr2.each do |x|
    merged_array << x unless merged_array.include?(x)
  end
  merged_array
end

def merge(array_1, array_2)
  array_1 | array_2
end
p merge([1, 3, 5], [3, 6, 9])