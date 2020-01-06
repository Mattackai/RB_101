#Write a method that returns a list of all substrings of a string
#that are palindromic. The return value should be arranged in the 
#same sequence as the substrings appear in the string. Duplicate
#palindromes should be included multiple times.

#For the purposes of this exercise, you should consider all 
#characters and pay attention to case. Assume that single
#characters are not palindromes.

#Examples:
#palindromes('abcd') == []
#palindromes('madam') == ['madam', 'ada']
#palindromes('hello-madam-did-madam-goodbye') == [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#]
#palindromes('knitting cassettes') == [
#  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#]


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

def substrings(string)
  result = []
  string.length.times do
     result << substrings_at_start(string)
     string = string[1..-1]
   end
   result.flatten
end

def palindromes(string)
  array = substrings(string)
  array.select do |x|
    x == x.reverse && x.size > 1
  end
end

 palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')