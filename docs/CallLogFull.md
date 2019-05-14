# SwaggerClient::CallLogFull

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID | [optional] 
**uuid** | **String** | Internal system id, may be null | [optional] 
**extension** | [**ExtensionSummary**](ExtensionSummary.md) | Account extension | [optional] 
**caller_id** | **String** | Call made from this phone number | [optional] 
**called_number** | **String** | Call made to this phone number | [optional] 
**start_time** | **String** | Call start time | [optional] 
**created_at** | **String** | Call log creation time. Same as call end time + time needed to create call log | [optional] 
**direction** | **String** | Call direction: in or out | [optional] 
**type** | **String** | Call type: call, fax, audiogram ... | [optional] 
**call_duration** | **Integer** | Call duration in seconds | [optional] 
**is_monitored** | **String** | Was call being monitored? | [optional] 
**call_number** | **String** | Internal system call reference number | [optional] 
**final_action** | **String** | Last action of call flow | [optional] 
**voicemail_url** | **String** | URL of voicemail if available. User may download the audio via this URL. Empty string if voicemail does not exist | [optional] 
**voicemail_cp_url** | **String** | URL of voicemail if available. User may listen to the audio online via this URL. Empty string if voicemail does not exist | [optional] 
**voicemail_transcript** | **String** | Transcript of voicemail if enabled and available | [optional] 
**call_recording_url** | **String** | URL of call recording if available. User may download the audio via this URL. Empty string if call recording does not exist | [optional] 
**call_recording_cp_url** | **String** | URL of call recording if available. User may listen to the audio online via this URL. Empty string if call recording does not exist | [optional] 
**details** | [**Array&lt;CallDetails&gt;**](CallDetails.md) | A list of call flows from beginning of call to end of call. | [optional] 
**caller_cnam** | **String** | Internal system caller id / name | [optional] 


