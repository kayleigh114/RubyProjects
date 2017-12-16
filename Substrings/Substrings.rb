=begin
  defaults for test
  dictionary = ["hi", "the", "be", "tea", "need", "eat", "aid", "he", "we",
    "air", "bear", "ear", "nail", "ate", "wait", "mate"]

  string = "Have a great time in the sun!"
=end

def substrings(string, dictionary)
  array_of_string = string.downcase.split(" ")
  all_included_substrings = Hash.new
  all_included_substrings.default = 0
  for inside_string in dictionary
    for outside_string in array_of_string
      if outside_string.include?(inside_string)
        all_included_substrings[inside_string] = all_included_substrings[inside_string] + 1
      end
    end
  end
  puts all_included_substrings
end

# call for test substrings(string, dictionary)
