#write a method that returns true if its integer argument is palindromic, false otherwise. 

def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse
end




puts palindromic_number?('0%o' % 0345430) 
puts palindromic_number?(123210) 
puts palindromic_number?(22)
puts palindromic_number?('0%o' % 050) 

#Numbers with leading 0's is an "octal representation". Must convert to decimal representation with the use of %.