def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps('paper', 'rock')
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#paper because the result of rps('rock', 'paper') is paper. The result of rps('rock', 'scissors') is rock, the result of rps('paper', 'rock') is paper and the final result of rps('paper', 'rock') is also rock.
#I started from the innermost comparison and broke them down into results until reaching the final comparison, rps('paper', 'rock')