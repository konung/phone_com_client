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
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # The default API command
    # The default API command
    # @param [Hash] opts the optional parameters
    # @return [PingResponse]
    def ping(opts = {})
      data, _status_code, _headers = ping_with_http_info(opts)
      data
    end

    # The default API command
    # The default API command
    # @param [Hash] opts the optional parameters
    # @return [Array<(PingResponse, Fixnum, Hash)>] PingResponse data, response status code and response headers
    def ping_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.ping ...'
      end
      # resource path
      local_var_path = '/ping'

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
        :return_type => 'PingResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#ping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
