=begin
 input array represents stock prices for each day

 output should be a pair of days, 
 where buying and selling has the biggest profit
 https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks?ref=lnav
=end

def array_best_days(array)
  current_biggest_diff = 0
  best_days_array = []
  array.each_with_index do |left_number, buy|
    array[buy+1..-1].each_with_index do |right_number, sell|
      puts "buy: #{buy} and sell: #{sell}"
      puts "left: #{left_number} and right: #{right_number}"

      difference = right_number - left_number
      if current_biggest_diff < difference
        current_biggest_diff = difference
        best_days_array = [buy + 1, sell + buy + 2]
      end
    end
  end
  print best_days_array, "\n"
end

=begin
  TEST
  in file's same directory open irb
  require "./StockPicker.rb"
  call array_best_days(any_array_with_positive_numbers)
=end
