# SwaggerClient::QueueFull

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Integer ID. Read-only. | 
**name** | **String** | Name. Required. | 
**greeting** | [**MediaSummary**](MediaSummary.md) | Greeting to be played when caller first connects. Output is a Media Summary Object. Input must be a Media Lookup Object. Must refer to a media recording that has is_hold_music set to FALSE. Can be set to NULL to disable the greeting. | [optional] 
**hold_music** | [**HoldMusic**](HoldMusic.md) |  | [optional] 
**max_hold_time** | **Integer** | Maximum hold time in seconds. If provided, must equal one of: 60, 120, 180, 240, 300, 600, 900, 1200, 1800, 2700, 3600. Default is 300. | [optional] 
**caller_id_type** | **String** | Caller id type to show members. If provided, must equal one of: &#39;called_number&#39;, &#39;calling_number&#39;. Default is &#39;calling_number&#39;. | [optional] 
**ring_time** | **Integer** | Number of seconds to ring a member before cycling to the next member. If provided, must equal one of: 5, 10, 15, 20, 25, 30. Default is 5. | [optional] 
**members** | [**Array&lt;Member&gt;**](Member.md) | Array of Member Objects. Non-virtual account extensions or phone numbers. See below for details. | [optional] 


