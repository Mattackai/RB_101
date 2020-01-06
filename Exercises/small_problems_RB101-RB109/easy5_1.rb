#Write a method that determines and returns the ASCII string value of a string
#that is passed in as an argument. The ASCII string value is the sum of the
#ASCII values of every character in the string. You may use string.ord to 
#determine the ASCII value of a character.

#EXAMPLES:
# => ascii_value('Four score') == 984
# => ascii_value('Launch School') == 1251
# => ascii_value('a') == 97
# => ascii_value('') == 0

def ascii_value(string)
  value = 0
  string.chars.map do |char|
    value += char.ord
  end
  value
end

puts ascii_value('Four score') 
puts ascii_value('Launch School') 
puts ascii_value('a') 
puts ascii_value('') 

char.ord.chr == char
#chr returns a string containing the character represented by the int's value according to encoding.
#If chr is called on a multiple character string, returns the first character.