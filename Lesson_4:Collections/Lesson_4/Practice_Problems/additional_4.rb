ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

youngest_age = ages.values[0]

ages.each_value do |value|
  if value < youngest_age
    youngest_age = value
  end
end

puts youngest_age
ages.values.min