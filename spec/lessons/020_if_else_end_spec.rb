# frozen_string_literal: true

RSpec.describe("Ruby if...else...end") do
  subject(:test) { Engine::Test.new("lessons/020_if_else_end.rb") }

  context "when the user enters 'Hello!'" do
    it "outputs the correct answer" do
      stub_gets(and_return: "Hello!")

      expect { test.run! }.to(output("Goodbye!").to_stdout)
    end
  end

  context "when the user enters something other than 'Hello!'" do
    it "outputs the correct answer" do
      stub_gets(and_return: "Hi!")

      expect { test.run! }.to(output("I don't understand!").to_stdout)
    end
  end
end
