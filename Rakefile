# frozen_string_literal: true

# https://ruby.github.io/rake/doc/rakefile_rdoc.html

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

desc "Run the playground sandbox.rb script"
task :playground do
  puts "Running sandbox..."
  puts

  sh "ruby playground/sandbox.rb", verbose: false

  puts
  puts "Done."
end

desc "Run a lesson file (example: rake 'run[lessons/000_print_hello_world.rb]')"
task :run, [:lesson_path] do |_t, args|
  sh "bin/run #{args.lesson_path}", verbose: false
end

task default: [:spec]
