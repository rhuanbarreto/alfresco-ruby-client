=begin
#Alfresco Content Services REST API

#**Search API** Provides access to the search features of Alfresco Content Services. 

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Alfresco::RequestFields
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RequestFields' do
  before do
    # run before each test
    @instance = Alfresco::RequestFields.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RequestFields' do
    it 'should create an instance of RequestFields' do
      expect(@instance).to be_instance_of(Alfresco::RequestFields)
    end
  end
end

