#Write a method that takes a single string argument and returns a new string
#that contains the original value of the argument with the first character
#of every word capitalized and all other letters lowercase.

#You may assume that words are any sequence of non-blank characters.

#Examples:
#word_cap('four score and seven') == 'Four Score And Seven'
#word_cap('the javaScript language') == 'The Javascript Language'
#word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap(string)
  new_str = ""
  string.split.each do |x|
    new_str << x.capitalize + " "
  end
  new_str
end



p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')