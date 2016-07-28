dirs  = [File.expand_path('../../lib',__FILE__),
  File.expand_path('../../config',__FILE__),
  File.expand_path('../../data',__FILE__)]
dirs.each {|dir| $:.unshift(dir) unless $:.include?(dir)}

require 'backlight/version'
require 'sinatra'

require 'haml'
require 'json'
require 'nokogiri'
require 'yaml'
require 'backlight/data'

module Backlight
  class App < Sinatra::Application

    configure do
      # Enable a static homepage
      enable :static

      set :root, File.expand_path("#{File.dirname(__FILE__)}/../")
    end

    require 'routes'

    use Backlight::Routes

  end
end
