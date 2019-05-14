# SwaggerClient::VoicemailFull

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique Voicemail ID. Read-only. | [optional] 
**download_url** | **String** | Name. Required. | [optional] 
**extension** | [**ExtensionSummary**](ExtensionSummary.md) | Extension where the voicemail is saved into. | [optional] 
**from** | [**FromObject**](FromObject.md) | The caller&#39;s information | [optional] 
**to** | **String** | The phone number where the caller is calling | [optional] 
**is_new** | **BOOLEAN** | True when Voicemail is new; False when Voicemail has been listened | [optional] 
**created_at** | **Integer** | Date string representing the UTC time that the object was created in the Phone.com API system. | [optional] 
**folder** | **String** | Folder name where voicemail is saved | [optional] 
**duration** | **Integer** | Length of voicemail in seconds | [optional] 


