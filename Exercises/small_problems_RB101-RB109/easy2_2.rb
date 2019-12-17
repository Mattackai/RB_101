#Build a program that asks a user for the length and width of a room in meters
#and then displays the area of the room in both square meters and square feet.
#Note 1: Square meter == 10.7639 feet
#Do not worry about validating input at this time.

puts "Enter the length of the room in meters:"
length = gets.chomp

puts "Enter the width of the room in meters:"
width = gets.chomp
area_meters = length.to_f * width.to_f
area_feet = area_meters * 10.7639
area_inches = area_feet * 144
area_centimeters = area_feet * 929.03
puts <<-MSG 
The area of the room is:
#{area_meters} square meters
#{area_feet} square feet
#{area_inches} square inches
#{area_centimeters} square centimeters
MSG
