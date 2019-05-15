# PhoneComClient::OauthClientsRedirectUrisApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_account_oauth_clients_redirect_uri**](OauthClientsRedirectUrisApi.md#create_account_oauth_clients_redirect_uri) | **POST** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris | Create an OAuth Client Redirect URI record.
[**delete_account_oauth_clients_redirect_uri**](OauthClientsRedirectUrisApi.md#delete_account_oauth_clients_redirect_uri) | **DELETE** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris/{uri_id} | Delete an OAuth Client Redirect URI record.
[**get_account_oauth_clients_redirect_uri**](OauthClientsRedirectUrisApi.md#get_account_oauth_clients_redirect_uri) | **GET** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris/{uri_id} | Get details of an OAuth Client Redirect URI record.
[**list_account_oauth_clients_redirect_uris**](OauthClientsRedirectUrisApi.md#list_account_oauth_clients_redirect_uris) | **GET** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris | Get a list of OAuth Client Redirect URIs for an account.


# **create_account_oauth_clients_redirect_uri**
> OauthClientRedirectUriFull create_account_oauth_clients_redirect_uri(account_id, client_id, , opts)

Create an OAuth Client Redirect URI record.

Create an OAuth Client Redirect URI record.

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

api_instance = PhoneComClient::OauthClientsRedirectUrisApi.new

account_id = 56 # Integer | Account ID

client_id = 56 # Integer | Client ID

opts = {
  data: PhoneComClient::CreateRedirectUriParams.new # CreateRedirectUriParams | Redirect Uri data
}

begin
  #Create an OAuth Client Redirect URI record.
  result = api_instance.create_account_oauth_clients_redirect_uri(account_id, client_id, , opts)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling OauthClientsRedirectUrisApi->create_account_oauth_clients_redirect_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **client_id** | **Integer**| Client ID |
 **data** | [**CreateRedirectUriParams**](CreateRedirectUriParams.md)| Redirect Uri data | [optional]

### Return type

[**OauthClientRedirectUriFull**](OauthClientRedirectUriFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_account_oauth_clients_redirect_uri**
> DeleteEntry delete_account_oauth_clients_redirect_uri(account_id, client_id, uri_id)

Delete an OAuth Client Redirect URI record.

Delete an OAuth Client Redirect URI record.

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

api_instance = PhoneComClient::OauthClientsRedirectUrisApi.new

account_id = 56 # Integer | Account ID

client_id = 56 # Integer | Client ID

uri_id = 56 # Integer | Redirect URI ID


begin
  #Delete an OAuth Client Redirect URI record.
  result = api_instance.delete_account_oauth_clients_redirect_uri(account_id, client_id, uri_id)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling OauthClientsRedirectUrisApi->delete_account_oauth_clients_redirect_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **client_id** | **Integer**| Client ID |
 **uri_id** | **Integer**| Redirect URI ID |

### Return type

[**DeleteEntry**](DeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_oauth_clients_redirect_uri**
> OauthClientRedirectUriFull get_account_oauth_clients_redirect_uri(account_id, client_id, uri_id)

Get details of an OAuth Client Redirect URI record.

Get details of an OAuth Client Redirect URI record.

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

api_instance = PhoneComClient::OauthClientsRedirectUrisApi.new

account_id = 56 # Integer | Account ID

client_id = 56 # Integer | Client ID

uri_id = 56 # Integer | Redirect URI ID


begin
  #Get details of an OAuth Client Redirect URI record.
  result = api_instance.get_account_oauth_clients_redirect_uri(account_id, client_id, uri_id)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling OauthClientsRedirectUrisApi->get_account_oauth_clients_redirect_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **client_id** | **Integer**| Client ID |
 **uri_id** | **Integer**| Redirect URI ID |

### Return type

[**OauthClientRedirectUriFull**](OauthClientRedirectUriFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_account_oauth_clients_redirect_uris**
> ListOauthClientsRedirectUris list_account_oauth_clients_redirect_uris(account_id, client_id, , opts)

Get a list of OAuth Client Redirect URIs for an account.

Get a list of OAuth Client Redirect URIs for an account.

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

api_instance = PhoneComClient::OauthClientsRedirectUrisApi.new

account_id = 56 # Integer | Account ID

client_id = 56 # Integer | Client ID

opts = {
  filters_id: ['filters_id_example'], # Array<String> | ID filter
  sort_id: 'sort_id_example', # String | ID sorting
  limit: 56, # Integer | Max results
  offset: 56, # Integer | Results to skip
  fields: 'fields_example', # String | Field set
}

begin
  #Get a list of OAuth Client Redirect URIs for an account.
  result = api_instance.list_account_oauth_clients_redirect_uris(account_id, client_id, , opts)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling OauthClientsRedirectUrisApi->list_account_oauth_clients_redirect_uris: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **client_id** | **Integer**| Client ID |
 **filters_id** | [**Array&lt;String&gt;**](String.md)| ID filter | [optional]
 **sort_id** | **String**| ID sorting | [optional]
 **limit** | **Integer**| Max results | [optional]
 **offset** | **Integer**| Results to skip | [optional]
 **fields** | **String**| Field set | [optional]

### Return type

[**ListOauthClientsRedirectUris**](ListOauthClientsRedirectUris.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



