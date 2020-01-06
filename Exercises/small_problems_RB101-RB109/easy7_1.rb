#Write a method that combines two Arrays passed in as arguments, and returns a new Array
#that combines all elements from both Array argumentss, with the elements taken in alternation.

#You may assume that both input Arrays are non-empty, and that they have the same number of elements.

#Example:
#interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']




def interleave(arr1, arr2)
  combined_arr = []
  counter = 0
  arr1.size.times do
    combined_arr << arr1[counter]
    combined_arr << arr2[counter]
    counter += 1
  end
  combined_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])


