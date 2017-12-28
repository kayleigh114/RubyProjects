[Original assignment can be found on The Odin Project website](https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks)

This project is meant to act as a basic stock picker.


It should take an array of numbers for an **input**.
These numbers stand for the price of the stock on that day,
with the first number being for the first day.


The **output** should be a pair of numbers,
which represent the best day to buy and the best day to sell.
This is done by finding the biggest profit between buying and selling.



Inside of the **Terminal**:


```
git clone https://github.com/kayleigh114/RubyProjects.git
cd RubyProjects/StockPicker
irb
```



Within the Interactive Ruby Shell:
```
require "./StockPicker.rb"
array_best_days([24, 1, 6, 3, 7, 50, 20, 2])
=> [2, 6]
```
