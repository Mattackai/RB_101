#Given an array of integers, find the pair of adjacent elements that have the largest product and return that product.
#Examples
  #adjacent_product([3, 6, -2, -5, 7, 3] ) ➞ 21

  #adjacent_product([5, 6, -4, 2, 3, 2, -23]) ➞ 30

  #adjacent_product([0, -1, 1, 24, 1, -4, 8, 10]) ➞ 80

 #Given an array of integers
 #Multiply the first element by the second element.
 #Push the result into a variable with a value of 0.


def adjacent_product(arr)
  product = arr[0] * arr[1]
  arr.each_cons(2).map do |num|
    product = num.reduce(:*) if num.reduce(:*) > product
  end
  product
end

adjacent_product([3, 6, -2, -5, 7, 3] )
adjacent_product([5, 6, -4, 2, 3, 2, -23])
adjacent_product([0, -1, 1, 24, 1, -4, 8, 10])
adjacent_product([-23, 4, -3, 8, -12])
adjacent_product([-1, -2])