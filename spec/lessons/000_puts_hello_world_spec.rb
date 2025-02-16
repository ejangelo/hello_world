# frozen_string_literal: true

RSpec.describe("Ruby puts 'Hello world!'") do
  subject(:test) { Engine::Test.new("lessons/000_puts_hello_world.rb") }

  it "outputs the correct answer" do
    expect { test.run! }.to(output("Hello World!\n").to_stdout)
  end
end
