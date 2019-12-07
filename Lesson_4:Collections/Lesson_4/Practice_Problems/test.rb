array = [1,2,3,4,5,6,7]
new_array = array.select {|num| num.odd?}

puts new_array