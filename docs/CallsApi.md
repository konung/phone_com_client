# PhoneComClient::CallsApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_account_call**](CallsApi.md#create_account_call) | **POST** /accounts/{account_id}/calls | Make a phone call


# **create_account_call**
> CallFull create_account_call(account_id, , opts)

Make a phone call

Make a phone call. See Calls for more details and how to setup caller id's. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Calls API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/calls

### Example
```ruby
# load the gem
require 'phone_com_client'
# setup authorization
PhoneComClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PhoneComClient::CallsApi.new

account_id = 56 # Integer | Account ID

opts = {
  data: PhoneComClient::CreateCallParams.new # CreateCallParams | Call data
}

begin
  #Make a phone call
  result = api_instance.create_account_call(account_id, , opts)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling CallsApi->create_account_call: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **data** | [**CreateCallParams**](CreateCallParams.md)| Call data | [optional]

### Return type

[**CallFull**](CallFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



