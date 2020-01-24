#A triangle is classified as follows:
#Equilateral: All 3 sides are of equal length
#isosceles: 2 sides are of equal length, one is different.
#scalene: all 3 sides are of different length.

#To be valid, the sum of the lengths of the two shortest sides must be
#greater than the length of the longest side, and all sides must have
#lengths greater than 0. If either of those conditions is not satisfied,
#the triangle is invalid.

#Write a method that takes the length of the 3 sides of a triangle as arguments
#and returns a symbol (:equilateral, :isosceles, :scalene, or :invalid).

#Examples:
#triangle(3, 3, 3) == :equilateral
#triangle(3, 3, 1.5) == :isosceles
#triangle(3, 4, 5) == :scalene
#triangle(0, 3, 3) == :invalid
#triangle(3, 1, 1) == :invalid

#Given 3 integers
#Check if all integers are > 0
  #if not, return (:invalid)
#if they are, check if all 3 are equal 
  #if they are return (:equilateral)
#if they are not, isolate the longest side
#check if the two shorter sides combined are greater than the longest side
  #if they are not, return (:invalid)
#if they are, check if any two sides are equal
  #if they are, return (:isosceles)
  #if they are not, return (:scalene)

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  if sides.any? { |side| side < 1}
    :invalid
  elsif side1 == side2 && side1 == side3
    :equilateral
  else
    longest = sides.max
    shortest = sides.min(2)
    if shortest.reduce(:+) < longest
      :invalid
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else
      :scalene
    end
  end      
end

p triangle(4, 5, 6)
p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5) 
p triangle(0, 3, 3)
p triangle(3, 1, 1)