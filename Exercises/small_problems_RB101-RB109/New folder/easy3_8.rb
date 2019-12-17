#Write a method that returns true if the string passed in as an argument as a palindrome,
#false otherwise

#palindrome?('madam') == true
#palindrome?('Madam') == false          # (case matters)
#palindrome?("madam i'm adam") == false # (all characters matter)
#palindrome?('356653') == true

#Given a string of letters or numbers
#Split the string, then join the string with spaces removed.
#Call .reverse? on the string, return the result.


def palindrome?(collection)
  collection == collection.reverse
end

puts palindrome?(["yes", "no", "no", "no", "yes"]) 
puts palindrome?('Madam')          # (case matters)
puts palindrome?("madam i'm adam")  # (all characters matter)
puts palindrome?('356653') 