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

# Unit tests for PhoneComClient::OauthClientsRedirectUrisApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OauthClientsRedirectUrisApi' do
  before do
    # run before each test
    @instance = PhoneComClient::OauthClientsRedirectUrisApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OauthClientsRedirectUrisApi' do
    it 'should create an instance of OauthClientsRedirectUrisApi' do
      expect(@instance).to be_instance_of(PhoneComClient::OauthClientsRedirectUrisApi)
    end
  end

  # unit tests for create_account_oauth_clients_redirect_uri
  # Create an OAuth Client Redirect URI record.
  # Create an OAuth Client Redirect URI record.
  # @param account_id Account ID
  # @param client_id Client ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateRedirectUriParams] :data Redirect Uri data
  # @return [OauthClientRedirectUriFull]
  describe 'create_account_oauth_clients_redirect_uri test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_account_oauth_clients_redirect_uri
  # Delete an OAuth Client Redirect URI record.
  # Delete an OAuth Client Redirect URI record.
  # @param account_id Account ID
  # @param client_id Client ID
  # @param uri_id Redirect URI ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteEntry]
  describe 'delete_account_oauth_clients_redirect_uri test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_oauth_clients_redirect_uri
  # Get details of an OAuth Client Redirect URI record.
  # Get details of an OAuth Client Redirect URI record.
  # @param account_id Account ID
  # @param client_id Client ID
  # @param uri_id Redirect URI ID
  # @param [Hash] opts the optional parameters
  # @return [OauthClientRedirectUriFull]
  describe 'get_account_oauth_clients_redirect_uri test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_account_oauth_clients_redirect_uris
  # Get a list of OAuth Client Redirect URIs for an account.
  # Get a list of OAuth Client Redirect URIs for an account.
  # @param account_id Account ID
  # @param client_id Client ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters_id ID filter
  # @option opts [String] :sort_id ID sorting
  # @option opts [Integer] :limit Max results
  # @option opts [Integer] :offset Results to skip
  # @option opts [String] :fields Field set
  # @return [ListOauthClientsRedirectUris]
  describe 'list_account_oauth_clients_redirect_uris test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
