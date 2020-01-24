#F(n) = F(n - 1) + F(n - 2) where n > 2
#Rewrite the Fibonacci method from the previous exercise into a non-recursive method.

#Examples:
#fibonacci(20) == 6765
#fibonacci(100) == 354224848179261915075
#fibonacci(100_001) # => 4202692702.....8285979669707537501

def fibonacci(int)
  start_index = 0
  end_index = 1
  f_arr = [1, 1]
  (int - 2).times do
    f_arr << f_arr[start_index] + f_arr[end_index]
    start_index += 1
    end_index += 1
  end
  f_arr[-1]
end 


p fibonacci(20)
p fibonacci(100)
p fibonacci(10_000)