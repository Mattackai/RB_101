hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
#hash where the values are arrays.
hsh.each do |_, value|
  value.join.chars.each do |x|
    puts x if "aeiou".include?(x)
  end
end