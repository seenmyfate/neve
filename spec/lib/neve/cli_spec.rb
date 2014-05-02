require 'spec_helper'

module Neve

  describe CLI do
    let(:mix) { double }
    let(:filename) { double }

    describe '#mix' do
      it 'runs a new Mix instance' do
        expect(Mix).to receive(:new).with(filename).and_return(mix)
        expect(mix).to receive(:run)

        CLI.new.mix(filename)
      end
    end
  end

end
