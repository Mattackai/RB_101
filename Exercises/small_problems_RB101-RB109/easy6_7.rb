#Write a method that takes an Array as an argument, and returns two Array's
#as a pair of nested Arrays that contain the first half and second half of
#the original array, respectively. #If the original Array contains an odd 
#number of elements, the middle element should be placed in the first half
#Array.

#Examples:
#halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
#halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
#halvsies([5]) == [[5], []]
#halvsies([]) == [[], []]

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end


p halvsies([1, 2, 3, 4])
