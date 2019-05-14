# SwaggerClient::SmsApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_account_sms**](SmsApi.md#create_account_sms) | **POST** /accounts/{account_id}/sms | Send a SMS to one or a group of recipients.
[**get_account_sms**](SmsApi.md#get_account_sms) | **GET** /accounts/{account_id}/sms/{sms_id} | This service shows the details of an individual SMS.
[**list_account_sms**](SmsApi.md#list_account_sms) | **GET** /accounts/{account_id}/sms | Get a list of SMS messages for an account.
[**patch_account_sms**](SmsApi.md#patch_account_sms) | **PATCH** /accounts/{account_id}/sms/{sms_id} | Update the is_new parameter in a sms record.


# **create_account_sms**
> SmsFull create_account_sms(account_id, data)

Send a SMS to one or a group of recipients.

Send a SMS to one or a group of recipients. For details on the input fields, see Intro to SMS. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Create SMS API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::SmsApi.new

account_id = 56 # Integer | Account ID

data = SwaggerClient::CreateSmsParams.new # CreateSmsParams | SMS data


begin
  #Send a SMS to one or a group of recipients.
  result = api_instance.create_account_sms(account_id, data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SmsApi->create_account_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **data** | [**CreateSmsParams**](CreateSmsParams.md)| SMS data | 

### Return type

[**SmsFull**](SmsFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_sms**
> SmsFull get_account_sms(account_id, sms_id)

This service shows the details of an individual SMS.

This service shows the details of an individual SMS. See Intro to SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Get SMS API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms/:sms_id

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::SmsApi.new

account_id = 56 # Integer | Account ID

sms_id = 'sms_id_example' # String | SMS ID


begin
  #This service shows the details of an individual SMS.
  result = api_instance.get_account_sms(account_id, sms_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SmsApi->get_account_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **sms_id** | **String**| SMS ID | 

### Return type

[**SmsFull**](SmsFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_account_sms**
> ListSms list_account_sms(account_id, , opts)

Get a list of SMS messages for an account.

Get a list of SMS messages for an account. See Intro to SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List SMS API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::SmsApi.new

account_id = 56 # Integer | Account ID

opts = { 
  filters_id: ['filters_id_example'], # Array<String> | ID filter
  filters_from: 'filters_from_example', # String | Caller ID filter
  filters_to: 'filters_to_example', # String | Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B
  filters_direction: 'filters_direction_example', # String | Direction filter
  filters_extension: ['filters_extension_example'], # Array<String> | Extension filter
  filters_created_at: 'filters_created_at_example', # String | Date string representing the UTC time that sms was created
  sort_id: 'sort_id_example', # String | ID sorting
  sort_created_at: 'sort_created_at_example', # String | Sort by created time of message
  limit: 56, # Integer | Max results
  offset: 56, # Integer | Results to skip
  fields: 'fields_example', # String | Field set
}

begin
  #Get a list of SMS messages for an account.
  result = api_instance.list_account_sms(account_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SmsApi->list_account_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **filters_id** | [**Array&lt;String&gt;**](String.md)| ID filter | [optional] 
 **filters_from** | **String**| Caller ID filter | [optional] 
 **filters_to** | **String**| Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B | [optional] 
 **filters_direction** | **String**| Direction filter | [optional] 
 **filters_extension** | [**Array&lt;String&gt;**](String.md)| Extension filter | [optional] 
 **filters_created_at** | **String**| Date string representing the UTC time that sms was created | [optional] 
 **sort_id** | **String**| ID sorting | [optional] 
 **sort_created_at** | **String**| Sort by created time of message | [optional] 
 **limit** | **Integer**| Max results | [optional] 
 **offset** | **Integer**| Results to skip | [optional] 
 **fields** | **String**| Field set | [optional] 

### Return type

[**ListSms**](ListSms.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_account_sms**
> SmsFull patch_account_sms(account_id, sms_id, opts)

Update the is_new parameter in a sms record.

Update the is_new parameter in a sms record. See Account SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Patch SMS API with the following definition: PATCH https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms/:sms_id

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::SmsApi.new

account_id = 56 # Integer | Account ID

sms_id = 'sms_id_example' # String | SMS ID

opts = { 
  data: SwaggerClient::PatchSmsParams.new # PatchSmsParams | Sms data
}

begin
  #Update the is_new parameter in a sms record.
  result = api_instance.patch_account_sms(account_id, sms_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SmsApi->patch_account_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **sms_id** | **String**| SMS ID | 
 **data** | [**PatchSmsParams**](PatchSmsParams.md)| Sms data | [optional] 

### Return type

[**SmsFull**](SmsFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



