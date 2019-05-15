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

# Unit tests for PhoneComClient::PaymentMethodsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentMethodsApi' do
  before do
    # run before each test
    @instance = PhoneComClient::PaymentMethodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentMethodsApi' do
    it 'should create an instance of PaymentMethodsApi' do
      expect(@instance).to be_instance_of(PhoneComClient::PaymentMethodsApi)
    end
  end

  # unit tests for create_account_payment_method
  # Create an individual payment method.
  # Create an individual payment method. See Account Payment Methods for more info on the properties.
  # @param account_id Account ID
  # @param data Payment data
  # @param [Hash] opts the optional parameters
  # @return [PaymentFull]
  describe 'create_account_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_account_payment_method
  # Delete an individual payment method.
  # Delete an individual payment method. See Account Payment Methods for more info on the properties.
  # @param account_id Account ID
  # @param pm_id Payment Method ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteEntry]
  describe 'delete_account_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_payment_method
  # Show details of an individual payment method.
  # Show details of an individual payment method. See Account Payment Methods for more info on the properties.
  # @param account_id Account ID
  # @param pm_id Payment Method ID
  # @param [Hash] opts the optional parameters
  # @return [PaymentFull]
  describe 'get_account_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_payment_methods
  # Get a list of payment methods for an account.
  # Get a list of payment methods for an account. See Account Payment Methods for more info on the properties.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_id ID filter
  # @option opts [String] :sort_id ID sorting
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListPaymentMethods]
  describe 'list_account_payment_methods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_account_payment_method
  # Replace the status of an individual payment method.
  # Replace the status of an individual payment method. See Account Payment Methods for more info on the properties.
  # @param account_id Account ID
  # @param pm_id Payment Method ID
  # @param [Hash] opts the optional parameters
  # @option opts [PatchPaymentParams] :data Payment data
  # @return [PaymentFull]
  describe 'patch_account_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
