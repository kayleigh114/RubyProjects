alpha_array = ('A'..'Z').to_a

puts "What phrase do you want to cipher using the Caesar Cipher Method?"
phrase = gets.chomp
puts "Choose a number:"
shifting_num = gets.chomp.to_i
phrase_length = phrase.length
ciphered_phrase = ""

(0...phrase_length).each do |i|
  letter = phrase[i]
  current_index_of_s = alpha_array.index(letter.to_s.upcase)
  new_index_of_s = (current_index_of_s.to_i + shifting_num) % 26
  if alpha_array.include?(letter.to_s.upcase)
    ciphered_phrase << alpha_array[new_index_of_s].to_s
  else
    ciphered_phrase << letter
  end
end

puts ciphered_phrase.capitalize
