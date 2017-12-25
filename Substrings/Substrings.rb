=begin
  defaults for test
   = ["hi", "the", "be", "tea", "need", "eat", "aid", "he", "we",
    "air", "bear", "ear", "nail", "ate", "wait", "mate"]

  string = "Have a great time in the sun!"

  https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks?ref=lnav
=end

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
  puts all_included_substrings
end

# call for test substrings(string, dictionary)
