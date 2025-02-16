# frozen_string_literal: true

RSpec.describe("Ruby gets") do
  subject(:test) { Engine::Test.new("lessons/010_gets.rb") }

  it "outputs the correct answer" do
    stub_gets(and_return: "Hello World!")

    expect { test.run! }.to(output("Hello World!").to_stdout)
  end
end
