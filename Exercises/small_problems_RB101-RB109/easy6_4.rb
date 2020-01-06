#Write a method that takes an array as an argument and reverses its elements in place; 
#mutate the array passed into the method. The return value should be the same array object.
#You may not use array.reverse or array.reverse!


#Given an array
#generate a second array equal to the first array

def reverse!(array)
  arr_copy = array.select {|x| x }
  first = 0
  last = -1
  loop do
    break if first >= array.size
    array[first] = arr_copy[last]
    first += 1
    last -= 1
  end
  array
end

letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
words = ["cat", "dog", "fish", "platipus"]
numbers = [4, 6, 8, 3, 2]
list = []

print reverse!(letters)
print reverse!(words)
print reverse!(numbers)
print reverse!(list)