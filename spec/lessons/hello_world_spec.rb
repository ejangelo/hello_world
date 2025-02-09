# frozen_string_literal: true

require "spec_helper"

RSpec.describe("Hello World") do
  it "output the correct answer" do
    lesson_output = get_lesson_output("lessons/hello_world.rb")

    expect(lesson_output).to(eq("Hello World!"))
  end
end
