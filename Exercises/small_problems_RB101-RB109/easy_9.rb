
def sum(int)
  int.digits.reduce(:+)
end

puts sum(23) 
puts sum(496) 
puts sum(123_456_789) == 45