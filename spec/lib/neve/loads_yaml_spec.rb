require 'spec_helper'

module Neve

  class ParsingExample
    include LoadsYaml

    def file
      'spec/support/my_awesome_tune.yml'
    end
  end

  describe '#configuration' do
    let(:configuration) { double }

    it 'returns the parsed yaml' do
      expect(YAML).to receive(:load_file).with('spec/support/my_awesome_tune.yml').
        and_return(configuration)
      expect(ParsingExample.new.configuration).to eq configuration
    end
  end

end
