[Original assignment can be found on The Odin Project website](https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks)

This project is meant to act as a basic string matcher.


It should take two **inputs**, a string and an array of words.
The program should go through the string and
count how many times each of the array's words show up.


The **output** should be a hash.
It should consist of each word that is in the string
and how many times it shows up.



Inside of the **Terminal**:


```
git clone https://github.com/kayleigh114/RubyProjects.git
cd RubyProjects/Substrings
irb
```


Within the **Interactive Ruby Shell**:
```
require "./Substrings.rb"
substrings("She had a great time in the sun, drinking tea and lemonade.", ["she", "ad", "the", "time", "tea", "eat"])
=> {"she"=>1, "ad"=>2, "the"=>1, "time"=>1, "tea"=>1, "eat"=>1}
```
