# PhoneComClient::SubaccountPricingApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_account_subaccount_pricing**](SubaccountPricingApi.md#create_account_subaccount_pricing) | **POST** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing | Add a pricing plan to a subaccount.
[**delete_account_subaccount_pricing**](SubaccountPricingApi.md#delete_account_subaccount_pricing) | **DELETE** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing/{pricing_id} | Delete a pricing plan from a subaccount.
[**get_account_subaccount_pricing**](SubaccountPricingApi.md#get_account_subaccount_pricing) | **GET** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing/{pricing_id} | Get the details of a pricing plan for a subaccount.
[**list_account_subaccount_pricing**](SubaccountPricingApi.md#list_account_subaccount_pricing) | **GET** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing | Get a list of pricing plans for a subaccount.


# **create_account_subaccount_pricing**
> PricingFull create_account_subaccount_pricing(account_id, subaccount_id, data)

Add a pricing plan to a subaccount.

Add a pricing plan to a subaccount. See Account Subaccount Pricing for more info on the properties.

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

api_instance = PhoneComClient::SubaccountPricingApi.new

account_id = 56 # Integer | Account ID

subaccount_id = 56 # Integer | Subaccount ID

data = PhoneComClient::CreatePricingParams.new # CreatePricingParams | Subaccount pricing data


begin
  #Add a pricing plan to a subaccount.
  result = api_instance.create_account_subaccount_pricing(account_id, subaccount_id, data)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling SubaccountPricingApi->create_account_subaccount_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **subaccount_id** | **Integer**| Subaccount ID |
 **data** | [**CreatePricingParams**](CreatePricingParams.md)| Subaccount pricing data |

### Return type

[**PricingFull**](PricingFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_account_subaccount_pricing**
> DeleteEntry delete_account_subaccount_pricing(account_id, subaccount_id, pricing_id)

Delete a pricing plan from a subaccount.

Delete a pricing plan from a subaccount. See Account Subaccount Pricing for more info on the properties.

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

api_instance = PhoneComClient::SubaccountPricingApi.new

account_id = 56 # Integer | Account ID

subaccount_id = 56 # Integer | Subaccount ID

pricing_id = 56 # Integer | Pricing Object ID


begin
  #Delete a pricing plan from a subaccount.
  result = api_instance.delete_account_subaccount_pricing(account_id, subaccount_id, pricing_id)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling SubaccountPricingApi->delete_account_subaccount_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **subaccount_id** | **Integer**| Subaccount ID |
 **pricing_id** | **Integer**| Pricing Object ID |

### Return type

[**DeleteEntry**](DeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_subaccount_pricing**
> PricingFull get_account_subaccount_pricing(account_id, subaccount_id, pricing_id)

Get the details of a pricing plan for a subaccount.

Get the details of a pricing plan for a subaccount. See Account Subaccount Pricing for more info on the properties.

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

api_instance = PhoneComClient::SubaccountPricingApi.new

account_id = 56 # Integer | Account ID

subaccount_id = 56 # Integer | Subaccount ID

pricing_id = 56 # Integer | Pricing Object ID


begin
  #Get the details of a pricing plan for a subaccount.
  result = api_instance.get_account_subaccount_pricing(account_id, subaccount_id, pricing_id)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling SubaccountPricingApi->get_account_subaccount_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **subaccount_id** | **Integer**| Subaccount ID |
 **pricing_id** | **Integer**| Pricing Object ID |

### Return type

[**PricingFull**](PricingFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_account_subaccount_pricing**
> ListPricings list_account_subaccount_pricing(account_id, subaccount_id, , opts)

Get a list of pricing plans for a subaccount.

Get a list of pricing plans for a subaccount. See Account Subaccount Pricing for more info on the properties.

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

api_instance = PhoneComClient::SubaccountPricingApi.new

account_id = 56 # Integer | Account ID

subaccount_id = 56 # Integer | Subaccount ID

opts = {
  filters_id: ['filters_id_example'], # Array<String> | ID filter
  sort_id: 'sort_id_example', # String | ID sorting
  limit: 56, # Integer | Max results
  offset: 56, # Integer | Results to skip
  fields: 'fields_example', # String | Field set
}

begin
  #Get a list of pricing plans for a subaccount.
  result = api_instance.list_account_subaccount_pricing(account_id, subaccount_id, , opts)
  p result
rescue PhoneComClient::ApiError => e
  puts "Exception when calling SubaccountPricingApi->list_account_subaccount_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account ID |
 **subaccount_id** | **Integer**| Subaccount ID |
 **filters_id** | [**Array&lt;String&gt;**](String.md)| ID filter | [optional]
 **sort_id** | **String**| ID sorting | [optional]
 **limit** | **Integer**| Max results | [optional]
 **offset** | **Integer**| Results to skip | [optional]
 **fields** | **String**| Field set | [optional]

### Return type

[**ListPricings**](ListPricings.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



