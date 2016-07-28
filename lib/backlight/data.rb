module Backlight
  class Data
    def self.changelog
      YAML.load_file('data/local/changelog.yml')
    end

    def self.json
      File.open('data/json/example.json') { |file| JSON.parse(file.read).to_json}
    end

    def self.xml
      File.open('data/xml/example.xml') { |file| Nokogiri::XML(file.read).to_xml }
    end
  end
end
