#Write a program that will ask a user for an input of a word or multiple words and give back
#the number of characters. Spaces should not be counted as a character.

#Prompt user for input of a string
#Split the string into an array
#Iterate through each element of the array
#Count the number of characters in each element
#Add that number to a total variable
#Return the total variable

puts "Please enter a sentence."

words = gets.chomp.split
total = 0

words.each do |word|
  total += word.length
end

puts "There are #{total} characters in #{words.join(" ")}"


#Launch School solution

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
