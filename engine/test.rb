# frozen_string_literal: true

module Engine
  class Test
    def initialize(lesson_path)
      method_body = Kernel.eval(File.read(lesson_path), TOPLEVEL_BINDING, lesson_path)

      raise "Test must be wrapped in a `proc do...end` block!" unless method_body.is_a?(Proc)

      define_singleton_method(:run!) do
        method_body.call
      end
    end
  end
end
