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
# Ruby `puts` method: https://ruby-doc.org/3.4.1/Kernel.html#method-i-puts
# Ruby `Array` class: https://ruby-doc.org/3.4.1/Array.html
# Ruby `Array#each` method: https://ruby-doc.org/3.4.1/Array.html#method-i-each
# See also "Iterating over Arrays": https://ruby-doc.org/3.4.1/Array.html#class-Array-label-Iterating+over+Arrays

proc do
  # TODO: Add your code here
  array = ["Hello", "World", "!"]
  array.each do |element|
    puts element
  end

  # Alternate approaches
  # array.each { |element| puts element }
  # Ruby (v3.4) `it` keyword: https://docs.ruby-lang.org/en/3.4/Proc.html#class-Proc-label-it
  #                           also: https://rubyreferences.github.io/rubychanges/3.4.html#standalone-it-in-blocks-became-anonymous-argument
  #                           also: https://kevinjmurphy.com/posts/what-is-it-in-ruby-34/
  # array.each { puts it }
end
