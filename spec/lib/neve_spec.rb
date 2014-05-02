require 'spec_helper'
require 'fileutils'

module Neve

  describe 'README example' do
    let(:mix) { 'spec/support/mix.wav' }
    let(:my_awesome_tune) { 'spec/support/my_awesome_tune.wav' }

    before do
      `./bin/neve mix spec/support/my_awesome_tune`
    end

    it 'bounces the mix' do
      expect(FileUtils.compare_file(mix, my_awesome_tune)).to be_true
    end

    after do
      FileUtils.remove(my_awesome_tune)
    end
  end

end
