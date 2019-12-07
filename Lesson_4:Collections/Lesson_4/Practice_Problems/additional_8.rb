numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#What would be output by this code?
#puts the numbers, returns an array containing one removed value for each iteration

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#What would be output by this code?
#puts number, returns array containing one popped value for each iteration. Only puts 2 numbers

