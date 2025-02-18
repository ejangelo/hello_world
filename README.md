[![Ruby](https://github.com/ejangelo/hello_world/actions/workflows/ruby.yml/badge.svg?refresh=0)](https://github.com/ejangelo/hello_world/actions/workflows/ruby.yml)

## hello_world
`hello_world` is a project that I created for my sons to learn the Ruby language; it is meant for a parent or Ruby mentor to go through _with_ the student.

## To the student
### Running the tests
Run any of the following, in a terminal, from the project root folder:

```ruby
# This runs tests using rake (spec is the default).
rake
```
```ruby
# This runs tests using rake (same as above, only specifically
# calling the `spec` task).
rake spec
```
```ruby
# This runs tests using the rspec gem directly using bundler.
bundle exec rspec
```

### Using the playground
If you want to play around with Ruby, there are several ways. Using the terminal from the project root folderm run:

```ruby
# Enters an interactive Ruby session
irb
```
```ruby
# Enters an interactive Ruby session using Pry
pry
```
```ruby
# Runs the code in the `playground/sandbox.rb` file
rake playground
```

### Running the lesson files
To run any one of the lesson files, use the rake `run` task, passing the lesson _path_ as an argument. For example, to run the `lessons/000_puts_hello_world.rb` lesson file, run the following from the terminal:

```ruby
rake "run[lessons/000_puts_hello_world.rb]"
```
