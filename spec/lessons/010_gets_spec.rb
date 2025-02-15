# frozen_string_literal: true

RSpec.describe("Ruby gets") do
  subject(:test) { Engine::Test.run!(lesson_path) }

  # before do
  #   allow_any_instance_of(Object).to(receive(:gets).and_return("Hello World!\n")) # Stub gets globally
  # end

  before do
    Object.define_method(:gets) { "Hello World!\n" }
  end

  after do
    Object.class_eval { remove_method(:gets) } # Remove after test
  end

  let(:lesson_path) { "lessons/010_gets.rb" }

  it "outputs the correct answer" do
    expect { test }.to(output("Hello World!").to_stdout)
  end
end
