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

# Unit tests for SwaggerClient::AvailableNumbersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AvailableNumbersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AvailableNumbersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AvailableNumbersApi' do
    it 'should create an instance of AvailableNumbersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AvailableNumbersApi)
    end
  end

  # unit tests for list_available_phone_numbers
  # 
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_phone_number Phone number filter
  # @option opts [Array<String>] :filters_country_code Country Code filter
  # @option opts [Array<String>] :filters_npa Area Code filter (North America only)
  # @option opts [Array<String>] :filters_nxx 2nd set of 3 digits filter (North America only)
  # @option opts [Array<String>] :filters_xxxx NANP XXXX filter
  # @option opts [Array<String>] :filters_city City filter
  # @option opts [Array<String>] :filters_province State or Province (postal code) filter
  # @option opts [Array<String>] :filters_country Country (postal code) filter
  # @option opts [Array<String>] :filters_price Price filter
  # @option opts [Array<String>] :filters_category Category filter
  # @option opts [String] :sort_internal Internal (quasi-random) sorting
  # @option opts [String] :sort_price Price sorting
  # @option opts [String] :sort_phone_number Phone number sorting
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListAvailableNumbers]
  describe 'list_available_phone_numbers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end