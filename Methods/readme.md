[Original assignment can be found on The Odin Project website](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks?ref=lnav)

This project is meant to emulate some of the built-in Ruby Enumerable Methods.


These are all methods that have arrays as the basic **input**.


The **outputs** should be the same as the equivalent built-in Ruby method outputs.



Inside of the **Terminal**:


```
git clone https://github.com/kayleigh114/RubyProjects.git
cd RubyProjects/Methods
irb
```


Within the **Interactive Ruby Shell**:
```
require "./Methods.rb"
[4, 1, 3].my_each {|a| puts a ** 2}
16
1
9
=> [4, 1, 3]
[4, 1, 3].my_each_with_index {|c, b| puts "#{b}: #{c ** 2}"}
0: 16
1: 1
2: 9
=> [4, 1, 3]
[4, 1, 5].my_select {|a| a.even?}
=> [4]
[2, 4, 5].my_all? { |a| a.even? }
=> false
[2, 4, 5].my_all?
=> true
[1, 4, 9].my_any? { |a| a.even? }
=> true
[].my_any?
=> false
[1, 4, 9].my_none? { |a| a.even? }
=> false
[].my_none?
=> true
[2, 4, 6].my_count { |a| a.even? }
=> 3
[2, 4, 6].my_count
=> 3
[2, 2, 6].my_count(2)
=> 2
```
