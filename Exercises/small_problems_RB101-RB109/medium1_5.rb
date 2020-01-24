#Write a method that displays a 4-pointed diamond in an 'n x n' grid
#where n is an odd integer that is supplied as an argument to the method.
#You may assume that the argument will always be an odd integer.

#Examples:


#diamond(1) # 1x1
#
#*

#diamond(3) # 3x3
#
# *
#***
# *
#
#
# diamond(9) # 9x9
#
#    *
#   ***
#  *****
# *******
#*********
# *******
#  *****
#   ***
#    *


#Every line is n characters long
#every column is n characters long
#every line consists of 'x' blank spaces and 'y' star spaces
#every line x -2, y +2
#there must be equal x on either side of y


def diamond(int)
  blank = int / 2
  stars = int - (blank * 2)
  int.times do
    blank.times do
      print " "
    end
    stars.times do
      print "*"
    end
    blank.times do
      print " "
    end
    print "\n"
    blank -= 1
    stars += 2
    break if blank == 0
  end
  int.times do
    blank.times do
      print " "
    end
    stars.times do
      print "*"
    end
    blank.times do
      print " "
    end
    print "\n"
    blank += 1
    stars -= 2
    break if blank > int / 2
  end
end

diamond(51)
#LS METHOD 
#| | | | |
#V V V V V
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
