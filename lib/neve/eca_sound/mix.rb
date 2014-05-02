require 'neve/eca_sound/track'
module Neve
  module ECASound
    class Mix

      def initialize(directory, configuration)
        @directory, @configuration = directory, configuration
      end

      def to_s
        [
          ecasound,
          mix,
          output
        ].join
      end

      private

      def ecasound
        'ecasound '
      end

      def mix
        tracks.each_with_index.inject('') do |string, (track, i)|
          string << "-a:#{i+1} -i #{track} "
        end
      end

      def output
        "-a:#{track_list} -o #{@directory}.wav"
      end

      def track_list
        (1..tracks.size).to_a.join(',')
      end

      def tracks
        @tracks ||= @configuration.map do |track, options|
          Track.new(@directory, track, options)
        end
      end

    end
  end
end
