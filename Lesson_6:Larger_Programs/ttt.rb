require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonal
INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMP_MARKER = "O"
FIRST_PLAYER = "choose"

def joinor(array, delimiter=', ', word='or ')
  last = array.pop.to_s
  array.join(delimiter).concat(delimiter, word, last)
end

def prompt(msg)
  puts "=>#{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'cls'
  puts "Player = #{PLAYER_MARKER}, computer = #{COMP_MARKER}."
  puts"     |     |"
  puts"  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts"     |     |"
  puts"-----+-----+-----"
  puts"     |     |"
  puts"  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts"     |     |"
  puts"-----+-----+-----"
  puts"     |     |"
  puts"  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts"     |     |"
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def player_marks!(brd)
  square = " "
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Please enter a valid board square"
  end
  brd[square] = PLAYER_MARKER
end

def computer_marks!(brd)
  square = nil

  # defense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMP_MARKER)
    break if square
  end

  # offense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick square 5
  if !square
    square = empty_squares(brd).select {|x| x == 5}
    square = square[0]
  end

  # just pick a square
  if !square 
    square = empty_squares(brd).sample
  end

  brd[square] = COMP_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMP_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

######################################################################## 
########################################################################
prompt "Welcome to Tic Tac Toe!"
puts " "
player_score = 0
computer_score = 0
loop do
  board = initialize_board
  display_board(board)
  first = " "
  if FIRST_PLAYER == "choose"
      loop do
        prompt "Who goes first?((P)layer, (C)omputer)"
        first = gets.chomp
        break if first.downcase.start_with?("p") || first.downcase.start_with?("c")
        prompt "Please choose a starting player(P, C)"
      end
    end

  loop do
    case first
    when "p"
      prompt "Player turn: Please mark a square"
      display_board(board)

      player_marks!(board)
      break if someone_won?(board) || board_full?(board)

      computer_marks!(board)
      break if someone_won?(board) || board_full?(board)
    when "c"
      computer_marks!(board)
      break if someone_won?(board) || board_full?(board)

      prompt "Player turn: Please mark a square"
      display_board(board)

      player_marks!(board)
      break if someone_won?(board) || board_full?(board)
    end
  end

  display_board(board)

  if someone_won?(board)
    if detect_winner(board) == 'Player'
      player_score += 1
      prompt "#{detect_winner(board)} won!"
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
      prompt "#{detect_winner(board)} won!"
    end
  else
    prompt "It's a tie!"
  end

  winner = "Computer" if computer_score == 5
  winner = "Player" if player_score == 5

  prompt "Player score: #{player_score}. Computer score: #{computer_score}."
  if player_score == 5 || computer_score == 5
    prompt "Winner is #{winner}!"
    break
  end
  prompt "Would you like to play again? (y or n)"
  again = gets.chomp
  break if again.downcase.start_with?("n")
end

prompt "Thanks for playing!"
