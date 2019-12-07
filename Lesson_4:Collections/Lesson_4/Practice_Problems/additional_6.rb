flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
counter = 0
loop do
  current_name = flintstones[counter].to_s
  loop do
    if current_name.length > 3
      current_name.chop!
    else
      break
    end
  end
  counter += 1
  break if counter > flintstones.length
end

puts flintstones

flintstones.map! do |name|
  name[0, 3]
end