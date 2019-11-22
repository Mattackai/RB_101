
def monthly_rate(a)
  b = a.to_f / 100
  a = b / 12
end

def term_months(y)
  y.to_f * 12
end

def valid_number?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def prompt(message)
  Kernel.puts("=>#{message}")
end

name = ''
loop do
  prompt("Welcome to your Mortgage Calculator! Please enter your name.")
  name = gets.chomp
  if name.empty?
    prompt("Field blank, try again.")
  else
    break
  end
end

prompt("Welcome, #{name}! Lets calculate your payment together!")

loop do
  amount = ''
  loop do
    prompt("Please enter the amount of your loan.")
    amount = gets.chomp
    if valid_float?(amount)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  years = ''
  loop do
    prompt("Please enter the duration of your loan in years.")
    years = gets.chomp
    if valid_number?(years)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  apr = ''
  loop do
    prompt("Please enter the Annual Percentage Rate of your loan(4.5 = 4.5%)")
    apr = gets.chomp
    if valid_float?(apr)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  j = monthly_rate(apr)
  n = term_months(years)

  m = amount.to_f * (j.to_f / (1 - (1 + j.to_f)**(-n.to_f)))

  prompt("#{name}, your estimated monthly Mortgage payment is #{m.to_f.round(2)}!")

  prompt("Would you like to calculate another payment? Y for yes.")
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

prompt("Thank you for using Mortgage Calculator, #{name}! Have a great day!")
