#Write a method that returns a list of all substrings of a string
#that start at the beginning of the original string. The return
#value should be arranged in order from shortest to longest substring.

#Examples:
#substrings_at_start('abc') == ['a', 'ab', 'abc']
#substrings_at_start('a') == ['a']
#substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

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

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')