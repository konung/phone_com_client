# SwaggerClient::CreateOauthParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **String** | authorization_code, client_credentials, password or refresh_token | [optional] 
**client_id** | **String** | Client ID | [optional] 
**client_secret** | **String** | Client Secret Key | [optional] 
**code** | **String** | Authorization Code created via the /oauth/authorization API | [optional] 
**redirect_uri** | **String** | The redirect URI where user enters authentication information | [optional] 
**scope** | **String** | account-owner, extension-user and/or methods:ALL, separated by space (%20) | [optional] 
**username** | **String** | User name | [optional] 
**password** | **String** | Password | [optional] 
**refresh_token** | **String** | Refresh token | [optional] 


