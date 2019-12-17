#Build a program that dipslays when a user will retire and how many years they have left
#until retirement.

puts "How old are you?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_left = retire_age - age

year = Time.now.year

puts "It is #{year}. You will retire in #{year + years_left}"
puts "You only have #{years_left} years of work left!"