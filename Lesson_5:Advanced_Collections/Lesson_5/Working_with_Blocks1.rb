[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

#map is called on the nested array
#each inner array is assigned to arr
#first is then called on each inner array object
#puts prints the index[0] element of each inner object to the console.
#Map transforms based on return value, the block always returns the last line.
#The last line is arr.first, thus map will transform the array, returning an array of [1, 3]
# 1
# 3
# => [1, 3]