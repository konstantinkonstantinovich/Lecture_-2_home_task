# frozen_string_literal: true

require_relative './env'
require_relative './generator'
require_relative './data_structures'
require "tty-prompt"

prompt = TTY::Prompt.new

count = prompt.ask("How many files create")
for i in (0...count.to_i)
  path = prompt.ask("Input generated file destination path")

  format = prompt.select("What format to generate?", %w(html md))


  gen = Generator.new do
    header 'Hello title'
    text 'Some text'
    section 'Section Title', 'Section Text'
    link 'Link text', 'http://url.com'
    image 'alt text', 'https://raw.githubusercontent.com/adam-p/markdown-here/master/src/common/images/icon48.png'
  end

  gen.generate(path, format)
end
# gen.generate('build/README', :html)
