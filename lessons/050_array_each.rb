# frozen_string_literal: true

# Using the Ruby `Array` class, create an array with the following elements:
# - "Hello"
# - "World"
# - "!"
#
# Write each element of the array on a new line to the console using the Ruby `puts` method.
#
# Example output:
# Hello
# World
# !
#
# Hints:
# - Use the `puts` method to print each element on a new line.
# - Use the `each` method to iterate over each element in the array.
#
# Resources:
# Ruby `puts` method: https://ruby-doc.org/3.3.7/Kernel.html#method-i-puts
# Ruby `Array` class: https://ruby-doc.org/3.3.7/Array.html
# Ruby `each` method: https://ruby-doc.org/3.3.7/Array.html#method-i-each
# See also "Iterating over Arrays": https://ruby-doc.org/3.3.7/Array.html#class-Array-label-Iterating+over+Arrays

proc do
  # TODO: Add your code here
  array = ["Hello", "World", "!"]
  array.each do |element|
    puts element
  end

  # Alternate approaches
  # array.each { |element| puts element }
  # array.each { puts it }
end
