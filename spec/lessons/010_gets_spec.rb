# frozen_string_literal: true

RSpec.describe("Ruby gets") do
  subject(:test) { Engine::Test.run!("lessons/010_gets.rb") }

  it "outputs the correct answer" do
    stub_gets(and_return: "Hello World!")

    expect { test }.to(output("Hello World!").to_stdout)
  end
end
