=begin
#Phone.com API

#This is a Phone.com api Swagger definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'uri'

module SwaggerClient
  class ExpressServiceCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Show details of an account Express Service Code
    # This service shows the details of an Account Express Service Code.
    # @param account_id Account ID
    # @param code_id Device ID
    # @param [Hash] opts the optional parameters
    # @return [ExpressServiceCodeFull]
    def get_account_express_srv_code(account_id, code_id, opts = {})
      data, _status_code, _headers = get_account_express_srv_code_with_http_info(account_id, code_id, opts)
      data
    end

    # Show details of an account Express Service Code
    # This service shows the details of an Account Express Service Code.
    # @param account_id Account ID
    # @param code_id Device ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpressServiceCodeFull, Fixnum, Hash)>] ExpressServiceCodeFull data, response status code and response headers
    def get_account_express_srv_code_with_http_info(account_id, code_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpressServiceCodesApi.get_account_express_srv_code ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ExpressServiceCodesApi.get_account_express_srv_code"
      end
      # verify the required parameter 'code_id' is set
      if @api_client.config.client_side_validation && code_id.nil?
        fail ArgumentError, "Missing the required parameter 'code_id' when calling ExpressServiceCodesApi.get_account_express_srv_code"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/express-service-codes/{code_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'code_id' + '}', code_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExpressServiceCodeFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpressServiceCodesApi#get_account_express_srv_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the Express Service Code associated with your account in list format.
    # Get the Express Service Code associated with your account in list format. See Express Service Codes for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @return [ListExpressServiceCodes]
    def list_account_express_srv_codes(account_id, opts = {})
      data, _status_code, _headers = list_account_express_srv_codes_with_http_info(account_id, opts)
      data
    end

    # Get the Express Service Code associated with your account in list format.
    # Get the Express Service Code associated with your account in list format. See Express Service Codes for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @return [Array<(ListExpressServiceCodes, Fixnum, Hash)>] ListExpressServiceCodes data, response status code and response headers
    def list_account_express_srv_codes_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpressServiceCodesApi.list_account_express_srv_codes ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ExpressServiceCodesApi.list_account_express_srv_codes"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/express-service-codes'.sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filters[id]'] = @api_client.build_collection_param(opts[:'filters_id'], :multi) if !opts[:'filters_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListExpressServiceCodes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpressServiceCodesApi#list_account_express_srv_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end