#Write a method that takes a string, and returns a new string
#in which every character is doubled.

def repeater(string)
  result = ""
  string.chars.each do |letter|
    result << letter * 2
  end
  result
end

p repeater("puppy")