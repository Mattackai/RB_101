#Write a method which takes a grovery list(array)
#of fruits with quantities and converts it into
#an array of the correct number of each fruit.

#Example: 
#buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#  ["apples", "apples", "apples", "orange", "bananas","bananas"]

def buy_fruit(list)
  result = []
  list.each do |item|
    item[1].times do
      result << item[0]
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])