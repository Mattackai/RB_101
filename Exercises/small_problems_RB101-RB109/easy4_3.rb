#Under the Gregorian Calendar, leap years occue in every year
#that is evenly divisible by 4, unless the year is also divisible
#by 100. If the year IS divisible by 100, then it is not a leap year
#unless the year is divisible by 400.

#Write a method that takes any year greater than 0 as input, and
#returns true if the year is a leap year, or false if it is not a 
#leap year.


#Examples: 

#Pseudo-code
#Given any year greater than 0
#Determine if the year is divisible evenly by 400
#If yes, return true.
#If no, determine if the year is divisible by 100
#If yes, return true
#if no, determine if the year is divisible by 4.
#If yes, return true
#if no, return false.

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end
      
      
puts leap_year?(2016) #== true
puts leap_year?(2015) #== false
puts leap_year?(2100) #== false
puts leap_year?(2400) #== true
puts leap_year?(240000) #== true
puts leap_year?(240001) #== false
puts leap_year?(2000) #== true
puts leap_year?(1900) #== false
puts leap_year?(1752) #== true
puts leap_year?(1700) #== true
puts leap_year?(1) #== false
puts leap_year?(100) #== true
puts leap_year?(400) #== true