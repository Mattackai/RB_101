#Fibonacci numbers are a series of numbers such that the first two numbers are 1 by definition and each subsequent number is the sum of the two previous numbers.
#1,1
#1,1,2
#1,1,2,3
#1,1,2,3,5
#1,1,2,3,5,8
#1,1,2,3,5,8,13
#1,1,2,3,5,8,13,21
#1,1,2,3,5,8,13,21,34

#Write a method that calculates and returns the INDEX of the first Fibonacci number that has the number of digits specified as an argument.
#The first fibonacci number has an index 1.

#Examples:
#find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
#find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
#find_fibonacci_index_by_length(10) == 45        #the 45th Fibonacci number is 10 digits long...
#find_fibonacci_index_by_length(100) == 476      #the 476th Fibonacci number is 100 digits long...
#find_fibonacci_index_by_length(1000) == 4782
#find_fibonacci_index_by_length(10000) == 47847




def find_fibonacci_index_by_length(integer)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= integer

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(4)



