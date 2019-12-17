#Write a program that will ask a user for an input of a word or multiple words
#and give back the number of characters. Spaces should not be counted as a
#character.

#Given a string of words
#Split the string into an array
#Join the string together again with no spaces
#count the number of characters with .size
#return the result

puts "Please enter a word or multiple words."

words = gets.chomp

count = words.split.join.size

puts "There are #{count} characters in #{words}."