answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#The answer is 34 because mess_with_it does not mutate the argument. new_answer would be 50, answer remains as 42 because it was not mutated.
