=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CallsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CallsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CallsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallsApi' do
    it 'should create an instance of CallsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CallsApi)
    end
  end

  # unit tests for create_account_call
  # Make a phone call
  # Make a phone call. See Calls for more details and how to setup caller id&#39;s. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Calls API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/calls
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateCallParams] :data Call data
  # @return [CallFull]
  describe 'create_account_call test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
