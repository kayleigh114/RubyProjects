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
    self.my_each do
      |element|
      if yield(element)
        selected_array << element
      end
    end
    selected_array
  end
  def my_all?
    self.my_each do
      |element|
      if block_given?
        return false if !yield(element)
      end
      return false if element == nil || element == false
    end
    return true
  end
  def my_any?
    self.my_each do
      |element|
      if !block_given?
        return true if element != nil && element != false
      else
        return true if yield(element)
      end
    end
    return false
  end
  def my_none?
    self.my_each do
      |element|
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
    self.my_each do
      |element|
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

=begin
TESTS for in file and in command line

[4, 1, 3].my_each {|a| print a ** 2}
[4, 1, 3].each {|a| puts a ** 2}
[4, 1, 3].each_with_index {|d, f| puts "#{f}: #{d ** 2}"}
[4, 1, 3].my_each_with_index {|c, b| puts "#{b}: #{c ** 2}"}
print [4, 1, 3].select {|a| a.even?}
print [4, 1, 5].my_select {|a| a.even?}

puts "all with block: #{[2, 4, 5].all? { |a| a.even? }}"
puts "my all with block: #{[2, 4, 5].my_all? { |a| a.even? }}"
puts "all without block: #{[2, 4, 5].all?}"
puts "my all without block: #{[2, 4, 5].my_all?}"

puts "any with block: #{[2, 4, 6].any? { |a| a.even? }}"
puts "my any with block: #{[2, 4, 6].my_any? { |a| a.even? }}"
puts "any without block: #{[].any?}"
puts "any all without block: #{[].my_any?}"

puts "none with block: #{[2, 4, 6].none? { |a| a.even? }}"
puts "my none with block: #{[2, 4, 6].my_none? { |a| a.even? }}"
puts "none without block: #{[].none?}"
puts "none all without block: #{[].my_none?}"


puts "count with block: #{[2, 4, 6].count { |a| a.even? }}"
puts "my count with block: #{[2, 4, 6].my_count { |a| a.even? }}"
puts "count without block: #{[2, 3, 4].count}"
puts "my count all without block: #{[5, 6, 7].my_count}"
puts "count with arg: #{[2, 2, 6].count(2)}"
puts "my count with arg: #{[2, 2, 6].my_count(2)}"
=end
