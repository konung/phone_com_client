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
  class ApplicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Show details of an individual Application on a given account.
    # Show details of an individual Application on a given account.
    # @param account_id Account ID
    # @param application_id Application ID
    # @param [Hash] opts the optional parameters
    # @return [ApplicationFull]
    def get_account_application(account_id, application_id, opts = {})
      data, _status_code, _headers = get_account_application_with_http_info(account_id, application_id, opts)
      data
    end

    # Show details of an individual Application on a given account.
    # Show details of an individual Application on a given account.
    # @param account_id Account ID
    # @param application_id Application ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationFull, Fixnum, Hash)>] ApplicationFull data, response status code and response headers
    def get_account_application_with_http_info(account_id, application_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationsApi.get_account_application ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ApplicationsApi.get_account_application"
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling ApplicationsApi.get_account_application"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/applications/{application_id}'.sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'application_id' + '}', application_id.to_s)

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
        :return_type => 'ApplicationFull')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#get_account_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This service lists the Applications on a given account
    # Show details of an individual Application on a given account.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [ListApplications]
    def list_account_applications(account_id, opts = {})
      data, _status_code, _headers = list_account_applications_with_http_info(account_id, opts)
      data
    end

    # This service lists the Applications on a given account
    # Show details of an individual Application on a given account.
    # @param account_id Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filters_id ID filter
    # @option opts [Array<String>] :filters_name Name filter
    # @option opts [String] :sort_id ID sorting
    # @option opts [String] :sort_name Name sorting
    # @option opts [Integer] :limit Max results
    # @option opts [Integer] :offset Results to skip
    # @option opts [String] :fields Field set
    # @return [Array<(ListApplications, Fixnum, Hash)>] ListApplications data, response status code and response headers
    def list_account_applications_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationsApi.list_account_applications ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ApplicationsApi.list_account_applications"
      end
      if @api_client.config.client_side_validation && !opts[:'sort_id'].nil? && opts[:'sort_id'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_id\"]' when calling ApplicationsApi.list_account_applications, must conform to the pattern /asc|desc/."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_name'].nil? && opts[:'sort_name'] !~ Regexp.new(/asc|desc/)
        fail ArgumentError, "invalid value for 'opts[:\"sort_name\"]' when calling ApplicationsApi.list_account_applications, must conform to the pattern /asc|desc/."
      end

      # resource path
      local_var_path = '/accounts/{account_id}/applications'.sub('{' + 'account_id' + '}', account_id.to_s)

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
        :return_type => 'ListApplications')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#list_account_applications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end