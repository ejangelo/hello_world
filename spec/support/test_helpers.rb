# frozen_string_literal: true

require_relative "stdout_redirector_service"

module TestHelpers
  def get_lesson_output(lesson)
    StdoutRedirectorService.call do
      load(lesson)
    end
  end

  def stub_gets(and_return:)
    return_value = and_return.is_a?(Array) ? and_return : [and_return]
    Object.define_method(:gets) do
      instance_exec { return_value.shift }
    end
    # allow($stdin).to(receive(:gets)) do
    #   and_return.is_a?(Array) ? and_return.shift : and_return
    # end
    # stdin_mock = instance_double($stdin)
    # allow($stdin).to(receive(:gets)).with(anything).and_return(and_return_value)

    # stdin_mock = class_double(IO).as_stubbed_const
    # allow(stdin_mock).to(receive(:gets)).and_return(and_return_value)
    # binding.pry
    # allow(IO).to(receive(:gets)).and_return(and_return_value)
    # io_mock = class_double(IO)
    # # allow(io_mock).to(receive(:new)).with(any_args).and_return(io_mock)
    # allow(io_mock).to(receive(:gets)).and_return(and_return_value)
    # # binding.pry
  end

  def stub_string_io(and_return:)
    stub_gets(and_return: and_return)
    # and_return_value = and_return.is_a?(Array) ? and_return.shift : and_return
    # string_io_mock = instance_double(StringIO)
    # # Make StringIO to receive anything and call original method
    # allow(StringIO).to(receive(:new)).and_return(string_io_mock)
    # allow(string_io_mock).to(receive(:write)).and_call_original
    # allow(string_io_mock).to(receive(:gets)).and_return(and_return_value)
    # allow(string_io_mock).to(receive(:string)).and_return(and_return_value)
    # allow(string_io_mock).to(receive(:string=)).and_return(and_return_value)
    return
    and_return_value = and_return.is_a?(Array) ? and_return.shift : and_return
    StringIO.new.tap do |string_io_mock|
      allow(StringIO).to(receive(:new)).and_return(string_io_mock)
      allow(string_io_mock).to(receive(:gets)).and_return(and_return_value)
      allow(string_io_mock).to(receive(:string)).and_return(and_return_value)
      allow(string_io_mock).to(receive(:string=)).and_return(and_return_value)
    end
  end
end
