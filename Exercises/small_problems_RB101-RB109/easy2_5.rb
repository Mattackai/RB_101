#Write a program that will ask for the user's name. The program will then greet the user. 
#If the user writes "name!" then the computer yells back.

#Prompt a name input from the user.
#Check to see if the name input ends with a "!"
#If it does, puts a comment.
#If it does not, puts a different comment.

puts "Hello, what's your name?"
name = gets.chomp!

if name.end_with?("!")
  puts "HELLO #{name.upcase.chop!}, WHY ARE WE YELLING?"
else
  puts "Hello #{name}, pleasure to meet you."
end
