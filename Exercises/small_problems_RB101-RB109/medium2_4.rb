#Write a method that takes a string as an argument, and returns
#true if all parantheses in the string are properly balanced,
#false otherwise. To be properly balanced, parentheses must occur
#in matching '(' and ')' pairs.
#matching pairs must start with '('
#Examples:
#balanced?('What (is) this?') == true
#balanced?('What is) this?') == false
#balanced?('What (is this?') == false
#balanced?('((What) (is this))?') == true
#balanced?('((What)) (is this))?') == false
#balanced?('Hey!') == true
#balanced?(')Hey!(') == false
#balanced?('What ((is))) up(') == false


#if first parenthese is ever ')', always return false.

def balanced?(string)
  parentheses = string.chars.select { |char| char == '(' || char == ')'}
  parentheses[0] != ')' && parentheses[-1] != '(' && parentheses.size.even?
end

p balanced?('What (is) this?')
p balanced?('What is) this?')
p balanced?('What (is this?')
p balanced?('((What) (is this))?')
p balanced?('((What)) (is this))?')
p balanced?('Hey!')
p balanced?(')Hey!(')
p balanced?('What ((is))) up(')
        


#LS method
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end