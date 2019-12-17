#Write a method that takes two arguments, a positive integer and a boolean.
#Calculate the bonus for a given salary.
#If the boolean is true, the bonus should be half the salary.
#If the boolean is false, the bonus should be 0.

def calculate_bonus(int, bool)
  bool ? int / 2 : 0
end




puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000