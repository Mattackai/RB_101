[1, 2, 3].select do |num|
  num > 5
  'hi'
end

#What is the return value of the select method above? Why?
#The original array because the return value is the last evaluated expression and select cares
#about truthiness. Because 'hi' is a truthy value, all objects in the array are selected.
