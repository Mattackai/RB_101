#Write a method that takes a positive integer, n, as an argument
#and displays a right triangle whose sides each have n stars.
#The hypotenuse of the triangle (diagonal side) should have one end
#at the lower left of the triangle, and the other at the upper right.

#Example:

#triangle(5)
#
##   *
#   **
## ***
# ****
#*****

def triangle(integer)
  count = integer - 1 
  1.upto(integer) do |x|
    count.times {print " "}
    count -= 1
    x.times do
      print "*"
    end
    print "\n"
  end
end

triangle(9)