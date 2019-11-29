def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
#Study the above code and state what will be displayed and why.
#The code will output
#My string looks like this now: "pumpkins"
#My array looks like this now: ["punpkins", "rutabaga"]
#The reason for this is because += returns a new string rather than mutating the original string and the new string is never called. << pushes the new object directly into the array, mutating the array.
#You could replace += with << for the string concatenation and have a result of  my_string = "pumpkinsrutabaga" if you so desired.