# frozen_string_literal: true

# Use Ruby's `if...else...end` expressions to write the code to output:
# - "Goodbye!" if the user inputs "hello!"
# - "I don't understand!" if the user inputs anything else.
# NOTE: Use the Ruby `gets` method to get user input and `chomp` to remove the newline ("\n") character.
# Resources:
# Ruby `gets` method: https://ruby-doc.org/3.3.7/Kernel.html#method-i-gets
# Ruby `if` expression: https://ruby-doc.org/3.3.7/syntax/control_expressions_rdoc.html#label-if+Expression
# Ruby `String#==` equality operator: https://ruby-doc.org/3.3.7/String.html#method-i-3D-3D
# Ruby `=` assignment operator: https://ruby-doc.org/3.3.7/syntax/assignment_rdoc.html

proc do
  # TODO: Add your code here
  input = gets.chomp
  if input == "Hello!"
    puts "Goodbye!"
  else
    puts "I don't understand!"
  end
end
