# frozen_string_literal: true

proc do
  array = ["Hello", "World", "!"]
  array.each do |element|
    puts element
  end

  # Alternate approaches - all these do the same thing.
  # array.each { |element| puts element }
  # array.each { puts it }
end
