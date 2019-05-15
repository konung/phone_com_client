# PhoneComClient::VoicemailApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_voicemail**](VoicemailApi.md#get_account_voicemail) | **GET** /accounts/{account_id}/voicemail/{voicemail_id} | This service shows the details of an individual voicemail.
[**list_account_voicemail**](VoicemailApi.md#list_account_voicemail) | **GET** /accounts/{account_id}/voicemail | Get a list of voicemail messages for an account.
[**patch_account_voicemail**](VoicemailApi.md#patch_account_voicemail) | **PATCH** /accounts/{account_id}/voicemail/{voicemail_id} | Update the is_new parameter in a voicemail record.


# **get_account_voicemail**
> VoicemailFull get_account_voicemail(account_id, voicemail_id)

This service shows the details of an individual voicemail.

This service shows the details of an individual voicemail. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Get Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id

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

api_instance = PhoneComClient::VoicemailApi.new

account_id = 56 # Integer | Account ID

voicemail_id = 'voicemail_id_example' # String | Voicemail ID


begin
  #This service shows the details of an individual voicemail.
  result = api_instance.get_account_voicemail(account_id, voicemail_id)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling VoicemailApi->get_account_voicemail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **voicemail_id** | **String**| Voicemail ID |

### Return type

[**VoicemailFull**](VoicemailFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_account_voicemail**
> ListVoicemail list_account_voicemail(account_id, , opts)

Get a list of voicemail messages for an account.

Get a list of voicemail messages for an account. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the List Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail

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

api_instance = PhoneComClient::VoicemailApi.new

account_id = 56 # Integer | Account ID

opts = {
  filters_id: ['filters_id_example'], # Array<String> | ID filter
  filters_from: 'filters_from_example', # String | Caller ID filter
  filters_to: 'filters_to_example', # String | Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B
  filters_is_new: true, # BOOLEAN |
  filters_created_at: 'filters_created_at_example', # String | Date string representing the UTC time that sms was created
  filters_extension: ['filters_extension_example'], # Array<String> | Extension filter
  sort_id: 'sort_id_example', # String | ID sorting
  sort_created_at: 'sort_created_at_example', # String | Sort by the UTC time that voicemail was created
  limit: 56, # Integer | Max results
  offset: 56, # Integer | Results to skip
  fields: 'fields_example', # String | Field set
}

begin
  #Get a list of voicemail messages for an account.
  result = api_instance.list_account_voicemail(account_id, , opts)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling VoicemailApi->list_account_voicemail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **filters_id** | [**Array&lt;String&gt;**](String.md)| ID filter | [optional]
 **filters_from** | **String**| Caller ID filter | [optional]
 **filters_to** | **String**| Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B | [optional]
 **filters_is_new** | **BOOLEAN**|  | [optional]
 **filters_created_at** | **String**| Date string representing the UTC time that sms was created | [optional]
 **filters_extension** | [**Array&lt;String&gt;**](String.md)| Extension filter | [optional]
 **sort_id** | **String**| ID sorting | [optional]
 **sort_created_at** | **String**| Sort by the UTC time that voicemail was created | [optional]
 **limit** | **Integer**| Max results | [optional]
 **offset** | **Integer**| Results to skip | [optional]
 **fields** | **String**| Field set | [optional]

### Return type

[**ListVoicemail**](ListVoicemail.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_account_voicemail**
> VoicemailFull patch_account_voicemail(account_id, voicemail_id, opts)

Update the is_new parameter in a voicemail record.

Update the is_new parameter in a voicemail record. See Account Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Patch Voicemail API with the following definition: PATCH https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id

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

api_instance = PhoneComClient::VoicemailApi.new

account_id = 56 # Integer | Account ID

voicemail_id = 'voicemail_id_example' # String | Voicemail ID

opts = {
  data: PhoneComClient::PatchVoicemailParams.new # PatchVoicemailParams | Payment data
}

begin
  #Update the is_new parameter in a voicemail record.
  result = api_instance.patch_account_voicemail(account_id, voicemail_id, opts)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling VoicemailApi->patch_account_voicemail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **voicemail_id** | **String**| Voicemail ID |
 **data** | [**PatchVoicemailParams**](PatchVoicemailParams.md)| Payment data | [optional]

### Return type

[**VoicemailFull**](VoicemailFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



