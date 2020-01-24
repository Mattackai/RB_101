#A triangle is classified as follows:
#right: One angle of the triangle is a right angle(90 degrees)
#acute: All 3 angles of the triangle are less than 90 degrees
#obtuse: One angle is greater than 90 degrees

#To be a valid triangle, the sum of the angles must be exactly 180 degrees
#and all angles must be greater than 0. 

#Write a method that takes the 3 angles of the triangle as arguments and returns
#a symbol (:right, :acute, :obtuse, or :invalid).

#You may assume integer valued angles so you don't have to worry about floating
#point errors. You may also assume that the arguments are specified in degrees.

#Examples:
#triangle(60, 70, 50) == :acute
#triangle(30, 90, 60) == :right
#triangle(120, 50, 10) == :obtuse
#triangle(0, 90, 90) == :invalid
#triangle(50, 50, 50) == :invalid

#Given 3 integers representing degrees
#initialize an array containing all 3 variables
#check to see if the sum of all 3 elements equals 180 & if all elements are
#greater than 0.
	#if not, return invalid.
#if so, check if all elements are less than 90
  #if so, return acute
#if not, check if one element is exactly 90
  #if so, return right
#if not, return obtuse

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid unless angles.reduce(:+) == 180 && angles.all? {|angle| angle > 0}
  case 
  when angles.all? {|angle| angle < 90 }
    :acute
  when angles.one? {|angle| angle == 90 }
    :right
  else
    :obtuse
  end
end


p triangle(60, 70, 50) 
p triangle(30, 90, 60) 
p triangle(120, 50, 10) 
p triangle(0, 90, 90) 
p triangle(50, 50, 50) 