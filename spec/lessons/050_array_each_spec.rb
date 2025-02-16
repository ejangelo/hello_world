# frozen_string_literal: true

RSpec.describe("Ruby Array") do
  subject(:test) { Engine::Test.new("lessons/050_array_each.rb") }

  it "outputs the correct answer" do
    expect { test.run! }.to(output("Hello\nWorld\n!\n").to_stdout)
  end
end
