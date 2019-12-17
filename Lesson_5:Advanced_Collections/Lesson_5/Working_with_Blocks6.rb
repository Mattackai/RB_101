[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]

#We are looking to select integers greater than 13 and strings with a size less than 6.
#First, map is called on the array of nested arrays
#each inner array is assigned to "arr" and select is then called on them.
#each element of each inner array is assigned to "item" and then selected based on criteria
#In this case, item.to_s_to_i checks if the item is an integer
#IF it is, the item is selected if it is greater than 13
#in any other case (the item is not an integer), the item is selected if its .size is less than 6.
#map returns a new collection based on transformation
#the return value of each select method is [27] and ["apple"]
#thus map returns a new nested array containing [[27], ["apple"]]