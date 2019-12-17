my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

#the variable "my_arr" is being set to equal the value of calling .each on a nested array
#Within the each method, .each is being called on each inner array, represented by "arr".
#Within the each method called on arr, puts prints any elements greater than 5.
#The method will print "18, 7, 12" to the screen.
#Puts returns nil but each ALWAYS returns the calling collection
#the value of my_arr is the calling collection [[18, 7], [3, 12]]