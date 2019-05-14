# SwaggerClient::OauthApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_oauth_access_token**](OauthApi.md#create_oauth_access_token) | **POST** /oauth/access-token | To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.
[**create_oauth_authorization**](OauthApi.md#create_oauth_authorization) | **GET** /oauth/authorization | Create Authorization Code or Access Token.
[**get_oauth_access_token**](OauthApi.md#get_oauth_access_token) | **GET** /oauth/access-token | Retrieve details of an access token, such as scope, expiration and extension ID.


# **create_oauth_access_token**
> OauthAccessToken create_oauth_access_token(opts)

To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.

To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant. For Authorization Code Grant, the input parameter 'code' is generated via the Create Authorization API. NOTE: The Create Access Token API now accepts requests in query string format as well as JSON body format. See OAuth for more details on how to obtain client id and client secret to create an access token at real time.

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

api_instance = SwaggerClient::OauthApi.new

opts = { 
  data: SwaggerClient::CreateOauthParams.new # CreateOauthParams | Oauth data
}

begin
  #To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.
  result = api_instance.create_oauth_access_token(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OauthApi->create_oauth_access_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**CreateOauthParams**](CreateOauthParams.md)| Oauth data | [optional] 

### Return type

[**OauthAccessToken**](OauthAccessToken.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_oauth_authorization**
> create_oauth_authorization(client_id, response_type, scope, redirect_uri)

Create Authorization Code or Access Token.

Create Authorization Code or Access Token. The /oauth/authorization API supports Authorization Grant and Implicit Grant. In Authorization Grant, this API returns a code (response_type=code) for clients implemented in a browser using a scripting language such as JavaScript. Users may then use the code via the Create Access Token API to create an access token. The Implicit Grant is a simplified authorization code flow. In the implicit flow, instead of issuing the client an authorization code, the client is issued an access token (response_type=token) directly. See OAuth for more details on how to obtain client id and client secret to create authorization code access token at real time.

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

api_instance = SwaggerClient::OauthApi.new

client_id = 'client_id_example' # String | Client ID

response_type = 'response_type_example' # String | 'token' for Implicit Grant; 'code' for Authorization Code Grant

scope = 'scope_example' # String | account-owner, extension-user and/or methods:ALL, separated by space (%20)

redirect_uri = 'redirect_uri_example' # String | The URL where the response data of this API is redirected to


begin
  #Create Authorization Code or Access Token.
  api_instance.create_oauth_authorization(client_id, response_type, scope, redirect_uri)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OauthApi->create_oauth_authorization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID | 
 **response_type** | **String**| &#39;token&#39; for Implicit Grant; &#39;code&#39; for Authorization Code Grant | 
 **scope** | **String**| account-owner, extension-user and/or methods:ALL, separated by space (%20) | 
 **redirect_uri** | **String**| The URL where the response data of this API is redirected to | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_oauth_access_token**
> GetOauthAccessToken get_oauth_access_token

Retrieve details of an access token, such as scope, expiration and extension ID.

Retrieve details of an access token, such as scope, expiration and extension ID. Voip ID will be returned as well if scope contains account-owner scope.

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

api_instance = SwaggerClient::OauthApi.new

begin
  #Retrieve details of an access token, such as scope, expiration and extension ID.
  result = api_instance.get_oauth_access_token
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OauthApi->get_oauth_access_token: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOauthAccessToken**](GetOauthAccessToken.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



