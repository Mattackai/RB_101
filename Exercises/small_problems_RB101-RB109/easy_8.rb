#Write a method that takess one argument, an array of integers, and returns the average
#of all numberss in the array.
#The array will never be empty and the numbers will always be positive integers.

#Given an array of intergers

#Iterate through the array
  #Add all elements in the array to a total
  #Divide the total by the number of elements in the array
  #Return the result as an integer
def average(arr)
  total = 0
  arr.each do |x|
    total += x
  end

  result = total / arr.size
  result.to_f
end

puts average([1, 8.4, 87, 45.7, 8, 8]) 
puts average([9, 47, 23, 95.8, 16, 52]) 

