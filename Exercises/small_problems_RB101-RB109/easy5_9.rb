#Write a method that takes a string argument and returns a new string 
#that contains the value of the original string with all consecutive
#duplicate characters collapsed into a single character. 
#You may not use string squeeze or string squeeze!

#Examples:
  #crunch('ddaaiillyy ddoouubbllee') == 'daily double'
  #crunch('4444abcabccba') == '4abcabcba'
  #crunch('ggggggggggggggg') == 'g'
  #crunch('a') == 'a'
  #crunch('') == ''


def crunch(string)
 #string = string.split #No need to turn into an array before iteration...
  counter = 0
  fixed_string = ''
  loop do 
    break if counter >= string.size
    fixed_string << string[counter] unless string[counter] == string[counter + 1]
    counter += 1
  end
  fixed_string
end
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end


print crunch('ddaaiillyy ddoouubbllee')


