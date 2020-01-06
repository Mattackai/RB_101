#A double number is a number with an even number of digits
#whose left-side digits are exactly the same as it's right
#side digits. For example, 44, 3333, 103103 are all
#double numbers. 444, 334433, 107 are not.

#Write a method that returns 2 times the number provided as
#an argument, unless the argument is a double number. Double
#numbers should be returned as is.

#Examples:
#twice(37) == 74
#twice(44) == 44
#twice(334433) == 668866
#twice(444) == 888
#twice(107) == 214
#twice(103103) == 103103
#twice(3333) == 3333
#twice(7676) == 7676
#twice(123_456_789_123_456_789) == 123_456_789_123_456_789
#twice(5) == 10

#Given an integer of varying size
#if the integer has an odd number of digits
#return the integer * 2
#if the integer has an even number of digits


def twice(integer)
  middle = integer.to_s.size / 2
  first = integer.to_s.chars[0..(middle - 1)]
  last = integer.to_s.chars[middle..-1]
  if integer.digits.size.odd?
    return integer * 2
  else
   if first == last
    return integer
  else
    return integer * 2
  end
 end
end
      

p twice(37)
p twice(44)
p twice(334433)
p twice(444)
p twice(107)
p twice(103103)
p twice(3333)
p twice(7676)
p twice(123_456_789_123_456_789)
p twice(5)