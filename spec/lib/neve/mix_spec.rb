require 'spec_helper'

module Neve

  describe Mix do
    let(:mix) { Mix.new(filename) }
    let(:filename) { 'spec/support/my_awesome_tune' }

    describe '.new' do
      it 'takes a filename' do
        expect(mix)
      end
    end

    describe '#file' do
      it 'returns the name of the yaml file' do
        expect(mix.file).to eq 'spec/support/my_awesome_tune.yml'
      end
    end

    describe '#command' do
      let(:command) { double }
      let(:configuration) { double }

      it 'returns a command object' do
        expect(mix).to receive(:configuration).and_return(configuration)
        expect(ECASound::Mix).to receive(:new).
          with('spec/support/my_awesome_tune', configuration).
          and_return(command)
        expect(mix.command).to eq command.to_s
      end
    end

  end

end
