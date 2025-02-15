# frozen_string_literal: true

RSpec.describe("Ruby 'Hello world!'") do
  subject(:test) { Engine::Test.run!("lessons/000_hello_world.rb") }

  it "outputs the correct answer" do
    expect { test }.to(output("Hello World!").to_stdout)
  end
end
