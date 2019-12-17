#Write a method that returns true if its integer argument is palindromic, false otherwise. 
#A palindromic number reads the same forward and backwards.

def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

puts palindromic_number?(34543) 
puts palindromic_number?(123210) 
puts palindromic_number?(22)
puts palindromic_number?(5) 