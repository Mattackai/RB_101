#Write a method that takes two string arguments, determines the longest of the two strings
#then returns the result of concatenating the shorter string, the longer string, and the
#shorter string once again. You may assume the strings are of different lengths.

#Examples:
  #short_long_short('abc', 'defgh') == "abcdefghabc"
  #short_long_short('abcde', 'fgh') == "fghabcdefgh"
  #short_long_short('', 'xyz') == "xyz"

  #Given two strings of varying lengths.
  #Compare the two strings, assigning one to a variable "long"
  #and the other to a variable "short", based on length. 
  #Concatenate the strings as short, long short
  #Return the concatenated string.

  def short_long_short(str1, str2)
    arr = [str1, str2]
    short = arr.min {|a, b| a.length <=> b.length }
    long = arr.max {|a, b| a.length <=> b.length }
    sls = short.concat(long.concat(short))
  end

  puts short_long_short("zog", "frog")
  puts short_long_short('abc', 'defgh') 
  puts short_long_short('abcde', 'fgh') 
  puts short_long_short('', 'xyz') 
