(1..99).each do |num|
  puts num if num.odd?
end

1.upto(99) { |num| puts num if num.odd? }