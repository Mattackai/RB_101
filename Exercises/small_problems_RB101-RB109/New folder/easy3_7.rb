#Write a method that returns an array that contains every other element of
#an array that is passed in as an argument.

#Examples
  #oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
  #oddities(['abc', 'def']) == ['abc']
  #oddities([123]) == [123]
  #oddities([]) == []

#Given an array of any objects
#Iterate through the array
#Push each odd indexed element into a new array

def oddities(arr)
  odd_arr = []
  counter = 0
  loop do
    break if counter == arr.size 
    current_element = arr[counter]
    odd_arr << current_element if counter.even?
    counter += 1
  end
  odd_arr
end

print oddities([2, 3, 4, 5, 6])
