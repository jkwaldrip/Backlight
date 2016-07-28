$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rspec'
require 'backlight'
require 'rack/test'
require 'rack/test/json'

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    Backlight::App
  end
end
