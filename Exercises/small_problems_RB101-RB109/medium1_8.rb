#The Fibonacci series is a sequence of numbers starting with 1 and 1 where each
#number is the sum of the two previous numbers (1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, etc...)
#In mathematical terms:
#F(1) = 1
#F(2) = 1
#F(n) = F(n - 1) + F(n - 2) where n > 2

#Sequences like this translate naturally as "recursive" methods. 
#A recursive method is one in which the method calls itself. 
#Example:
#def sum(n)
#  return 1 if n == 1
#  n + sum(n - 1)
#end

#Recursive methods have three primary qualities.
#1: They call themselves at least once.
#2: They have a condition that stops the recursion (n == 1 above)
#3: They use the result returned by themselves.

#Write a recursive method that computes the 'nth' Fibonacci number
#where n is the argument to the method.

#Examples:
#fibonacci(1) == 1
#fibonacci(2) == 1
#fibonacci(3) == 2
#fibonacci(4) == 3
#fibonacci(5) == 5
#fibonacci(12) == 144
#fibonacci(20) == 6765

def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(int)
  return 1 if int <= 2
  fibonacci_tail(int, 1, 1)
end

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end


p fibonacci(20)

