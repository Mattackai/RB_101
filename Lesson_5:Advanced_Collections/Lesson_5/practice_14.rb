#Given this data structure, write some code to
#return an array containing the colors of the fruits
#and sizes of the vegetables. The sizes should be
#UPPERCASE and the colors should be Capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
#return value: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh.map do |_, value|
  if value[:type] == "fruit"
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == "vegetable"
    value[:size].upcase
  end
end
      
