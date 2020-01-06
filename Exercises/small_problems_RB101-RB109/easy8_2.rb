#Write a simple mad-lib program that prompts for a noun, a verb, an adverb and an adjective 
#and injects those into a story that you create.

#Example:
#Enter a noun: dog
#Enter a verb: walk
#Enter an adjective: blue
#Enter an adverb: quickly

#Do you walk your blue dog quickly? That's hilarious!

puts "Enter a noun"
noun = gets.chomp

puts "Enter a verb"
verb = gets.chomp

puts "Enver an adjective"
adjective = gets.chomp

puts "Enter an Adverb"
adverb = gets.chomp

puts "The #{adjective} red #{noun} #{verb} #{adverb} over the barn."
