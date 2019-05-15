# PhoneComClient::PhoneNumberFull

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Integer Phone number ID. This is the internal Phone.com ID for this number, not the phone number itself. Read-only. | [optional]
**name** | **String** | Name | [optional]
**phone_number** | **String** | Phone number, in E.164 format | [optional]
**block_incoming** | **BOOLEAN** | Whether to block incoming calls. Boolean. | [optional]
**block_anonymous** | **BOOLEAN** | Whether to block anonymous calls. Boolean. | [optional]
**route** | [**RouteSummary**](RouteSummary.md) | The Route assigned to handle incoming calls for this number, if any. Output is a Route Summary Object, or NULL if not set. Input can be a Route Lookup Object or NULL to unset. | [optional]
**caller_id** | [**CallerIdPhoneNumber**](CallerIdPhoneNumber.md) |  | [optional]
**sms_forwarding** | [**SmsForwarding**](SmsForwarding.md) |  | [optional]
**call_notifications** | [**CallNotifications**](CallNotifications.md) |  | [optional]


