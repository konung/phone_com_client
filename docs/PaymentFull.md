# SwaggerClient::PaymentFull

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Payment Method ID | [optional] 
**voip_id** | **Integer** | API Account ID | [optional] 
**status** | **String** | &#39;primary&#39; &#x3D; primary card used for billing; &#39;onfile&#39; &#x3D; card on file; &#39;hidden&#39; &#x3D; deleted card; | [optional] 
**nickname** | **String** | Name of Card | [optional] 
**type** | **String** | &#39;cc&#39; for credit card | [optional] 
**created_at** | **Integer** | Time payment record is created | [optional] 
**contact** | [**ContactResponse**](ContactResponse.md) | Detail of contact person | [optional] 
**decline_count** | **Integer** | Number of times the payment method was declined | [optional] 
**next_charge_date** | **Integer** | Next billing date | [optional] 
**updated_at** | **Integer** | Last time the payment method was updated | [optional] 
**cc_token** | **String** | Encrypted credit card token to be used for billing | [optional] 
**cc_number** | **String** | Credit card number partially masked with xxxxxxxx | [optional] 
**cc_exp** | **String** | Credit card expiration date | [optional] 


