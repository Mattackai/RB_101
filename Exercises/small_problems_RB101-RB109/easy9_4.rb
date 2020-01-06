#Write a method that takes an integer argument
#and returns an array of all integers, in sequence
#between 1 and the argument.

#You may assume that the argument will always be a valid
#integer greater than 0.

#Examples:
#sequence(5) == [1, 2, 3, 4, 5]
#sequence(3) == [1, 2, 3]
#sequence(1) == [1]

def sequence(integer)
  1.upto(integer).to_a
end

p sequence(5)
p sequence(3)
p sequence(1)