=begin
 highest price chosen must have a lower price before to buy
 therefore, index of max must be greater than min's index

 also, right minus left should be biggest difference
=end

def array_best_days(array)
  current_biggest_diff = 0
  best_days_array = []
  array.each {
    |left_number|
    array.each {
      |right_number|
      if array.index(left_number) < array.index(right_number)
        if current_biggest_diff < (right_number - left_number)
          current_biggest_diff = right_number - left_number
          best_days_array = [array.index(left_number) + 1, array.index(right_number) + 1]
        end
      end
    }
  }
  print best_days_array, "\n"
end

=begin
  TEST
  in file's same directory open irb
  require "./StockPicker.rb"
  call array_best_days(any_array_with_positive_numbers)
=end
