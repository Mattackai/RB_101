#Given a string that consists of some words and an assortment of non-alphanumeric characters
#write a method that returns that string with all of the non-alphanumeric characters replaced
#by spaces. If one or more non-alphanumeric characters occur in a row, you should only have one
#space in the result. (The result should never have consecutive spaces)

#Example: 
  #cleanup("---what's my +*& line?") == ' what s my line '

def cleanup(string)
  string = string.gsub(/[^0-9a-z ]/i, '').squeeze(' ')
end

puts cleanup("---what's my +*& line?")