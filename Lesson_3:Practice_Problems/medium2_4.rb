def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
#<< is a mutating method and pushes the string 'rutabaga' directly into the string 'pumpkins'.
#within the method, my_array and an_array_param both point to the same object at invocation but an_array_param is reassigned to ['pumpkins', 'rutabaga'] in the method. As = is reassignment and not mutating,
#the value of my_array stays the same after exiting the method.