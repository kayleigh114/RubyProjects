alpha_array = ["A", "B", "C", "D", "E",
  "F", "G", "H", "I", "J", "K",
  "L", "M", "N", "O", "P",
  "Q", "R", "S", "T", "U",
  "V", "W", "X", "Y", "Z"]

puts "What phrase do you want to cipher using the Caesar Cipher Method?"
saying = gets.chomp
puts "Choose a number:"
caesar_key = gets.chomp.to_i
length_here = saying.length
new_saying = ""

for i in (0...length_here)
  letter = saying[i]
  number = alpha_array.index(letter.to_s.upcase)
  new_number = number.to_i + caesar_key
  if new_number > 25
    new_number = new_number % 26
  end
  if alpha_array.include?(letter.to_s.upcase)
    new_saying << alpha_array[new_number].to_s
  else
    new_saying << letter
  end
end
puts new_saying.capitalize
