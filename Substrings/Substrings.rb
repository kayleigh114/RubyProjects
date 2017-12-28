def substrings(string, dictionary)
  array_of_string = string.downcase.split(" ")
  all_included_substrings = Hash.new
  all_included_substrings.default = 0
  dictionary.each do |dict_word|
    array_of_string.each do |input_word|
      if input_word.include?(dict_word)
        all_included_substrings[dict_word] = all_included_substrings[dict_word] + 1
      end
    end
  end
  return all_included_substrings
end
