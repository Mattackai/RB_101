#Given the following data structure
#return a new array containing the same sub-arrays as the original
#but ordered logically by only taking into consideration the odd numbers
#they contain.


arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
#Expected output: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
arr2 = arr.sort_by do |sub|
  sub.select do |x|
    x.odd?
  end
end

print arr2