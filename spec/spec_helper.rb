if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

require 'neve'

RSpec.configure do |config|
  config.order = 'random'
end
