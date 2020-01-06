#Write two methods that each take a time of day in 24 hour format
#and return the number of minutes before and after Midnight,
#respectively. Both methods should return a value in the range
#of 0..1439

#Examples:
  #after_midnight('00:00') == 0
  #after_midnight('12:34') == 754
  #before_midnight('12:34') == 686
  #before_midnight('24:00') == 0

def after_midnight(time)
  time = time.split(":")
  hours = time[0].to_i
  minutes = time[1].to_i
  value = (hours * 60) + minutes
  if value < 0
    value = 0
  elsif value == 1439 || value == 1440
    value = 0
  else 
    value = value   
  end
end

def before_midnight(time)
  time = time.split(":")
  hours = time[0].to_i
  minutes = time[1].to_i
  value = 1439 - ((hours * 60) + minutes)
  if value < 0
    value = 0
  elsif value == 1439 || value == 1440
    value = 0
  else 
    value = value   
  end
end

puts after_midnight('00:00') 
puts before_midnight('00:00') 
puts after_midnight('12:34') 
puts before_midnight('12:34') 
puts after_midnight('24:00') 
puts before_midnight('24:00') 