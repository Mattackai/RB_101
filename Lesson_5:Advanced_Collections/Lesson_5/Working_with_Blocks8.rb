[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

#Let's say we have the above nested array and want to increment every number by 1
#without changing the data structure.

#A nested array of arrays, some containing arrays others containing integers, has map called on it.
#each inner array is assigned to "arr"
#each inner array represented by "arr" then has map called on it.
#each element within the inner array is assigned to "el"
#map then asks if el is an integer (el.to_s.size == 1)
#if it's not an integer, it is an array
#if it is an integer, it is incremented by 1 with "el + 1"
#if it is an array, map is called on that inner, inner array, assigning each element within to "n"
#n is then incremented by 1
#map returns a new collection based on transformation
#In this case, the data structure(triple nested array of arrays) remains the same
#with each integer within incremented by 1
# => [[[2, 3], [4, 5]], [6, 7]]