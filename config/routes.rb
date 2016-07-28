  module Backlight
  class Routes < Sinatra::Application

    get '/' do
      @changelog = Backlight::Data.changelog
      haml :index
    end

    get '/json?:fakeparams' do
      content_type :json
      Backlight::Data.json
    end

    get '/xml?:fakeparams' do
      content_type 'text/xml'
      Backlight::Data.xml
    end

  end
end
