require 'spec_helper'

describe Backlight do
  it 'has a version number' do
    expect(Backlight::VERSION).not_to be nil
  end

  it 'has a static home page' do
    get '/'
    expect(last_response).to be_ok
  end

  it 'responds with json' do
    get '/json?junkyfakeparams'
    expect(last_response).to be_ok
    expect(last_response).to be_json
  end

  it 'responds with xml' do
    get '/xml?junkfakeparams'
    expect(last_response).to be_ok
    expect(Nokogiri::XML(last_response.body)).to be_xml
  end
end
