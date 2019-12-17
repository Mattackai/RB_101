#Write a method that takes a year as input and returns the century.
#The return value should be a string that begins with the century number and ends with 
#st, nd, rd, th as appropriate for that number.
#New centuries begin in years that end with 01. (1901-2000 is the 20th century)

def century(year)
  century = year/100
  century.round
  century + 1 unless year % 2 == 0
end


def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


puts century(2000) 
puts century(2001) 
puts century(1965) 
puts century(256) 
puts century(5) 
puts century(10103) 
puts century(1052) 
puts century(1127) 
puts century(11201) 