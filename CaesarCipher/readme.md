[Original assignment can be found on The Odin Project website](https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks)

This a project is meant to emulate the Caesar Cipher,
by shifting plaintext letters to the right by a given number of slots.



Download file onto computer. Inside of the Terminal:


`cd` to directory with CaesarCipher.rb in it.


```
irb
```



Within the Interactive Ruby Shell:
```
require "./CaesarCipher.rb"
caesar_cipher("Encrypt this please.", 6)
```



To decrypt the message, negative numbers can be used:
```
caesar_cipher("Kixevz znoy vrkgyk.", -6)
```
