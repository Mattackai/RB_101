#Write a method that searches for all multiples of 3 or 5 that lie between 1 and some number.
#Then compute the sum of those multiples. For instance, if the number is 20, the result should be
#98 (3+5+6+9+10+12+15+18+20)
#You may assume the number passed is an integer greater than 1.

#Given an integer greater than 1
#Iterate through a range consisting of 1 to that integer.
#Add every multiple of 3 or 5 to a total.
#Return the total.

def multisum(integer)
  total = 0
    (1..integer).to_a.select do |x|
      total += x if x % 3 == 0 || x % 5 == 0
    end
  total
end

puts multisum2(3) #== 3
puts multisum2(5) #== 8
puts multisum2(10) #== 33
puts multisum2(1000) #== 234168