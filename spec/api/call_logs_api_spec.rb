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

# Unit tests for SwaggerClient::CallLogsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CallLogsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CallLogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallLogsApi' do
    it 'should create an instance of CallLogsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CallLogsApi)
    end
  end

  # unit tests for get_account_call_logs
  # Show details of an individual Call Log entry
  # Show details of an individual Call Log entry. See Call Logs for more detail.
  # @param account_id Account ID
  # @param call_id Call ID
  # @param [Hash] opts the optional parameters
  # @return [CallLogFull]
  describe 'get_account_call_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_call_logs
  # Get a list of call details associated with your account
  # Get a list of call details associated with your account. See Call Logs for more detail.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_id ID filter
  # @option opts [Array<String>] :filters_start_time Call start time filter
  # @option opts [String] :filters_created_at Call log creation time filter
  # @option opts [String] :filters_direction Call direction filter: in or out
  # @option opts [String] :filters_called_number Called number
  # @option opts [String] :filters_type Call type, such as &#39;call&#39;, &#39;fax&#39;, &#39;audiogram&#39;
  # @option opts [Array<String>] :filters_extension Extension filter
  # @option opts [String] :sort_id ID sorting
  # @option opts [String] :sort_start_time Sorting by call start time: asc or desc
  # @option opts [String] :sort_created_at Sorting by call log creation time: asc or desc
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListCallLogs]
  describe 'list_account_call_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
