require 'yaml'
module Neve
  module LoadsYaml

    def configuration
      @configuration ||= YAML.load_file(file)
    end

  end
end
