[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]
#An array, which contains two arrays, which each contain three arrays (a triple nested array)
#.map is called on the nested array
#each first inner array is assigned to "element1" and then each is called on them
#within.each, the inner, inner arrays are assigned to "element2" and then have .partition called on them
#the innermost elements are then assigned to "element3" (even though the innermost arrays contain only one element)
#partition separates the elements based on a size greater than 0
#The return value is the calling object because the first method called within map is .each, which always returns
#the calling object.
