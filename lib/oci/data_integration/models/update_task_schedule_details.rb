# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The update task details.
  class DataIntegration::Models::UpdateTaskScheduleDetails
    RETRY_DELAY_UNIT_ENUM = [
      RETRY_DELAY_UNIT_SECONDS = 'SECONDS'.freeze,
      RETRY_DELAY_UNIT_MINUTES = 'MINUTES'.freeze,
      RETRY_DELAY_UNIT_HOURS = 'HOURS'.freeze,
      RETRY_DELAY_UNIT_DAYS = 'DAYS'.freeze
    ].freeze

    AUTH_MODE_ENUM = [
      AUTH_MODE_OBO = 'OBO'.freeze,
      AUTH_MODE_RESOURCE_PRINCIPAL = 'RESOURCE_PRINCIPAL'.freeze,
      AUTH_MODE_USER_CERTIFICATE = 'USER_CERTIFICATE'.freeze
    ].freeze

    EXPECTED_DURATION_UNIT_ENUM = [
      EXPECTED_DURATION_UNIT_SECONDS = 'SECONDS'.freeze,
      EXPECTED_DURATION_UNIT_MINUTES = 'MINUTES'.freeze,
      EXPECTED_DURATION_UNIT_HOURS = 'HOURS'.freeze,
      EXPECTED_DURATION_UNIT_DAYS = 'DAYS'.freeze
    ].freeze

    # **[Required]** Generated key that can be used in API calls to identify taskSchedule. On scenarios where reference to the taskSchedule is needed, a value can be passed in create.
    # @return [String]
    attr_accessor :key

    # This is a version number that is used by the service to upgrade objects if needed through releases of the service.
    # @return [String]
    attr_accessor :model_version

    # The type of the object.
    # @return [String]
    attr_accessor :model_type

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # **[Required]** This is used by the service for optimistic locking of the object, to prevent multiple users from simultaneously updating the object.
    # @return [Integer]
    attr_accessor :object_version

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # Value can only contain upper case letters, underscore, and numbers. It should begin with upper case letter or underscore. The value can be modified.
    # @return [String]
    attr_accessor :identifier

    # @return [OCI::DataIntegration::Models::Schedule]
    attr_accessor :schedule_ref

    # @return [OCI::DataIntegration::Models::ConfigProvider]
    attr_accessor :config_provider_delegate

    # enabled
    # @return [BOOLEAN]
    attr_accessor :is_enabled

    # The number of retries.
    # @return [Integer]
    attr_accessor :number_of_retries

    # The retry delay, the unit for measurement is in the property retry delay unit.
    # @return [Float]
    attr_accessor :retry_delay

    # The unit for the retry delay.
    # @return [String]
    attr_reader :retry_delay_unit

    # The start time in milliseconds.
    # @return [Integer]
    attr_accessor :start_time_millis

    # The end time in milliseconds.
    # @return [Integer]
    attr_accessor :end_time_millis

    # Whether the same task can be executed concurrently.
    # @return [BOOLEAN]
    attr_accessor :is_concurrent_allowed

    # Whether the backfill is enabled.
    # @return [BOOLEAN]
    attr_accessor :is_backfill_enabled

    # The authorization mode for the task.
    # @return [String]
    attr_reader :auth_mode

    # The expected duration of the task.
    # @return [Float]
    attr_accessor :expected_duration

    # The expected duration of the task.
    # @return [String]
    attr_reader :expected_duration_unit

    # @return [OCI::DataIntegration::Models::RegistryMetadata]
    attr_accessor :registry_metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'model_version': :'modelVersion',
        'model_type': :'modelType',
        'parent_ref': :'parentRef',
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'object_status': :'objectStatus',
        'identifier': :'identifier',
        'schedule_ref': :'scheduleRef',
        'config_provider_delegate': :'configProviderDelegate',
        'is_enabled': :'isEnabled',
        'number_of_retries': :'numberOfRetries',
        'retry_delay': :'retryDelay',
        'retry_delay_unit': :'retryDelayUnit',
        'start_time_millis': :'startTimeMillis',
        'end_time_millis': :'endTimeMillis',
        'is_concurrent_allowed': :'isConcurrentAllowed',
        'is_backfill_enabled': :'isBackfillEnabled',
        'auth_mode': :'authMode',
        'expected_duration': :'expectedDuration',
        'expected_duration_unit': :'expectedDurationUnit',
        'registry_metadata': :'registryMetadata'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'model_version': :'String',
        'model_type': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'object_status': :'Integer',
        'identifier': :'String',
        'schedule_ref': :'OCI::DataIntegration::Models::Schedule',
        'config_provider_delegate': :'OCI::DataIntegration::Models::ConfigProvider',
        'is_enabled': :'BOOLEAN',
        'number_of_retries': :'Integer',
        'retry_delay': :'Float',
        'retry_delay_unit': :'String',
        'start_time_millis': :'Integer',
        'end_time_millis': :'Integer',
        'is_concurrent_allowed': :'BOOLEAN',
        'is_backfill_enabled': :'BOOLEAN',
        'auth_mode': :'String',
        'expected_duration': :'Float',
        'expected_duration_unit': :'String',
        'registry_metadata': :'OCI::DataIntegration::Models::RegistryMetadata'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :model_version The value to assign to the {#model_version} property
    # @option attributes [String] :model_type The value to assign to the {#model_type} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Integer] :object_version The value to assign to the {#object_version} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [String] :identifier The value to assign to the {#identifier} property
    # @option attributes [OCI::DataIntegration::Models::Schedule] :schedule_ref The value to assign to the {#schedule_ref} property
    # @option attributes [OCI::DataIntegration::Models::ConfigProvider] :config_provider_delegate The value to assign to the {#config_provider_delegate} property
    # @option attributes [BOOLEAN] :is_enabled The value to assign to the {#is_enabled} property
    # @option attributes [Integer] :number_of_retries The value to assign to the {#number_of_retries} property
    # @option attributes [Float] :retry_delay The value to assign to the {#retry_delay} property
    # @option attributes [String] :retry_delay_unit The value to assign to the {#retry_delay_unit} property
    # @option attributes [Integer] :start_time_millis The value to assign to the {#start_time_millis} property
    # @option attributes [Integer] :end_time_millis The value to assign to the {#end_time_millis} property
    # @option attributes [BOOLEAN] :is_concurrent_allowed The value to assign to the {#is_concurrent_allowed} property
    # @option attributes [BOOLEAN] :is_backfill_enabled The value to assign to the {#is_backfill_enabled} property
    # @option attributes [String] :auth_mode The value to assign to the {#auth_mode} property
    # @option attributes [Float] :expected_duration The value to assign to the {#expected_duration} property
    # @option attributes [String] :expected_duration_unit The value to assign to the {#expected_duration_unit} property
    # @option attributes [OCI::DataIntegration::Models::RegistryMetadata] :registry_metadata The value to assign to the {#registry_metadata} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.model_type = attributes[:'modelType'] if attributes[:'modelType']

      raise 'You cannot provide both :modelType and :model_type' if attributes.key?(:'modelType') && attributes.key?(:'model_type')

      self.model_type = attributes[:'model_type'] if attributes[:'model_type']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.object_version = attributes[:'objectVersion'] if attributes[:'objectVersion']

      raise 'You cannot provide both :objectVersion and :object_version' if attributes.key?(:'objectVersion') && attributes.key?(:'object_version')

      self.object_version = attributes[:'object_version'] if attributes[:'object_version']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.identifier = attributes[:'identifier'] if attributes[:'identifier']

      self.schedule_ref = attributes[:'scheduleRef'] if attributes[:'scheduleRef']

      raise 'You cannot provide both :scheduleRef and :schedule_ref' if attributes.key?(:'scheduleRef') && attributes.key?(:'schedule_ref')

      self.schedule_ref = attributes[:'schedule_ref'] if attributes[:'schedule_ref']

      self.config_provider_delegate = attributes[:'configProviderDelegate'] if attributes[:'configProviderDelegate']

      raise 'You cannot provide both :configProviderDelegate and :config_provider_delegate' if attributes.key?(:'configProviderDelegate') && attributes.key?(:'config_provider_delegate')

      self.config_provider_delegate = attributes[:'config_provider_delegate'] if attributes[:'config_provider_delegate']

      self.is_enabled = attributes[:'isEnabled'] unless attributes[:'isEnabled'].nil?

      raise 'You cannot provide both :isEnabled and :is_enabled' if attributes.key?(:'isEnabled') && attributes.key?(:'is_enabled')

      self.is_enabled = attributes[:'is_enabled'] unless attributes[:'is_enabled'].nil?

      self.number_of_retries = attributes[:'numberOfRetries'] if attributes[:'numberOfRetries']

      raise 'You cannot provide both :numberOfRetries and :number_of_retries' if attributes.key?(:'numberOfRetries') && attributes.key?(:'number_of_retries')

      self.number_of_retries = attributes[:'number_of_retries'] if attributes[:'number_of_retries']

      self.retry_delay = attributes[:'retryDelay'] if attributes[:'retryDelay']

      raise 'You cannot provide both :retryDelay and :retry_delay' if attributes.key?(:'retryDelay') && attributes.key?(:'retry_delay')

      self.retry_delay = attributes[:'retry_delay'] if attributes[:'retry_delay']

      self.retry_delay_unit = attributes[:'retryDelayUnit'] if attributes[:'retryDelayUnit']

      raise 'You cannot provide both :retryDelayUnit and :retry_delay_unit' if attributes.key?(:'retryDelayUnit') && attributes.key?(:'retry_delay_unit')

      self.retry_delay_unit = attributes[:'retry_delay_unit'] if attributes[:'retry_delay_unit']

      self.start_time_millis = attributes[:'startTimeMillis'] if attributes[:'startTimeMillis']

      raise 'You cannot provide both :startTimeMillis and :start_time_millis' if attributes.key?(:'startTimeMillis') && attributes.key?(:'start_time_millis')

      self.start_time_millis = attributes[:'start_time_millis'] if attributes[:'start_time_millis']

      self.end_time_millis = attributes[:'endTimeMillis'] if attributes[:'endTimeMillis']

      raise 'You cannot provide both :endTimeMillis and :end_time_millis' if attributes.key?(:'endTimeMillis') && attributes.key?(:'end_time_millis')

      self.end_time_millis = attributes[:'end_time_millis'] if attributes[:'end_time_millis']

      self.is_concurrent_allowed = attributes[:'isConcurrentAllowed'] unless attributes[:'isConcurrentAllowed'].nil?
      self.is_concurrent_allowed = true if is_concurrent_allowed.nil? && !attributes.key?(:'isConcurrentAllowed') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isConcurrentAllowed and :is_concurrent_allowed' if attributes.key?(:'isConcurrentAllowed') && attributes.key?(:'is_concurrent_allowed')

      self.is_concurrent_allowed = attributes[:'is_concurrent_allowed'] unless attributes[:'is_concurrent_allowed'].nil?
      self.is_concurrent_allowed = true if is_concurrent_allowed.nil? && !attributes.key?(:'isConcurrentAllowed') && !attributes.key?(:'is_concurrent_allowed') # rubocop:disable Style/StringLiterals

      self.is_backfill_enabled = attributes[:'isBackfillEnabled'] unless attributes[:'isBackfillEnabled'].nil?
      self.is_backfill_enabled = false if is_backfill_enabled.nil? && !attributes.key?(:'isBackfillEnabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isBackfillEnabled and :is_backfill_enabled' if attributes.key?(:'isBackfillEnabled') && attributes.key?(:'is_backfill_enabled')

      self.is_backfill_enabled = attributes[:'is_backfill_enabled'] unless attributes[:'is_backfill_enabled'].nil?
      self.is_backfill_enabled = false if is_backfill_enabled.nil? && !attributes.key?(:'isBackfillEnabled') && !attributes.key?(:'is_backfill_enabled') # rubocop:disable Style/StringLiterals

      self.auth_mode = attributes[:'authMode'] if attributes[:'authMode']

      raise 'You cannot provide both :authMode and :auth_mode' if attributes.key?(:'authMode') && attributes.key?(:'auth_mode')

      self.auth_mode = attributes[:'auth_mode'] if attributes[:'auth_mode']

      self.expected_duration = attributes[:'expectedDuration'] if attributes[:'expectedDuration']

      raise 'You cannot provide both :expectedDuration and :expected_duration' if attributes.key?(:'expectedDuration') && attributes.key?(:'expected_duration')

      self.expected_duration = attributes[:'expected_duration'] if attributes[:'expected_duration']

      self.expected_duration_unit = attributes[:'expectedDurationUnit'] if attributes[:'expectedDurationUnit']

      raise 'You cannot provide both :expectedDurationUnit and :expected_duration_unit' if attributes.key?(:'expectedDurationUnit') && attributes.key?(:'expected_duration_unit')

      self.expected_duration_unit = attributes[:'expected_duration_unit'] if attributes[:'expected_duration_unit']

      self.registry_metadata = attributes[:'registryMetadata'] if attributes[:'registryMetadata']

      raise 'You cannot provide both :registryMetadata and :registry_metadata' if attributes.key?(:'registryMetadata') && attributes.key?(:'registry_metadata')

      self.registry_metadata = attributes[:'registry_metadata'] if attributes[:'registry_metadata']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] retry_delay_unit Object to be assigned
    def retry_delay_unit=(retry_delay_unit)
      raise "Invalid value for 'retry_delay_unit': this must be one of the values in RETRY_DELAY_UNIT_ENUM." if retry_delay_unit && !RETRY_DELAY_UNIT_ENUM.include?(retry_delay_unit)

      @retry_delay_unit = retry_delay_unit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auth_mode Object to be assigned
    def auth_mode=(auth_mode)
      raise "Invalid value for 'auth_mode': this must be one of the values in AUTH_MODE_ENUM." if auth_mode && !AUTH_MODE_ENUM.include?(auth_mode)

      @auth_mode = auth_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expected_duration_unit Object to be assigned
    def expected_duration_unit=(expected_duration_unit)
      raise "Invalid value for 'expected_duration_unit': this must be one of the values in EXPECTED_DURATION_UNIT_ENUM." if expected_duration_unit && !EXPECTED_DURATION_UNIT_ENUM.include?(expected_duration_unit)

      @expected_duration_unit = expected_duration_unit
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        model_version == other.model_version &&
        model_type == other.model_type &&
        parent_ref == other.parent_ref &&
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        object_status == other.object_status &&
        identifier == other.identifier &&
        schedule_ref == other.schedule_ref &&
        config_provider_delegate == other.config_provider_delegate &&
        is_enabled == other.is_enabled &&
        number_of_retries == other.number_of_retries &&
        retry_delay == other.retry_delay &&
        retry_delay_unit == other.retry_delay_unit &&
        start_time_millis == other.start_time_millis &&
        end_time_millis == other.end_time_millis &&
        is_concurrent_allowed == other.is_concurrent_allowed &&
        is_backfill_enabled == other.is_backfill_enabled &&
        auth_mode == other.auth_mode &&
        expected_duration == other.expected_duration &&
        expected_duration_unit == other.expected_duration_unit &&
        registry_metadata == other.registry_metadata
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [key, model_version, model_type, parent_ref, name, description, object_version, object_status, identifier, schedule_ref, config_provider_delegate, is_enabled, number_of_retries, retry_delay, retry_delay_unit, start_time_millis, end_time_millis, is_concurrent_allowed, is_backfill_enabled, auth_mode, expected_duration, expected_duration_unit, registry_metadata].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

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
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
