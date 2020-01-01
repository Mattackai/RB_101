require 'pry'

deck =  [['H', "2"], ['H', "3"], ['H', "4"], ['H', "5"], ['H', "6"], ['H', "7"], ['H', "8"], ['H', "9"], ['H', "10"], ['H', "Jack"], ['H', "Queen"], ['H', "King"], ['H', "Ace"],
         ['D', "2"], ['D', "3"], ['D', "4"], ['D', "5"], ['D', "6"], ['D', "7"], ['D', "8"], ['D', "9"], ['D', "10"], ['D', "Jack"], ['D', "Queen"], ['D', "King"], ['D', "Ace"],
         ['C', "2"], ['C', "3"], ['C', "4"], ['C', "5"], ['C', "6"], ['C', "7"], ['C', "8"], ['C', "9"], ['C', "10"], ['C', "Jack"], ['C', "Queen"], ['C', "King"], ['C', "Ace"],
         ['S', "2"], ['S', "3"], ['S', "4"], ['S', "5"], ['S', "6"], ['S', "7"], ['S', "8"], ['S', "9"], ['S', "10"], ['S', "Jack"], ['S', "Queen"], ['S', "King"], ['S', "Ace"]]

def prompt(string)
  puts "=> #{string}"
end

def deal_hands(cards, player, dealer)
  cards.shuffle!
  player << cards.pop
  player << cards.pop
  dealer << cards.pop
  dealer << cards.pop
end

def hit(cards, hand)
  hand << cards.pop
end

def check_total(hand)
  values = hand.map { |card| card[1] }
  sum = 0

  values.each do |card|
    if card == "Ace"
      sum += 11
    elsif card.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += card.to_i
    end
  end

  if sum > 21
    values.each do |card|
      sum -= 10 if card == "Ace"
      break if sum <= 21
    end
  else
    sum
  end
  sum
end

def busted?(hand)
  check_total(hand) > 21
end

def display_winner(player, dealer)
  if player == dealer
    "It's a tie!"
  elsif player > dealer
    "Player wins!"
  else
    "Dealer wins!"
  end
end

def determine_winner(player, dealer)
  if player > 21
    :dealer
  elsif dealer > 21
    :player
  elsif player > dealer
    :player
  elsif dealer > player
    :dealer
  else
    :tie
  end    
end

def compare_totals(player, dealer, dealerh, playerh, dealers, players)
  if busted?(playerh)
    prompt "Your total is #{player}, you busted!"
  elsif busted?(dealerh)
    prompt "Dealer hand is #{dealerh.map { |card| card[1]} } with a total of #{dealer}! Dealer busts, you win!"
  else
    prompt "Your total is #{player}!"
    prompt "Dealer hand is #{dealerh.map { |card| card[1]} } with a total of #{dealer}!"
    prompt "#{display_winner(player, dealer)}"
  end
end
        
prompt "Welcome to Twenty-One!"
player_score = 0
dealer_score = 0

loop do
  player_hand = []
  dealer_hand = []
  player_total = 0
  dealer_total = 0

  deal_hands(deck, player_hand, dealer_hand)
  prompt "Your score is #{player_score}, dealer score is #{dealer_score}."
  prompt "Your hand consists of #{player_hand[0][1]} and #{player_hand[1][1]} for a total of #{check_total(player_hand)}"
  prompt "Dealer hand consists of #{dealer_hand[0][1]} and unknown."

  # Player Turn
  loop do
    prompt "Hit(H) or Stay(S)? (> 21 is a bust!)"
    choice = gets.chomp
    if choice.downcase.start_with?("h")
      hit(deck, player_hand)
      player_total = check_total(player_hand)
      prompt "You drew a #{player_hand.last[1]} for a new total of #{player_total}"
    elsif choice.downcase.start_with?("s")
      player_total = check_total(player_hand)
    else
      puts "That's not a valid input."
    end
      break if choice.downcase.start_with?("s") || busted?(player_hand)
  end

  # Computer Turn
  if !busted?(player_hand)
    dealer_total = check_total(dealer_hand)
    if dealer_total < 17
      until dealer_total >= 17
        hit(deck, dealer_hand)
        dealer_total = check_total(dealer_hand)
        prompt "Dealer drew a #{dealer_hand.last[1]} for a total of #{dealer_total}"
      end
    else
      dealer_total
    end
  end

  compare_totals(player_total, dealer_total, dealer_hand, player_hand, dealer_score, player_score)

  case determine_winner(player_total, dealer_total)
  when :player
    player_score += 1
  when :dealer
    dealer_score += 1
  end

  if player_score !=5 && dealer_score != 5
    prompt "Would you like to play again?"
    again = gets.chomp
    break if again.downcase.start_with?("n")
  elsif player_score == 5
    prompt "You win with a score of #{player_score}, congradulations!"
    break
  else 
    prompt "Dealer wins with a score of #{dealer_score}, try again next time!"
    break
  end
end

prompt "Thanks for playing!"


#Add point scoring
#attempt refactoring....
#Round ending?
#Change to 31? 41? higher?
