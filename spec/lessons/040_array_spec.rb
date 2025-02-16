# frozen_string_literal: true

RSpec.describe("Ruby Array Class") do
  subject(:test) { Engine::Test.new("lessons/040_array.rb") }

  it "outputs the correct answer" do
    expect { test.run! }.to(output("Hello\nWorld\n!\n").to_stdout)
  end
end
