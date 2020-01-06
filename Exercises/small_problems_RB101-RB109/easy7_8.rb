#Write a method that takes two Array arguments in which each array contains a list of numbers
#and returns a new Array that contains the product of each pair of numbers from the arguments
#that have the same index. You may assume that the arguments contain the same number of elements.

#Examples:
#multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list(arr1, arr2)
  num = 0
  new_arr = []
  loop do
    new_arr << arr1[num] * arr2[num]
    num += 1
    break if num == arr1.size
  end
  new_arr
end

def one_liner(a, b)
  a.zip(b).map { |x, y| x * y }
end

p multiply_list([3, 5, 7], [9, 10, 11])