require 'spec_helper'

module Neve
  module ECASound

    describe Track do
      let(:track) { Track.new(directory, name, options) }
      let(:directory) { 'spec/support/my_awesome_tune' }
      let(:name) { 'guitar' }
      let(:options) { YAML.load_file('spec/support/my_awesome_tune.yml')['guitar'] }

      describe '.new' do
        it 'takes a filename, options' do
          expect(track)
        end
      end

      describe '#to_s' do
        let(:mix_string) { 'spec/support/my_awesome_tune/guitar.wav -ea:33 -epp:75' }

        it 'returns the mix string' do
          expect(track.to_s).to eq mix_string
        end
      end
    end

  end
end
