# unsorted_array = [10, 12, 14, 64, 23, 1, 2, 0, 1, 2, 54, -1]

def bubble_sort(array)
  counter = 0
  while counter < array.length do
    counter += 1
    array.each_index do
      |position|
      next_position = position + 1
      if array[next_position] === nil
        next
      elsif array[position] > array[next_position]
        array[position], array[next_position] = array[next_position], array[position]
      else
        next
      end
    end
  end
  print "The sorted array: #{array}\n"
end

# bubble_sort(unsorted_array)
