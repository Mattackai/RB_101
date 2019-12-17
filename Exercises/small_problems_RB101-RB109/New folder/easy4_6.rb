#Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
#and each element has the running total from the original Array.

#Examples: running_total([2, 5, 13]) == [2, 7, 20]
#Examples: running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
#Examples: running_total([3]) == [3]
#Examples: running_total([]) == []

#Given an Array of integers:
#Initialize an empty Array
#Loop through the initial Array
#Add the first element to the new Array
#Add the first element + the second element to the new Array.
#Continue adding the current total + the next element to the new Array.
#Return the new Array.

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

print running_total([2, 5, 13]) #== [2, 7, 20]
print running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
print running_total([3]) #== [3]
print running_total([]) #== [] 