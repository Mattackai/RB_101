def toggler(integer)
  multiples = (1..integer).to_a
  lights = []
  index_number = 0
  integer.times do
    lights << false
  end
  multiples.each do |x|
    index_number = 0
    lights.map! do |light|
      index_number += 1
      if index_number % x == 0
        light = !light
      else
        light = light
      end
    end
  end
  lights
end

#On line 1 we define a method 'toggler' which takes an integer as a parameter.
#On line 2 we initialize a variable 'multiples' which is an array containing all numbers from 1 to 
#the passed integer.
#On line 3 we initialize an empty array 'lights'
#on line 4 we initialize a a variable 'index_number' who's value is 0
#On line 5 we call the times method on the passed integer
#On line 6, in the block, we push a boolean object 'false' into the lights array for every iteration.
#On line 8, we call each on the multiples variable
#within the each loop, on line 9, we reassign index_number to 0 after each inner loop
#On line 10, we call the map! method on the lights array, defining each element as 'light'
#On line 11, we iterate the index_number by 1 in order to represent the place in the array.
#on line 12 we use if to check if the index_number is a multiple of the current element of multiples
#if it is, we toggle light to it's opposite (true or false)
#if it isn't, light remains the same
#The loop continues for each element of multiples
