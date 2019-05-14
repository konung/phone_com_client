# SwaggerClient::OauthClientsApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_account_oauth_client**](OauthClientsApi.md#delete_account_oauth_client) | **DELETE** /accounts/{account_id}/oauth/clients/{client_id} | Delete an individual OAuth client.
[**get_account_oauth_client**](OauthClientsApi.md#get_account_oauth_client) | **GET** /accounts/{account_id}/oauth/clients/{client_id} | Show details of an individual OAuth client.
[**list_account_oauth_clients**](OauthClientsApi.md#list_account_oauth_clients) | **GET** /accounts/{account_id}/oauth/clients | Get a list of OAuth clients for an account.


# **delete_account_oauth_client**
> DeleteEntry delete_account_oauth_client(account_id, client_id, )

Delete an individual OAuth client.

Delete an individual OAuth client. See Account OAuth Clients for more info on the properties.

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

api_instance = SwaggerClient::OauthClientsApi.new

account_id = 56 # Integer | Account ID

client_id = 56 # Integer | Client ID


begin
  #Delete an individual OAuth client.
  result = api_instance.delete_account_oauth_client(account_id, client_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OauthClientsApi->delete_account_oauth_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **client_id** | **Integer**| Client ID | 

### Return type

[**DeleteEntry**](DeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_oauth_client**
> OauthClientFull get_account_oauth_client(account_id, client_id, )

Show details of an individual OAuth client.

Show details of an individual OAuth client. See Account OAuth Clients for more info on the properties.

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

api_instance = SwaggerClient::OauthClientsApi.new

account_id = 56 # Integer | Account ID

client_id = 56 # Integer | Client ID


begin
  #Show details of an individual OAuth client.
  result = api_instance.get_account_oauth_client(account_id, client_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OauthClientsApi->get_account_oauth_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID | 
 **client_id** | **Integer**| Client ID | 

### Return type

[**OauthClientFull**](OauthClientFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_account_oauth_clients**
> ListOauthClients list_account_oauth_clients(account_id, , opts)

Get a list of OAuth clients for an account.

Get a list of OAuth clients for an account. See Account OAuth Clients for more info on the properties.

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

api_instance = SwaggerClient::OauthClientsApi.new

account_id = 56 # Integer | Account ID

opts = { 
  filters_id: ['filters_id_example'], # Array<String> | ID filter
  sort_id: 'sort_id_example', # String | ID sorting
  limit: 56, # Integer | Max results
  offset: 56, # Integer | Results to skip
  fields: 'fields_example', # String | Field set
}

begin
  #Get a list of OAuth clients for an account.
  result = api_instance.list_account_oauth_clients(account_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OauthClientsApi->list_account_oauth_clients: #{e}"
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

[**ListOauthClients**](ListOauthClients.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



