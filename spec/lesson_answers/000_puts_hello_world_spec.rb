# frozen_string_literal: true

RSpec.describe("Ruby puts method") do
  subject(:test) { Engine::Test.new("lesson_answers/000_puts_hello_world.rb") }

  it "outputs the correct answer" do
    expect { test.run! }.to(output("Hello World!\n").to_stdout)
  end
end
