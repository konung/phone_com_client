# SwaggerClient::ListenersApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_account_listener**](ListenersApi.md#create_account_listener) | **POST** /accounts/{account_id}/listeners | Add a listener object to your account that can be used to subscribe an event.
[**delete_account_listener**](ListenersApi.md#delete_account_listener) | **DELETE** /accounts/{account_id}/listeners/{listener_id} | Delete an individual event listener.
[**get_account_listener**](ListenersApi.md#get_account_listener) | **GET** /accounts/{account_id}/listeners/{listener_id} | Show details of an individual listener.
[**list_account_listeners**](ListenersApi.md#list_account_listeners) | **GET** /accounts/{account_id}/listeners | Get a list of listeners for an account.
[**replace_account_listener**](ListenersApi.md#replace_account_listener) | **PUT** /accounts/{account_id}/listeners/{listener_id} | Update the settings of an individual event listener.


# **create_account_listener**
> ListenerFull create_account_listener(account_id, , opts)

Add a listener object to your account that can be used to subscribe an event.

Add a listener object to your account that can be used to subscribe an event. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Post Listener API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners

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

api_instance = SwaggerClient::ListenersApi.new

account_id = 56 # Integer | Account ID

opts = { 
  data: SwaggerClient::CreateListenerParams.new # CreateListenerParams | Account Listeners Data
}

begin
  #Add a listener object to your account that can be used to subscribe an event.
  result = api_instance.create_account_listener(account_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ListenersApi->create_account_listener: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **data** | [**CreateListenerParams**](CreateListenerParams.md)| Account Listeners Data | [optional] 

### Return type

[**ListenerFull**](ListenerFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_account_listener**
> DeleteEntry delete_account_listener(account_id, listener_id)

Delete an individual event listener.

Delete an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Delete Listener API with the following definition: DELETE https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id

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

api_instance = SwaggerClient::ListenersApi.new

account_id = 56 # Integer | Account ID

listener_id = 56 # Integer | Listener ID


begin
  #Delete an individual event listener.
  result = api_instance.delete_account_listener(account_id, listener_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ListenersApi->delete_account_listener: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **listener_id** | **Integer**| Listener ID | 

### Return type

[**DeleteEntry**](DeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_listener**
> ListenerFull get_account_listener(account_id, listener_id)

Show details of an individual listener.

Show details of an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Get Listener API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id

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

api_instance = SwaggerClient::ListenersApi.new

account_id = 56 # Integer | Account ID

listener_id = 56 # Integer | Listener ID


begin
  #Show details of an individual listener.
  result = api_instance.get_account_listener(account_id, listener_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ListenersApi->get_account_listener: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **listener_id** | **Integer**| Listener ID | 

### Return type

[**ListenerFull**](ListenerFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_account_listeners**
> ListListeners list_account_listeners(account_id, , opts)

Get a list of listeners for an account.

Get a list of listeners for an account. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List Listeners API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners

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

api_instance = SwaggerClient::ListenersApi.new

account_id = 56 # Integer | Account ID

opts = { 
  filters_id: ['filters_id_example'], # Array<String> | ID filter
  sort_id: 'sort_id_example', # String | ID sorting
  limit: 56, # Integer | Max results
  offset: 56, # Integer | Results to skip
  fields: 'fields_example', # String | Field set
}

begin
  #Get a list of listeners for an account.
  result = api_instance.list_account_listeners(account_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ListenersApi->list_account_listeners: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **filters_id** | [**Array&lt;String&gt;**](String.md)| ID filter | [optional] 
 **sort_id** | **String**| ID sorting | [optional] 
 **limit** | **Integer**| Max results | [optional] 
 **offset** | **Integer**| Results to skip | [optional] 
 **fields** | **String**| Field set | [optional] 

### Return type

[**ListListeners**](ListListeners.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **replace_account_listener**
> ListenerFull replace_account_listener(account_id, listener_id, opts)

Update the settings of an individual event listener.

Update the settings of an individual event listener. See Event Listeners for more detail. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Replace Listener API with the following definition: PUT https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id

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

api_instance = SwaggerClient::ListenersApi.new

account_id = 56 # Integer | Account ID

listener_id = 56 # Integer | Listener ID

opts = { 
  data: SwaggerClient::CreateListenerParams.new # CreateListenerParams | Account Listeners Data
}

begin
  #Update the settings of an individual event listener.
  result = api_instance.replace_account_listener(account_id, listener_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ListenersApi->replace_account_listener: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **listener_id** | **Integer**| Listener ID | 
 **data** | [**CreateListenerParams**](CreateListenerParams.md)| Account Listeners Data | [optional] 

### Return type

[**ListenerFull**](ListenerFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



