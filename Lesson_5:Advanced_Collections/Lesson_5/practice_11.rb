#Given the following data structure
#User a combination of methods, including either the select or reject method
#to return a new array, identical to the original
#but containing only integers that are multiples of 3.



arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr2 = arr.map do |x|
  x.select do |y|
    y % 3 == 0
  end
end

print arr2