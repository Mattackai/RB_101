#Modify the method from the previous exercise to ignore non-alphabetic characters when determining
#whether it should uppercase or lowercase each letter. The non-alphabetic characters should still
#be included in the return value, they just don't count when toggling the desired case.

def staggered_case(string, first_case = "up")
  new_string = ""
  if first_case == "up"
    index = 0
  else
    index = 1
  end
  string.each_char do |x|
    index % 2 == 0 ? new_string << x.upcase : new_string << x.downcase
    index += 1 if ("a".."z").include?(x) || ("A".."Z").include?(x) 
  end
  new_string
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS') 
p staggered_case('ignore 77 the 444 numbers') 
