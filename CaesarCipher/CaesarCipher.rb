alpha_array = ["A", "B", "C", "D", "E",
  "F", "G", "H", "I", "J", "K",
  "L", "M", "N", "O", "P",
  "Q", "R", "S", "T", "U",
  "V", "W", "X", "Y", "Z"]

puts "What phrase do you want to cipher using the Caesar Cipher Method?"
saying = gets.chomp
puts "Choose a number:"
shifting_num = gets.chomp.to_i
saying_length = saying.length
ciphered_saying = ""

for i in (0...saying_length)
  letter = saying[i]
  current_index_of_s = alpha_array.index(letter.to_s.upcase)
  new_index_of_s = current_index_of_s.to_i + shifting_num
  if new_index_of_s > 25
    new_index_of_s = new_index_of_s % 26
  end
  if alpha_array.include?(letter.to_s.upcase)
    ciphered_saying << alpha_array[new_index_of_s].to_s
  else
    ciphered_saying << letter
  end
end
puts ciphered_saying.capitalize
