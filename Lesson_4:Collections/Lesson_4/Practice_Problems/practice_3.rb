[1, 2, 3].reject do |num|
  puts num
end

#What is the return value of reject? Why?
#returns the original array becauses puts num returns nil which is not a truthy value.