=begin
#Phone.com API

#This is a Phone.com api PhoneCom definition

OpenAPI spec version: 1.0.0
Contact: apisupport@phone.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
PhoneCom Codegen version: 2.4.4

=end

require 'date'

module PhoneComClient
  class CreateExtensionParams
    attr_accessor :voicemail

    attr_accessor :call_notifications

    # Caller ID
    attr_accessor :caller_id

    # Extension type
    attr_accessor :usage_type

    # Extension number (auto-generated if empty)
    attr_accessor :extension

    # Include in dial-by-name directory
    attr_accessor :include_in_directory

    # Name (auto-generated if empty)
    attr_accessor :name

    # Contact name
    attr_accessor :full_name

    # Timezone
    attr_accessor :timezone

    # Recording lookup object
    attr_accessor :name_greeting

    # Local area code
    attr_accessor :local_area_code

    # Enable outgoing calls
    attr_accessor :enable_outbound_calls

    # Enable Call Waiting
    attr_accessor :enable_call_waiting

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'voicemail' => :'voicemail',
        :'call_notifications' => :'call_notifications',
        :'caller_id' => :'caller_id',
        :'usage_type' => :'usage_type',
        :'extension' => :'extension',
        :'include_in_directory' => :'include_in_directory',
        :'name' => :'name',
        :'full_name' => :'full_name',
        :'timezone' => :'timezone',
        :'name_greeting' => :'name_greeting',
        :'local_area_code' => :'local_area_code',
        :'enable_outbound_calls' => :'enable_outbound_calls',
        :'enable_call_waiting' => :'enable_call_waiting'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'voicemail' => :'VoicemailInput',
        :'call_notifications' => :'CallNotifications',
        :'caller_id' => :'String',
        :'usage_type' => :'String',
        :'extension' => :'Integer',
        :'include_in_directory' => :'String',
        :'name' => :'String',
        :'full_name' => :'String',
        :'timezone' => :'String',
        :'name_greeting' => :'Object',
        :'local_area_code' => :'String',
        :'enable_outbound_calls' => :'String',
        :'enable_call_waiting' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'voicemail')
        self.voicemail = attributes[:'voicemail']
      end

      if attributes.has_key?(:'call_notifications')
        self.call_notifications = attributes[:'call_notifications']
      end

      if attributes.has_key?(:'caller_id')
        self.caller_id = attributes[:'caller_id']
      end

      if attributes.has_key?(:'usage_type')
        self.usage_type = attributes[:'usage_type']
      end

      if attributes.has_key?(:'extension')
        self.extension = attributes[:'extension']
      end

      if attributes.has_key?(:'include_in_directory')
        self.include_in_directory = attributes[:'include_in_directory']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'name_greeting')
        self.name_greeting = attributes[:'name_greeting']
      end

      if attributes.has_key?(:'local_area_code')
        self.local_area_code = attributes[:'local_area_code']
      end

      if attributes.has_key?(:'enable_outbound_calls')
        self.enable_outbound_calls = attributes[:'enable_outbound_calls']
      end

      if attributes.has_key?(:'enable_call_waiting')
        self.enable_call_waiting = attributes[:'enable_call_waiting']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          voicemail == o.voicemail &&
          call_notifications == o.call_notifications &&
          caller_id == o.caller_id &&
          usage_type == o.usage_type &&
          extension == o.extension &&
          include_in_directory == o.include_in_directory &&
          name == o.name &&
          full_name == o.full_name &&
          timezone == o.timezone &&
          name_greeting == o.name_greeting &&
          local_area_code == o.local_area_code &&
          enable_outbound_calls == o.enable_outbound_calls &&
          enable_call_waiting == o.enable_call_waiting
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [voicemail, call_notifications, caller_id, usage_type, extension, include_in_directory, name, full_name, timezone, name_greeting, local_area_code, enable_outbound_calls, enable_call_waiting].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = PhoneComClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
