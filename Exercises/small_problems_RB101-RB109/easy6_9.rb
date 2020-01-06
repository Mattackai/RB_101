#Write a method named include? that takes an array and a search value as arguments.
#This method should return true if the search value is in the array, false if it is not.
#You may not use Array.include? in your solution.

#Examples:
#include?([1,2,3,4,5], 3) == true
#include?([1,2,3,4,5], 6) == false
#include?([], 3) == false
#include?([nil], nil) == true
#include?([], nil) == false

def include?(array, value)
  array.count(value) > 0
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3) 
p include?([nil], nil) 
p include?([], nil) 