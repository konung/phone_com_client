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

# Unit tests for SwaggerClient::GroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GroupsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::GroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupsApi' do
    it 'should create an instance of GroupsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::GroupsApi)
    end
  end

  # unit tests for create_account_extension_contact_group
  # Add a new contact group to an account extension.
  # Add a new contact group to an account extension. See Account Contact Groups for details on the properties.
  # @param account_id Account ID
  # @param extension_id Extension ID
  # @param data Group data
  # @param [Hash] opts the optional parameters
  # @return [GroupFull]
  describe 'create_account_extension_contact_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_account_extension_contact_group
  # Delete a contact group from the address book.
  # Delete a contact group from the address book. See Account Contact Groups for details on the properties.
  # @param account_id Account ID
  # @param extension_id Extension ID
  # @param group_id Group ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteEntry]
  describe 'delete_account_extension_contact_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_extension_contact_group
  # Retrieve the information of a contact group.
  # Retrieve the information of a contact group. See Account Contact Groups for details on the properties.
  # @param account_id Account ID
  # @param extension_id Extension ID
  # @param group_id Group ID
  # @param [Hash] opts the optional parameters
  # @return [GroupFull]
  describe 'get_account_extension_contact_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_extension_contact_groups
  # Show a list of contact groups belonging to an extension.
  # Show a list of contact groups belonging to an extension. See Account Contact Groups for details on the properties.
  # @param account_id Account ID
  # @param extension_id Extension ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_id ID filter
  # @option opts [Array<String>] :filters_name Name filter
  # @option opts [String] :sort_id ID sorting
  # @option opts [String] :sort_name Name sorting
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListGroups]
  describe 'list_account_extension_contact_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_account_extension_contact_group
  # Update the information of a contact group.
  # Update the information of a contact group. See Account Contact Groups for details on the properties.
  # @param account_id Account ID
  # @param extension_id Extension ID
  # @param group_id Group ID
  # @param data Group data
  # @param [Hash] opts the optional parameters
  # @return [GroupFull]
  describe 'replace_account_extension_contact_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end