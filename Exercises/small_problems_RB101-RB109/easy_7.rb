
def stringy(int,default = 1)
  string = []
  int.times do |index|
    if default == 1
      element = index.even? ? 1 : 0
    elsif default == 0
      element = index.even? ? 0 : 1
    end
      string << element
  end
    string.join
end

puts stringy(6, 0) 
puts stringy(9) 
puts stringy(4, 0) 
puts stringy(7) 
