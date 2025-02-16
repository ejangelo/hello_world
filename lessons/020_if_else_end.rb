# frozen_string_literal: true

# `if...else...end` statements.
# Write the code to output:
# - "Goodbye!" if the user inputs "ello!"
# - "I don't understand!" if the user inputs anything else.
# NOTE: Use the `gets` method to get user input and `chomp` to remove the newline ("\n") character.

proc do
  input = gets.chomp
  if input == "Hello!"
    print "Goodbye!"
  else
    print "I don't understand!"
  end
end
