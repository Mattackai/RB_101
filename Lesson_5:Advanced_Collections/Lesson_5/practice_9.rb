#Given this data structure, return a new array of the same structure
#but with the sub arrays being ordered(alphabetically or numerically)
#in descending order.

array = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
array2 = array.map do |arr|
  arr.sort {|a, b| b <=> a }
end
print array2
