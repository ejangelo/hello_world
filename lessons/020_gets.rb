# frozen_string_literal: true

require "reline"

# Use the Ruby `gets` method to get user input and `chomp` to remove the newline ("\n") character.
# Resources:
# Ruby `gets` method: https://ruby-doc.org/3.3.7/Kernel.html#method-i-gets
# Ruby `String` class: https://ruby-doc.org/3.3.7/String.html
# Ruby `String#chomp` method: https://ruby-doc.org/3.3.7/String.html#method-i-chomp

proc do
  print "Enter something using your keyboard and then hit return: " unless ENV["APP_ENV"] == "test"
  # TODO: Add your code here
  puts gets.chomp
end
