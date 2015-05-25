# Write a function called `divide` that takes 2 arguments.
# This function will divide the first argument by the second argument and return
# the result.
def divide(a, b)
  a / b
end


# Write a function called `hello5` that will print the string "hello" 5 times,
# with each "hello" on a separate line
def hello5
  5.times do
    puts 'hello'
  end
end


# Write a function called `hello_x_times` that takes 1 argument which is a
# number. If the argument is 4, "hello" will be printed 4 times. Each "hello"
# must be printed on the same line (e.g. "hellohellohellohello").
def hello_x_times(count)
  count.times do
    print 'hello'
  end
end


# Write a function called `string_plus` that takes 2 string arguments. It will
# return a string with the second argument concatenated to the first ('working'
# and 'example' become 'workingexample').
def string_plus(str1, str2)
  str1 + str2
end


# Write a function called `join_reverse_array` that takes 1 argument, an array
# of strings. It will return a string with each element of the array
# concatenated in reverse order (['az', 'by', 'cx', 'dw'] becomes 'dwcxbyaz').
def join_reverse_array(arr)
  arr.reverse.join
end


# Write a function called `array_tack_join` that takes 2 arguments, an array of
# strings, and a string. It will concatenate the second argument to each string
# in the array and return a string with one string in the array per line (e.g.
# ['banana', 'orange', 'apple'], ' cat' would become:
# "banana cat
# orange cat
# apple cat"
def array_tack_join(arr, tack_str)
  arr.map do |s|
    s + tack_str
  end.join "\n"
end


# Write a class called `Table`. When initialising `Table`, a decimal height must
# be passed to the initialiser. The table instance's height can then be read and
# set using `my_table.height` and `my_table.height = 20.9`
class Table
  attr_accessor :height
  
  def initialize(height)
    @height = height
  end
end


# Copy your `Table` class and change the copy's name to `Table2`. Add a method
# `height_times2` that returns the table's height * 2.
class Table2
  attr_accessor :height
  
  def initialize(height)
    @height = height
  end
  
  def height_times2
    @height * 2
  end
end
