#Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
#This time, however, your method should be case insensitive and it should ignore all non-alphanumeric characters
#You may simplify things by calling the palindrome? method from the previous assignment.

#Examples: 
  #real_palindrome?('madam') == true
  #real_palindrome?('Madam') == true           # (case does not matter)
  #real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
  #real_palindrome?('356653') == true
  #real_palindrome?('356a653') == true
  #real_palindrome?('123ab321') == false

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^0-9a-z')
  palindrome?(string)
end

puts real_palindrome?('madam') 
puts real_palindrome?('Madam')        # (case does not matter)
puts real_palindrome?("Madam, I'm Adam")  # (only alphanumerics matter)
puts real_palindrome?('356653') 
puts real_palindrome?('356a653') 
puts real_palindrome?('123ab321') 

