# frozen_string_literal: true

RSpec.describe("Ruby print method") do
  subject(:test) { Engine::Test.new("lesson_answers/010_print_hello_world.rb") }

  it "outputs the correct answer" do
    expect { test.run! }.to(output("Hello World!").to_stdout)
  end
end
