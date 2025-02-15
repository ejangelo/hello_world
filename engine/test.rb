# frozen_string_literal: true

module Engine
  class Test
    class << self
      def run!(lesson_path)
        new(lesson_path).run!
      end
    end

    private

    def initialize(lesson_path)
      method_body = Kernel.eval(File.read(lesson_path), TOPLEVEL_BINDING, lesson_path)

      raise "Test must be wrapped in a `proc do...end` block!" unless method_body.is_a?(Proc)

      define_singleton_method(:run!) do
        method_body.call
      end
    end
  end
end
