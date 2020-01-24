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
def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
#p fibonacci_last(123456789) # -> 4