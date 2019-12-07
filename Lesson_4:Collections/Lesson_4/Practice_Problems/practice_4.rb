['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#What is the return value of each_with_object? Why?
#Returns a hash where the first character of each value is the key. 
#value[0] represents the index 0 character of value, in this case a, b, c.
