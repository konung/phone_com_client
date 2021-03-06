=begin
#Phone.com API

#This is a Phone.com api PhoneCom definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
PhoneCom Codegen version: 2.4.4

=end

require 'uri'

module PhoneComClient
  class ListenersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a listener object to your account that can be used to subscribe an event.
    # Add a listener object to your account that can be used to subscribe an event. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Post Listener API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateListenerParams] :data Account Listeners Data
    # @return [ListenerFull]
    def create_account_listener(account_id, opts = {})
      data, _status_code, _headers = create_account_listener_with_http_info(account_id, opts)
      data
    end

    # Add a listener object to your account that can be used to subscribe an event.
    # Add a listener object to your account that can be used to subscribe an event. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Post Listener API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateListenerParams] :data Account Listeners Data
    # @return [Array<(ListenerFull, Fixnum, Hash)>] ListenerFull data, response status code and response headers
    def create_account_listener_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListenersApi.create_account_listener ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ListenersApi.create_account_listener"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/listeners'.sub('{' + 'account_id' + '}', account_id.to_s)

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
        :return_type => 'ListenerFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListenersApi#create_account_listener\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an individual event listener.
    # Delete an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Delete Listener API with the following definition: DELETE https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id
    # @param account_id Account ID
    # @param listener_id Listener ID
    # @param [Hash] opts the optional parameters
    # @return [DeleteEntry]
    def delete_account_listener(account_id, listener_id, opts = {})
      data, _status_code, _headers = delete_account_listener_with_http_info(account_id, listener_id, opts)
      data
    end

    # Delete an individual event listener.
    # Delete an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Delete Listener API with the following definition: DELETE https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id
    # @param account_id Account ID
    # @param listener_id Listener ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteEntry, Fixnum, Hash)>] DeleteEntry data, response status code and response headers
    def delete_account_listener_with_http_info(account_id, listener_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListenersApi.delete_account_listener ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ListenersApi.delete_account_listener"
      end
      # verify the required parameter 'listener_id' is set
      if @api_client.config.client_side_validation && listener_id.nil?
        fail ArgumentError, "Missing the required parameter 'listener_id' when calling ListenersApi.delete_account_listener"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/listeners/{listener_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'listener_id' + '}', listener_id.to_s)

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
        @api_client.config.logger.debug "API called: ListenersApi#delete_account_listener\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Show details of an individual listener.
    # Show details of an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Get Listener API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id
    # @param account_id Account ID
    # @param listener_id Listener ID
    # @param [Hash] opts the optional parameters
    # @return [ListenerFull]
    def get_account_listener(account_id, listener_id, opts = {})
      data, _status_code, _headers = get_account_listener_with_http_info(account_id, listener_id, opts)
      data
    end

    # Show details of an individual listener.
    # Show details of an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Get Listener API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id
    # @param account_id Account ID
    # @param listener_id Listener ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListenerFull, Fixnum, Hash)>] ListenerFull data, response status code and response headers
    def get_account_listener_with_http_info(account_id, listener_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListenersApi.get_account_listener ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ListenersApi.get_account_listener"
      end
      # verify the required parameter 'listener_id' is set
      if @api_client.config.client_side_validation && listener_id.nil?
        fail ArgumentError, "Missing the required parameter 'listener_id' when calling ListenersApi.get_account_listener"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/listeners/{listener_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'listener_id' + '}', listener_id.to_s)

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
        :return_type => 'ListenerFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListenersApi#get_account_listener\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of listeners for an account.
    # Get a list of listeners for an account. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List Listeners API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListListeners]
    def list_account_listeners(account_id, opts = {})
      data, _status_code, _headers = list_account_listeners_with_http_info(account_id, opts)
      data
    end

    # Get a list of listeners for an account.
    # Get a list of listeners for an account. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List Listeners API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListListeners, Fixnum, Hash)>] ListListeners data, response status code and response headers
    def list_account_listeners_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListenersApi.list_account_listeners ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ListenersApi.list_account_listeners"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling ListenersApi.list_account_listeners, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = '/accounts/{account_id}/listeners'.sub('{' + 'account_id' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filters[id]'] = @api_client.build_collection_param(opts[:'filters_id'], :multi) if !opts[:'filters_id'].nil?
      query_params[:'sort[id]'] = opts[:'sort_id'] if !opts[:'sort_id'].nil?
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
        :return_type => 'ListListeners')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListenersApi#list_account_listeners\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the settings of an individual event listener.
    # Update the settings of an individual event listener. See Event Listeners for more detail. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Replace Listener API with the following definition: PUT https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id
    # @param account_id Account ID
    # @param listener_id Listener ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateListenerParams] :data Account Listeners Data
    # @return [ListenerFull]
    def replace_account_listener(account_id, listener_id, opts = {})
      data, _status_code, _headers = replace_account_listener_with_http_info(account_id, listener_id, opts)
      data
    end

    # Update the settings of an individual event listener.
    # Update the settings of an individual event listener. See Event Listeners for more detail. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Replace Listener API with the following definition: PUT https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id
    # @param account_id Account ID
    # @param listener_id Listener ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateListenerParams] :data Account Listeners Data
    # @return [Array<(ListenerFull, Fixnum, Hash)>] ListenerFull data, response status code and response headers
    def replace_account_listener_with_http_info(account_id, listener_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListenersApi.replace_account_listener ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ListenersApi.replace_account_listener"
      end
      # verify the required parameter 'listener_id' is set
      if @api_client.config.client_side_validation && listener_id.nil?
        fail ArgumentError, "Missing the required parameter 'listener_id' when calling ListenersApi.replace_account_listener"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/listeners/{listener_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'listener_id' + '}', listener_id.to_s)

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
        :return_type => 'ListenerFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListenersApi#replace_account_listener\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
