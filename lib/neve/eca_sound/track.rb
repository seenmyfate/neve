require 'pathname'
module Neve
  module ECASound
    class Track

      def initialize(directory, name, options)
        @directory, @name, @options = directory, name, options
      end

      def to_s
        [
          filename,
          mix,
          pan
        ].join(' ')
      end

      private

      def filename
        Pathname.new(@directory).join("#{@name}.wav")
      end

      def mix
        "-ea:#{@options.fetch('fader', 100)}"
      end

      def pan
        "-epp:#{@options.fetch('pan', 50)}"
      end

    end
  end
end
