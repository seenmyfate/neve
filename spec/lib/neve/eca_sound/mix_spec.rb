require 'spec_helper'

module Neve
  module ECAsound
    describe Mix do
      let(:mix) { ECASound::Mix.new(directory, configuration) }
      let(:directory) { 'spec/support/my_awesome_tune' }
      let(:configuration) { YAML.load_file('spec/support/my_awesome_tune.yml') }

      describe '.new' do
        it 'takes the type, configuration' do
          expect(mix)
        end
      end

      describe '#to_s' do
        let(:ecasound_command) {
          'ecasound ' \
          '-a:1 -i spec/support/my_awesome_tune/bass.wav -ea:33 -epp:25 ' \
          '-a:2 -i spec/support/my_awesome_tune/drums.wav -ea:33 -epp:50 ' \
          '-a:3 -i spec/support/my_awesome_tune/guitar.wav -ea:33 -epp:75 ' \
          '-a:1,2,3 -o spec/support/my_awesome_tune.wav'
        }

        it 'returns the ecasound string' do
          expect(mix.to_s).to eq ecasound_command
        end
      end

    end
  end
end
