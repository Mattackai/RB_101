#Write a method that takes a string, and returns a new string in which every consonant is doubled.
#Vowels, punctuation and whitespace should not be doubled.

#Examples:
#double_consonants('String') == "SSttrrinngg"
#double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
#double_consonants("July 4th") == "JJullyy 4tthh"
#double_consonants('') == ""



def double_consonants(string)
  consonants = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'X', 'Z', 'W', 'Y',
              'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w', 'y']
  new_string = ''
  string.each_char do |x|
    if consonants.include?(x)
      new_string << x * 2
    else 
      new_string << x
    end
  end
  new_string
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')
