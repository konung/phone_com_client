# SwaggerClient::SmsForwardingParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Can be \&quot;extension\&quot; or \&quot;application\&quot; | [optional] 
**extension** | **Integer** | Required if type &#x3D; \&quot;extension\&quot;. Extension that messages should be directed to. Output is an Extension Summary Object. Input must be an Extension Lookup Object. | [optional] 
**application** | **Integer** | Required if type &#x3D; \&quot;application\&quot;. Application that messages should be directed to. Output is an Application Summary Object. Input must be an Application Lookup Object. | [optional] 


