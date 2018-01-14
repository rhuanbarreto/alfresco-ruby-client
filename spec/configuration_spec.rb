=begin
#Alfresco Content Services REST API

#**Search API** Provides access to the search features of Alfresco Content Services.

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'

describe Alfresco::Configuration do
  let(:config) { Alfresco::Configuration.default }

  before(:each) do
    require 'URI'
    uri = URI.parse("http://localhost:8080/alfresco/api/-default-/public/search/versions/1")
    Alfresco.configure do |c|
      c.host = uri.host
      c.base_path = uri.path
    end
  end

  describe '#base_url' do
    it 'should have the default value' do
      expect(config.base_url).to eq("http://localhost:8080/alfresco/api/-default-/public/search/versions/1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        expect(config.base_url).to eq("http://localhost:8080/alfresco/api/-default-/public/search/versions/1")
      end
    end
  end
end
