require 'neve/runs'
require 'neve/loads_yaml'
require 'neve/eca_sound/mix'

module Neve
  class Mix
    include Runs
    include LoadsYaml

    def initialize(filename)
      @filename = filename
    end

    def file
      "#{@filename}.yml"
    end

    def command
      ECASound::Mix.new(@filename, configuration).to_s
    end

  end
end
