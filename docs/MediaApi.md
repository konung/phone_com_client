# SwaggerClient::MediaApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_account_media_files**](MediaApi.md#create_account_media_files) | **POST** /accounts/{account_id}/media/files | Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)
[**create_account_media_tts**](MediaApi.md#create_account_media_tts) | **POST** /accounts/{account_id}/media/tts | Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)
[**delete_account_media**](MediaApi.md#delete_account_media) | **DELETE** /accounts/{account_id}/media/{media_id} | Delete an individual media record
[**get_account_media**](MediaApi.md#get_account_media) | **GET** /accounts/{account_id}/media/{media_id} | Show details of an individual media recording (Greeting or Hold Music)
[**list_account_media**](MediaApi.md#list_account_media) | **GET** /accounts/{account_id}/media | Get a list of media recordings for an account.
[**replace_account_media_files**](MediaApi.md#replace_account_media_files) | **PUT** /accounts/{account_id}/media/files/{media_id} | Update a media object to your account. Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB.
[**replace_account_media_tts**](MediaApi.md#replace_account_media_tts) | **PUT** /accounts/{account_id}/media/tts/{media_id} | Update a media object to your account.


# **create_account_media_files**
> MediaFull create_account_media_files(account_id, , opts)

Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)

See Account Media for more info on the properties.

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

api_instance = SwaggerClient::MediaApi.new

account_id = 56 # Integer | Account ID

opts = { 
  json: 'json_example', # String | Media extra parameters
  file: File.new('/path/to/file.txt') # File | Media file
}

begin
  #Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)
  result = api_instance.create_account_media_files(account_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaApi->create_account_media_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **json** | **String**| Media extra parameters | [optional] 
 **file** | **File**| Media file | [optional] 

### Return type

[**MediaFull**](MediaFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_account_media_tts**
> MediaFull create_account_media_tts(account_id, , opts)

Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)

See Account Media for more info on the properties.

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

api_instance = SwaggerClient::MediaApi.new

account_id = 56 # Integer | Account ID

opts = { 
  data: SwaggerClient::CreateMediaParams.new # CreateMediaParams | Media data
}

begin
  #Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)
  result = api_instance.create_account_media_tts(account_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaApi->create_account_media_tts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **data** | [**CreateMediaParams**](CreateMediaParams.md)| Media data | [optional] 

### Return type

[**MediaFull**](MediaFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_account_media**
> DeleteEntry delete_account_media(account_id, media_id)

Delete an individual media record

See Account Media for more info on the properties.

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

api_instance = SwaggerClient::MediaApi.new

account_id = 56 # Integer | Account ID

media_id = 56 # Integer | Media ID


begin
  #Delete an individual media record
  result = api_instance.delete_account_media(account_id, media_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaApi->delete_account_media: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **media_id** | **Integer**| Media ID | 

### Return type

[**DeleteEntry**](DeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_media**
> MediaFull get_account_media(account_id, media_id)

Show details of an individual media recording (Greeting or Hold Music)

Get individual media recording

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

api_instance = SwaggerClient::MediaApi.new

account_id = 56 # Integer | Account ID

media_id = 56 # Integer | Media ID


begin
  #Show details of an individual media recording (Greeting or Hold Music)
  result = api_instance.get_account_media(account_id, media_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaApi->get_account_media: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **media_id** | **Integer**| Media ID | 

### Return type

[**MediaFull**](MediaFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_account_media**
> ListMedia list_account_media(account_id, , opts)

Get a list of media recordings for an account.

Get a list of media recordings for an account. See Account Media for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List Media API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/media

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

api_instance = SwaggerClient::MediaApi.new

account_id = 56 # Integer | Account ID

opts = { 
  filters_id: ['filters_id_example'], # Array<String> | ID filter
  filters_name: ['filters_name_example'], # Array<String> | Name filter
  sort_id: 'sort_id_example', # String | ID sorting
  sort_name: 'sort_name_example', # String | Name sorting
  limit: 56, # Integer | Max results
  offset: 56, # Integer | Results to skip
  fields: 'fields_example', # String | Field set
}

begin
  #Get a list of media recordings for an account.
  result = api_instance.list_account_media(account_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaApi->list_account_media: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **filters_id** | [**Array&lt;String&gt;**](String.md)| ID filter | [optional] 
 **filters_name** | [**Array&lt;String&gt;**](String.md)| Name filter | [optional] 
 **sort_id** | **String**| ID sorting | [optional] 
 **sort_name** | **String**| Name sorting | [optional] 
 **limit** | **Integer**| Max results | [optional] 
 **offset** | **Integer**| Results to skip | [optional] 
 **fields** | **String**| Field set | [optional] 

### Return type

[**ListMedia**](ListMedia.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **replace_account_media_files**
> MediaFull replace_account_media_files(account_id, media_id, opts)

Update a media object to your account. Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB.

See Account Media for more info on the properties.

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

api_instance = SwaggerClient::MediaApi.new

account_id = 56 # Integer | Account ID

media_id = 56 # Integer | Media ID

opts = { 
  json: 'json_example', # String | Media extra parameters
  file: File.new('/path/to/file.txt') # File | Media file
}

begin
  #Update a media object to your account. Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB.
  result = api_instance.replace_account_media_files(account_id, media_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaApi->replace_account_media_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **media_id** | **Integer**| Media ID | 
 **json** | **String**| Media extra parameters | [optional] 
 **file** | **File**| Media file | [optional] 

### Return type

[**MediaFull**](MediaFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **replace_account_media_tts**
> MediaFull replace_account_media_tts(account_id, media_id, opts)

Update a media object to your account.

Update a media object to your account. Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB. See Account Media for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Replace Media API with the following definition: PUT https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/media/:media_id

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

api_instance = SwaggerClient::MediaApi.new

account_id = 56 # Integer | Account ID

media_id = 56 # Integer | Media ID

opts = { 
  data: SwaggerClient::CreateMediaParams.new # CreateMediaParams | Media data
}

begin
  #Update a media object to your account.
  result = api_instance.replace_account_media_tts(account_id, media_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaApi->replace_account_media_tts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **media_id** | **Integer**| Media ID | 
 **data** | [**CreateMediaParams**](CreateMediaParams.md)| Media data | [optional] 

### Return type

[**MediaFull**](MediaFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



