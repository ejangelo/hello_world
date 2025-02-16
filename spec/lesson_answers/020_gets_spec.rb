# frozen_string_literal: true

RSpec.describe("Ruby gets method") do
  subject(:test) { Engine::Test.new("lesson_answers/020_gets.rb") }

  it "outputs the correct answer" do
    stub_gets(and_return: "Hello World!")

    expect { test.run! }.to(output("Hello World!\n").to_stdout)
  end
end
