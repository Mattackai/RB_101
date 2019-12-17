#Build a program that randomly generates and prints teddy's age.
#To get the age, you should generate a random number between 20 and 200.

puts "What is your name?"
name = gets.chomp

age = rand(20..200)
puts name.empty? ?  "Teddy is #{age} years old!" :  "#{name} is #{age} years old!"