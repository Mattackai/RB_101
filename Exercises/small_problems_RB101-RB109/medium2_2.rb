#A collection of spelling blocks has two letters per block, as shown in this list:

#B:O X:K D:Q C:P N:A
#G:T R:E F:S J:W H:U
#V:I L:Y Z:M

#This limits the words you can spell with the blocks to just those words that do not 
#use both letters from any given block. Each block can only be used once.

#Write a method that returns true if the word passed in as an argument can be spelled from
#this set of blocks, false otherwise. 

#Examples:
#block_word?('BATCH') == true
#block_word?('BUTCH') == false
#block_word?('jest') == true

blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

#Rules
#word may only use one block per letter
#blocks cannot be reused.

#Given a string word
#split the string into an array of characters
#loop through the array, comparing each character to the blocks array

def block_word?(string)
  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
  result = []
  string.upcase!.chars.each do |letter|
    blocks.each do |block|
      if block.include?(letter)
        result << block
        blocks.delete(block)
      end
    end
  end
  result.size == string.chars.size
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')


