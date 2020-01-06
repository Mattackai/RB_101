#Write a method that takes a string argument
#and returns true if all of the alphabetic characters
#inside are uppercase, false otherwise.
#Non-alphabetic characters should be ignored.
 
 #Examples
#uppercase?('t') == false
#uppercase?('T') == true
#uppercase?('Four Score') == false
#uppercase?('FOUR SCORE') == true
#uppercase?('4SCORE!') == true
#uppercase?('') == true

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') 
p uppercase?('T') 
p uppercase?('Four Score') 
p uppercase?('FOUR SCORE') 
p uppercase?('4SCORE!') 
p uppercase?('') 