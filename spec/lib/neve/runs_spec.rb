require 'spec_helper'

module Neve

  class RunningExample
    include Runs

    def command
      'ls'
    end

  end

  describe '#run' do
    let(:command) { 'ls' }
    let(:output) { double }
    let(:status) { double(:status, success?: success) }
    let(:success) { true }

    subject { RunningExample.new.run }

    it 'runs the command with `capture2`' do
      expect(Open3).to receive(:capture2).with(command).
        and_return([output, status])

      subject
    end

    context 'where the command is unsuccessful' do
      let(:success) { false }

      it 'fails with an error' do
        expect(Open3).to receive(:capture2).with(command).
          and_return([output, status])

        expect { subject }.to raise_error Neve::Error
      end
    end

  end
end
