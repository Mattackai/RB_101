#Create a function that transforms a string of upvote counts
#into an array of numbers. Each k represents a thousand.

#Given a string of floats ending which may or may not end in "k"
#split the string into an array of elements
#translate each element into an integer, multiplying each number ending in "k" by 1000
#push the translated element into a new array
#return the new array

def transform_upvotes(str)
  arr = str.split
  new_arr = []
  arr.each do |x|
    if x.end_with?("k")
      x.chop!
      new_arr << x.to_f * 1000
    else
      new_arr << x.to_f
    end
  end
  new_arr
end

def transform_upvotes(str)
  str.split.map { |n| n.to_f * (n[-1] == 'k' ? 1000 : 1) }
end

print transform_upvotes("13.5k 12.6k 555 1.9k")