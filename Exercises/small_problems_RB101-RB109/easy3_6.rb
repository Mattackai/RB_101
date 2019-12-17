#Write a method, "xor", that takes two arguments and returns true if
#exactly one of it's arguments is truthy, false otherwise.

#Examples:
  #xor?(5.even?, 4.even?) == true
  #xor?(5.odd?, 4.odd?) == true
  #xor?(5.odd?, 4.even?) == false
  #xor?(5.even?, 4.odd?) == false

def xor?(arg1, arg2)
  (arg1 && !arg2) || (arg2 && !arg1)
end
  

puts xor?(5.even?, 4.even?) #== true
puts xor?(5.odd?, 4.odd?) #== true
puts xor?(5.odd?, 4.even?) #== false
puts xor?(5.even?, 4.odd?) #== false