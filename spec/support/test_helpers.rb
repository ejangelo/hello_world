# frozen_string_literal: true

require_relative "stdout_redirector_service"

module TestHelpers
  def get_lesson_output(lesson)
    StdoutRedirectorService.call do
      load lesson
    end
  end
end