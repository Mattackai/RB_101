#Leap years occur in any year divisible evenly by 4 unless divisible evenly by 100.
#If divisible evenly by 100, not a leap year unless also divisible evenly by 400


#Given a year as an integer
#Check if the year divided by 4 is a whole number. 
#If it is, check if the year divided by 100 is a whole number.
#if it is, check if the year divided by 400 is a whole number.


def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0 
    false
  else
    year % 4 == 0
  end
end
      
      
puts leap_year?(2016) 
puts leap_year?(2015) 
puts leap_year?(2100) 
puts leap_year?(2400) 
puts leap_year?(240000) 
puts leap_year?(240001) 
puts leap_year?(2000) 
puts leap_year?(1900) 
puts leap_year?(1752) 
puts leap_year?(1700) 
puts leap_year?(1) 
puts leap_year?(100) 
puts leap_year?(400) 