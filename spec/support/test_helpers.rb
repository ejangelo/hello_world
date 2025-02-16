# frozen_string_literal: true

require_relative "stdout_redirector_service"

module TestHelpers
  def stub_gets(and_return:)
    return_value = and_return.is_a?(Array) ? and_return : [and_return]
    Object.define_method(:gets) do
      instance_exec { return_value.shift }
    end
  end
end
