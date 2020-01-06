#Write a method that takes an array, and returns a NEW array with the elements of the original list in reverse order. 
#Do not modify the original list.


def reverse(array)
  index = -1
  index2 = 0
  new_array = []
  loop do
    break if index2 >= array.size
    new_array << array[index]
    index -= 1
    index2 += 1
  end
  p array
  new_array
end

p reverse([1,2,3,4])
p reverse(%w(a b e d c))
