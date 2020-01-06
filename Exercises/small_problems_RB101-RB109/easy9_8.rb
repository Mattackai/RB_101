#Write a method that takes two integers as arguments. The first argument is a count,
#the second is the first number of a sequence that your method will create. 
#The method should return an Array that contains the same number of elements as the 
#count argument, while the values of each element will be multiples of the starting number.

#You may assume that the count argument will always have a value of 0 or greater, while the 
#starting number can be any integer value. If the count is 0, an empty list should be returned.

#Examples:
#sequence(5, 1) == [1, 2, 3, 4, 5]
#sequence(4, -7) == [-7, -14, -21, -28]
#sequence(3, 0) == [0, 0, 0]
#sequence(0, 1000000) == []


#Given two integers, one representing a count, the other representing a starting value
#Initialize an empty array representing the result
#Initialize another variable with value equal to the starting value
#Perform a loop a number of times equal to the count
#within the loop, push the new variable into the empty array
#add the starting value to the new variable for each iteration
#return the result array.

def sequence(count, start)
  result = []
  element = start
  count.times do 
    result << element
    element += start
  end
  result
end 

def sequence(count, first) #LS one-liner
  (1..count).map { |value| value * first }
end

      

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
