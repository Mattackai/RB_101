#Write a method that seaches for all multiples of 3 or 5 that lie between 1 and some other number,
#then computes the sum of those multiples.
#Example: if number is 20, answer should be 98 (3+5+6+9+10+12+15+18+20)

def multisum(int)
  total = 0
  new_arr = (1..int).to_a.select do |digit|
    digit % 3 == 0 || digit % 5 == 0
  end
  new_arr.each do |x|
    total += x
  end
  total
end
  





puts multisum(3) 
puts multisum(5) 
puts multisum(10) 
puts multisum(1000) 