#a featured number is an odd number that is a multiple of 7, and whose
#digits occur exactly once each. For example, 49 is a featured number
#but 98 is not (it is not odd), 97 is not (it is not a multiple of 7)
#and 133 is not (the digit 3 appears twice).

#Write a method that takes a single integer as an argument, and returns
#the next featured number that is greater than the argument. Issues an
#error message if there is no next featured number.

#Examples:
#featured(12) == 21
#featured(20) == 21
#featured(21) == 35
#featured(997) == 1029
#featured(1029) == 1043
#featured(999_999) == 1_023_547
#featured(999_999_987) == 1_023_456_987
#featured(9_999_999_999) # -> There is no possible number that fulfills those
#requirements.


#Rules of featured numbers
#multiple of 7
#all digits in number occur only once each

#Given an integer argument
#Initialize a count variable equal to the argument
#Until the count is a featured number, iterate the count +1
#return the count once it is a featured number.

def featured(int)
  count = int + 1
  until count % 7 == 0 && count.digits == count.digits.uniq && count.odd?
    count += 1
    break if count > 9_999_999_999
  end
  case
  when count < 9_999_999_999
    count
  when count > 9_999_999_999
    count = "There is no possible number that fulfills those requirements."
  end
end 

p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
p featured(999_999_987)
p featured(9_999_999_999)