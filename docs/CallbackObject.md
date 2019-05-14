# SwaggerClient::CallbackObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | URL of webhook, where the event is emitted to. Note: The listener supports both HTTP &amp; HTTPS, we highly recommend that users use HTTPS on all callbacks (with user name and password) to ensure no one may send malicious events pretending to be Phone.com. | [optional] 
**role** | **String** | Role of callback: main or backup | [optional] 
**verb** | **String** | HTTP method: get or post | [optional] 
**username** | **String** | Optional user name needed to logon to the webhook URL | [optional] 
**password** | **String** | Optional password needed to logon to the webhook URL | [optional] 
**timeout** | **Integer** | Optional : Duration of HTTP response will time out while sending the event to the callback URL. (1 - 10 seconds) | [optional] 


