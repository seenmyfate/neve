require 'open3'

module Neve

  class Error < StandardError;end;

  module Runs

    def self.included(includer)
      includer.send(:attr_accessor, :output, :status)
      includer.send(:private, :output, :status)
    end

    def run
      self.output, self.status = Open3.capture2(command)
      fail Neve::Error.new(output) unless status.success?
    end

  end
end
