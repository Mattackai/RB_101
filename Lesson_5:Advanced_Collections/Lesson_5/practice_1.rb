#Order this array of number strings by descending numeric value.


arr = ['10', '11', '9', '7', '8']
print arr.sort { |a, b| b.to_i <=> a.to_i }