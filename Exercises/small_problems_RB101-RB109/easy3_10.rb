#Write a method that returns true if its integer argument is palindromic, false otherwise. 
#A palindromic number reads the same forward and backwards.

def palindromic_number?(int)
  int.to_s(8) == int.to_s.reverse(8)
end

puts palindromic_number?(34543) 
puts palindromic_number?(123210) 
puts palindromic_number?(22)
puts palindromic_number?(5)
puts palindromic_number?(0759580) 


