# frozen_string_literal: true

RSpec.shared_context("with user input") do
  after do
    Object.class_eval do
      remove_method(:gets) if respond_to?(:gets)
    end
  end
end

RSpec.configure do |config|
  config.include_context("with user input")
end
