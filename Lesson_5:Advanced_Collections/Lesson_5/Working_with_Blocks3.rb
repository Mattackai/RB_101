[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

#map, a transformation method, is called on a nested array
#each inner array is assigned to "arr".
#map is then called on each inner array represented by "arr".
#map returns a new collection based on transformation
#the inner map multiplies each element in arr by 2
#the return value of each inner map is [2, 4], [6, 8]
#the return value of the outer map is [[2, 4], [6, 8]]
