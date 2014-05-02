require 'thor'
require 'neve/mix'

module Neve
  class CLI < Thor

    desc 'mix FILENAME', 'mixes the tracks specified in FILENAME'
    def mix(filename)
      Mix.new(filename).run
    end

  end
end
