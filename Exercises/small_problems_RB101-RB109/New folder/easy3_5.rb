#Using the multiply method from the "Multiplying two numbers" problem, write a method
#that computes the square of its argument(The result of multiplying a number by itself).

def multiply(int, int2)
  int * int2
end

def power(num, n)
  if n == 0
    1
  elsif n > 0
    multiply(power(num, n - 1), num)
  else
    1 / power(num, -n).to_f
  end
end

puts power(5, 5)

#Multiply a number by itself
#Take the total, multiply it by the original number.
#Repeat this for the power you wish to find.