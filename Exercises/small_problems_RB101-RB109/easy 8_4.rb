#Write a method that returns a list of all substrings of a string.
#The returned list should be ordered by where in the string the substring
#begins. This means that all substrings that start at position 0 should
#come firsts, then all substrings that start at position 1, and so on.
#Since multiple substrings will occur at each position, the substrings
#at a given position should be returned in order from shortest to longest.
def substrings_at_start(string)
  array = []
  substring = string.chars[0]
  string.each_char do |x|
    if array.empty?
      array << x
    else
      substring += x
      array << substring
    end
  end
  array
end

def SX  !@s