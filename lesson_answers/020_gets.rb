# frozen_string_literal: true

proc do
  print "Enter something using your keyboard and then hit return: " unless ENV["APP_ENV"] == "test"
  puts gets.chomp
end
