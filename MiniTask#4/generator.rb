# frozen_string_literal: true
require 'fileutils'
require_relative './generator_dsl'
require_relative './generators/md'
require_relative './generators/html'

class Generator
  def initialize(&block)
    @dsl = GeneratorDsl.new
    @dsl.instance_eval(&block)
  end

  def generate(path, format)
    class_name = "Generator#{format.capitalize}"
    klass = Object.const_get(class_name)
    generator = klass.new(@dsl.lines)

    path_array = path.split('/')
    if path_array[0] != 'README'
      FileUtils.mkdir_p(path_array[0])
      File.new("#{path}.#{format}", "w+") << generator.to_s
    else
        File.open("#{path}.#{format}", "w+") << generator.to_s
    end


  end
end
