=begin
#Phone.com API

#This is a Phone.com api PhoneCom definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
PhoneCom Codegen version: 2.4.4

=end

require 'spec_helper'
require 'json'

# Unit tests for PhoneComClient::DevicesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DevicesApi' do
  before do
    # run before each test
    @instance = PhoneComClient::DevicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DevicesApi' do
    it 'should create an instance of DevicesApi' do
      expect(@instance).to be_instance_of(PhoneComClient::DevicesApi)
    end
  end

  # unit tests for create_account_device
  # Register a generic VoIP device.
  # Register a generic VoIP device. See Devices for more detail.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateDeviceParams] :data Device data
  # @return [DeviceFull]
  describe 'create_account_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_account_device
  # Delete a VoIP device.
  # Delete a VoIP device. See Devices for more detail.
  # @param account_id Account ID
  # @param device_id Device ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteEntry]
  describe 'delete_account_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_device
  # Show details of an individual VoIP device.
  # Show details of an individual VoIP device. See Devices for more detail.
  # @param account_id Account ID
  # @param device_id Device ID
  # @param [Hash] opts the optional parameters
  # @return [DeviceFull]
  describe 'get_account_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_devices
  # Get a list of VoIP devices associated with your account.
  # Get a list of VoIP devices associated with your account. See Devices for more detail.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_id ID filter
  # @option opts [Array<String>] :filters_name Name filter
  # @option opts [String] :sort_id ID sorting
  # @option opts [String] :sort_name Name sorting
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListDevices]
  describe 'list_account_devices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_account_device
  # Update the details of an individual VoIP device.
  # Update the details of an individual VoIP device. See Devices for more detail.
  # @param account_id Account ID
  # @param device_id Device ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateDeviceParams] :data Device data
  # @return [DeviceFull]
  describe 'replace_account_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
