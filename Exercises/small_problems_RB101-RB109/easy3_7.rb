#Write a method that returns an array that contains
#every other element of an array that is passed in
#as an argument. The values in the returned list
#should be those values in the 1st, 3rd, 5th
#and so on elements of the argument array.

#Examples:
  #oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
  #oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
  #oddities(['abc', 'def']) == ['abc']
  #oddities([123]) == [123]
  #oddities([]) == []


  #Given an array of integers
  #Iterate through the array one by one
  #If an element has en even index
  #add it to a new array
  #return the new array

def oddities(arr)
  arr2 = arr.select do |x|
    arr.index(x).even?
  end
  arr2
end

def oddities2(arr)
  arr2 = arr.reject do |x|
    arr.index(x).odd?
  end
  arr2
end

def eventies(arr)
  arr2 = arr.select do |x|
    arr.index(x).odd?
  end
  arr2
end

print oddities([2, 3, 4, 5, 6])
print oddities([1, 2, 3, 4, 5, 6])
print oddities(['abc', 'def'])
print oddities([123])
print oddities([])