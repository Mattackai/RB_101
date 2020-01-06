#Write a method that takes an Array of numbers and then returns the sum of the sums of each
#leading subsequence for that Array. You may assume that the Array always contains at least
#one number.

#Examples:
#sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
#sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
#sum_of_sums([4]) == 4
#sum_of_sums([1, 2, 3, 4, 5]) == 35

def sum_of_sums(array)
  total = array[0]
  new_arr = []
  array.each do |x|
    if new_arr.empty?
      new_arr << x
    else
      total += x
      new_arr << total
    end
  end
  new_arr.reduce(:+)
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])