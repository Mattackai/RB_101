#Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
#and returns a string that represents that angle in degrees, minutes and seconds. You should use the
#degree symbol( ° ) to represent degrees. A degree has 60 minutes, while a minute has 60 seconds.

#Examples:
  #dms(30) == %(30°00'00")
  #dms(76.73) == %(76°43'48")     48 / 60 == .8  43.48 / 60 == .73 (Seconds needs to be calculated into a percentage first) 
  #60 * .73 == 43.8 60 * .8 == 48 (43'48)
  #dms(254.6) == %(254°36'00")    36 / 60 == .6  60 * .6 == 36
  #dms(93.034773) == %(93°02'05")
  #dms(0) == %(0°00'00")
  #dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#Given a float between 0 and 360
#Assign the whole part of the float to a degree
#multiply 60 by the remainder. 
#if that answer has a remainder, multiply 60 by that remainder.
DEGREE = "\xC2\xB0"

def dms(float)
  minutes = 60 * float.remainder(1)
  seconds = 60 * minutes.remainder(1)
  puts "#{float.floor}#{DEGREE}#{minutes.floor}'#{seconds.floor}\""
end

dms(30) 
dms(76.73) 

dms(254.6)    
dms(93.034773) 
dms(0) 
dms(360) 