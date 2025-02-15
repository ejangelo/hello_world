# frozen_string_literal: true

proc do
  # In your "hello world" lesson, you learned how to display "Hello World!" to the screen using ruby's `print` method.

  # gets is a new method that reads a line you type from the keyboard.
  # It returns nothing (what ruby calls "nil") if the nothing you type nothing and hit return (or enter).
  print("Enter something using your keyboard and then hit return: ") unless ENV["APP_ENV"] == "test"
  print(gets.chomp)
end
