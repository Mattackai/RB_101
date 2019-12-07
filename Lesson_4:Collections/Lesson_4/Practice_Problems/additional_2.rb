ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
age_nums = ages.values
counter = 0

total_ages = 0
ages.each { |_,age| total_ages += age }
total_ages # => 6174