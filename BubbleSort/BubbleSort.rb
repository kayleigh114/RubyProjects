def bubble_sort(array)
  (0..array.length).to_a.each do
    array.each_index do |position|
      next_position = position + 1
      if array[next_position] && array[position] > array[next_position]
        array[position], array[next_position] = array[next_position], array[position]
      end
    end
  end
  return array
end

def bubble_sort_by(array)
  (0..array.length).to_a.each do
    left = 0
    loops = array.length - 1
    loops.times do
      right = left + 1
      if yield(array[left], array[right]) > 0
        array[left], array[right] = array[right], array[left]
      end
      left += 1
    end
  end
  return array
end
