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
require 'date'

# Unit tests for PhoneComClient::Member
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Member' do
  before do
    # run before each test
    @instance = PhoneComClient::Member.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Member' do
    it 'should create an instance of Member' do
      expect(@instance).to be_instance_of(PhoneComClient::Member)
    end
  end
  describe 'test attribute "extension"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "phone_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
