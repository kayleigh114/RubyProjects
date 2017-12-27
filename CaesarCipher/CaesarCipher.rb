def caesar_cipher(phrase, shifting_num)
  alpha_array = ('A'..'Z').to_a
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
  return ciphered_phrase.capitalize
end
