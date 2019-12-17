#Using the multiply method we just made, write a method
#that computes the square of it's argument(multiplying the number by itself).

#Example:
  #square(5) == 25
  #square(-8) == 64

def multiply(int1, int2)
  int1 * int2
end

def power(int, power)
  total = multiply(int, int)
  (power - 2).times do
    total *= int
  end
  total
end

puts power(9, 8)