def array_best_days(array)
  current_biggest_diff = 0
  best_days_array = []
  array.each_with_index do |left_number, buy|
    array[buy+1..-1].each_with_index do |right_number, sell|
      difference = right_number - left_number
      if current_biggest_diff < difference
        current_biggest_diff = difference
        best_days_array = [buy + 1, sell + buy + 2]
      end
    end
  end
  return best_days_array
end
