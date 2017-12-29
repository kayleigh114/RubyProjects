module Enumerable

  def my_each
    index = 0
    self.length.times do
      yield(self[index])
      index += 1
    end
    self
  end

  def my_each_with_index
    index = 0
    self.length.times do
      yield(self[index], index)
      index += 1
    end
    self
  end

  def my_select
    selected_array = []
    self.my_each do |element|
      if yield(element)
        selected_array << element
      end
    end
    selected_array
  end

  def my_all?
    self.my_each do |element|
      if block_given?
        return false if !yield(element)
      end
      return false if element == nil || element == false
    end
    return true
  end

  def my_any?
    self.my_each do |element|
      if !block_given?
        return true if element != nil && element != false
      else
        return true if yield(element)
      end
    end
    return false
  end

  def my_none?
    self.my_each do |element|
      if !block_given?
        return false if element != nil && element != false
      else
        return false if yield(element)
      end
    end
    return true
  end

  def my_count(arg = nil)
    counting = 0
    self.my_each do |element|
      if arg != nil
        counting += 1 if self[counting] == arg
      elsif block_given?
        counting += 1 if yield(element)
      else
        counting += 1
      end
    end
    return counting
  end

end
