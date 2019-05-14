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
  class DevicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Register a generic VoIP device.
    # Register a generic VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateDeviceParams] :data Device data
    # @return [DeviceFull]
    def create_account_device(account_id, opts = {})
      data, _status_code, _headers = create_account_device_with_http_info(account_id, opts)
      data
    end

    # Register a generic VoIP device.
    # Register a generic VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateDeviceParams] :data Device data
    # @return [Array<(DeviceFull, Fixnum, Hash)>] DeviceFull data, response status code and response headers
    def create_account_device_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DevicesApi.create_account_device ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DevicesApi.create_account_device"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/devices'.sub('{' + 'account_id' + '}', account_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'data'])
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesApi#create_account_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a VoIP device.
    # Delete a VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param device_id Device ID
    # @param [Hash] opts the optional parameters
    # @return [DeleteEntry]
    def delete_account_device(account_id, device_id, opts = {})
      data, _status_code, _headers = delete_account_device_with_http_info(account_id, device_id, opts)
      data
    end

    # Delete a VoIP device.
    # Delete a VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param device_id Device ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteEntry, Fixnum, Hash)>] DeleteEntry data, response status code and response headers
    def delete_account_device_with_http_info(account_id, device_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DevicesApi.delete_account_device ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DevicesApi.delete_account_device"
      end
      # verify the required parameter 'device_id' is set
      if @api_client.config.client_side_validation && device_id.nil?
        fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesApi.delete_account_device"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/devices/{device_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'device_id' + '}', device_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeleteEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesApi#delete_account_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Show details of an individual VoIP device.
    # Show details of an individual VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param device_id Device ID
    # @param [Hash] opts the optional parameters
    # @return [DeviceFull]
    def get_account_device(account_id, device_id, opts = {})
      data, _status_code, _headers = get_account_device_with_http_info(account_id, device_id, opts)
      data
    end

    # Show details of an individual VoIP device.
    # Show details of an individual VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param device_id Device ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceFull, Fixnum, Hash)>] DeviceFull data, response status code and response headers
    def get_account_device_with_http_info(account_id, device_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DevicesApi.get_account_device ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DevicesApi.get_account_device"
      end
      # verify the required parameter 'device_id' is set
      if @api_client.config.client_side_validation && device_id.nil?
        fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesApi.get_account_device"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/devices/{device_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'device_id' + '}', device_id.to_s)

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
        :return_type => 'DeviceFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesApi#get_account_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of VoIP devices associated with your account.
    # Get a list of VoIP devices associated with your account. See Devices for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListDevices]
    def list_account_devices(account_id, opts = {})
      data, _status_code, _headers = list_account_devices_with_http_info(account_id, opts)
      data
    end

    # Get a list of VoIP devices associated with your account.
    # Get a list of VoIP devices associated with your account. See Devices for more detail.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListDevices, Fixnum, Hash)>] ListDevices data, response status code and response headers
    def list_account_devices_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DevicesApi.list_account_devices ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DevicesApi.list_account_devices"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling DevicesApi.list_account_devices, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_name'].nil? && opts[:'sort_name'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_name\"]' when calling DevicesApi.list_account_devices, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = '/accounts/{account_id}/devices'.sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filters[id]'] = @api_client.build_collection_param(opts[:'filters_id'], :multi) if !opts[:'filters_id'].nil?
      query_params[:'filters[name]'] = @api_client.build_collection_param(opts[:'filters_name'], :multi) if !opts[:'filters_name'].nil?
      query_params[:'sort[id]'] = opts[:'sort_id'] if !opts[:'sort_id'].nil?
      query_params[:'sort[name]'] = opts[:'sort_name'] if !opts[:'sort_name'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

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
        :return_type => 'ListDevices')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesApi#list_account_devices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the details of an individual VoIP device.
    # Update the details of an individual VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param device_id Device ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateDeviceParams] :data Device data
    # @return [DeviceFull]
    def replace_account_device(account_id, device_id, opts = {})
      data, _status_code, _headers = replace_account_device_with_http_info(account_id, device_id, opts)
      data
    end

    # Update the details of an individual VoIP device.
    # Update the details of an individual VoIP device. See Devices for more detail.
    # @param account_id Account ID
    # @param device_id Device ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateDeviceParams] :data Device data
    # @return [Array<(DeviceFull, Fixnum, Hash)>] DeviceFull data, response status code and response headers
    def replace_account_device_with_http_info(account_id, device_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DevicesApi.replace_account_device ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DevicesApi.replace_account_device"
      end
      # verify the required parameter 'device_id' is set
      if @api_client.config.client_side_validation && device_id.nil?
        fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesApi.replace_account_device"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/devices/{device_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'device_id' + '}', device_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'data'])
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesApi#replace_account_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
