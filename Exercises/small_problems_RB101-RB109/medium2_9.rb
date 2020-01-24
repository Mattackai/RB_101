#Bubble sort is one of the simplest sorting algorithms available.
#It isn't an effecient algorithm, but it's a great exercise for
#student developers. In this exercise, you will write a method
#that does a bubble sort of an Array.

#A bubble sort works by making multiple passes(iterations) through
#the Array. On each pass, each pair of consecutive elements is compared.
#If the first of the two elements is greater than the second, then the
#two elements are swapped. This process is repeated until a complete pass
#is made without performing any swaps; At that point the Array is completely
#sorted.

#Example:
#6 2 7 1 4 => Start: compare 6 > 2? Yes
#2 6 7 1 4 => Exchange
#2 6 7 1 4 => 6 > 7? No (no exchange)
#2 6 7 1 4 => 7 > 1? Yes
#2 6 1 7 4 => Exchange
#2 6 1 7 4 => 7 > 4? Yes
#2 6 1 4 7 => Exchange
#2 6 1 4 7 => 2 > 6? No
#2 6 1 4 7 => 6 > 1? Yes
#2 1 6 4 7 => Exchange
#2 1 6 4 7 => 6 > 4? Yes
#2 1 4 6 7 => Exchange
#2 1 4 6 7 => 6 > 7? No
#2 1 4 6 7 => 2 > 1? Yes
#1 2 4 6 7 => Exchange
#1 2 4 6 7 => 2 > 4? No
#1 2 4 6 7 => 4 > 6? No
#1 2 4 6 7 => 6 > 7? No
#1 2 4 6 7 => 1 > 2? No
#1 2 4 6 7 => 2 > 4? No
#1 2 4 6 7 => 4 > 6? No
#1 2 4 6 7 => 6 > 7? No
#1 2 4 6 7 => No swaps; all done; sorted


#Outer loop to repeat inner loop until done
  #inner loop to swap elements
    #boolean 'swapped' to track when a swap occurs
    #break outer loop when swapped remains false after an iteration
num_array = [6, 2, 7, 1, 4, 7, 9, 11, 17, 3, 144, 98, 53, 21, 24]
name_array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)

def bubble_sort(array)
  loop do
    count = 0
    swapped = false #boolean to track when to stop iterating
    loop do
      if array[count] > array[count + 1]
        array[count], array[count + 1] = array[count + 1], array[count] #swaps items
        swapped = true
      end
      count += 1
      break if count == array.size - 1
    end
    break unless swapped
  end
  array
end

p bubble_sort(num_array)
p bubble_sort(name_array)
    


