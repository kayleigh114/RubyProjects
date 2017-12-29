[Original assignment can be found on The Odin Project website](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks?ref=lnav)

This project is meant to act as a basic array sorter,
using the Bubble Sort method.


It should take an unsorted array as the **input**.


The **output** should be a sorted array.



Inside of the **Terminal**:


```
git clone https://github.com/kayleigh114/RubyProjects.git
cd RubyProjects/BubbleSort
irb
```


Within the **Interactive Ruby Shell**:
```
require "./BubbleSort.rb"
bubble_sort([10, 12, 14, 64, 23, 1, 2, 0, 1, 2, 54, -1])
=> [-1, 0, 1, 1, 2, 2, 10, 12, 14, 23, 54, 64]
```



Here is a method that takes a block as well.
It allows words to be sorted by length instead of alphabetically.
```
bubble_sort_by(["here", "there", "wheresit", "whosit", "who", "when"]) { |left, right| left.length - right.length }
=> ["who", "here", "when", "there", "whosit", "wheresit"]
```
