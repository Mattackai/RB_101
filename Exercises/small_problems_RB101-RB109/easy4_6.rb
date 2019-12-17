#Write a method that takes an array of numbers, and returns an array with the same number of elements, and each
#element has the running total from the original array.

#Examples:
  #running_total([2, 5, 13]) == [2, 7, 20]
  #running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  #running_total([3]) == [3]
  #running_total([]) == []

  #Given an array of integers
  #Initialize an empty array
  #Set the first value of the new array as the first value of the original array
  #iterate through the original array, one by one
  #Add the total of each element with the next element, push the result to the new array.
  #continue, adding each total to the next element and pushing the result to the new array.
  #Return the new array.


  def running_total(array)
    new_arr = []
    total = 0
    array.map do |x|
      total += x
      new_arr << total
    end
    new_arr
  end

  def running_total2(array)
    sum = 0
    array.each_with_object([]) do |x, arr|
      sum += x
      arr << sum
    end
  end


  print running_total2([2, 5, 13])
  print running_total2([14, 11, 7, 15, 20])
  print running_total2([3])
  print running_total2([])