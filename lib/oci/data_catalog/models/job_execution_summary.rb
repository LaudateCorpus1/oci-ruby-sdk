# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A list of job executions. A job execution is a unit of work being executed on behalf of a job.
  class DataCatalog::Models::JobExecutionSummary
    JOB_TYPE_ENUM = [
      JOB_TYPE_HARVEST = 'HARVEST'.freeze,
      JOB_TYPE_PROFILING = 'PROFILING'.freeze,
      JOB_TYPE_SAMPLING = 'SAMPLING'.freeze,
      JOB_TYPE_PREVIEW = 'PREVIEW'.freeze,
      JOB_TYPE_IMPORT = 'IMPORT'.freeze,
      JOB_TYPE_EXPORT = 'EXPORT'.freeze,
      JOB_TYPE_IMPORT_GLOSSARY = 'IMPORT_GLOSSARY'.freeze,
      JOB_TYPE_EXPORT_GLOSSARY = 'EXPORT_GLOSSARY'.freeze,
      JOB_TYPE_INTERNAL = 'INTERNAL'.freeze,
      JOB_TYPE_PURGE = 'PURGE'.freeze,
      JOB_TYPE_IMMEDIATE = 'IMMEDIATE'.freeze,
      JOB_TYPE_SCHEDULED = 'SCHEDULED'.freeze,
      JOB_TYPE_IMMEDIATE_EXECUTION = 'IMMEDIATE_EXECUTION'.freeze,
      JOB_TYPE_SCHEDULED_EXECUTION = 'SCHEDULED_EXECUTION'.freeze,
      JOB_TYPE_SCHEDULED_EXECUTION_INSTANCE = 'SCHEDULED_EXECUTION_INSTANCE'.freeze,
      JOB_TYPE_ASYNC_DELETE = 'ASYNC_DELETE'.freeze,
      JOB_TYPE_IMPORT_DATA_ASSET = 'IMPORT_DATA_ASSET'.freeze,
      JOB_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATED = 'CREATED'.freeze,
      LIFECYCLE_STATE_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_SUCCEEDED = 'SUCCEEDED'.freeze,
      LIFECYCLE_STATE_CANCELED = 'CANCELED'.freeze,
      LIFECYCLE_STATE_SUCCEEDED_WITH_WARNINGS = 'SUCCEEDED_WITH_WARNINGS'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique key of the job execution resource.
    # @return [String]
    attr_accessor :key

    # The unique key of the parent job.
    # @return [String]
    attr_accessor :job_key

    # Type of the job execution.
    # @return [String]
    attr_reader :job_type

    # The unique key of the parent execution or null if this job execution has no parent.
    # @return [String]
    attr_accessor :parent_key

    # The unique key of the triggering external scheduler resource or null if this job execution is not externally triggered.
    # @return [String]
    attr_accessor :schedule_instance_key

    # Status of the job execution, such as running, paused, or completed.
    # @return [String]
    attr_reader :lifecycle_state

    # The date and time the job execution was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # Time that job execution started. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    # @return [DateTime]
    attr_accessor :time_started

    # Time that the job execution ended or null if it hasn't yet completed.
    # An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    #
    # @return [DateTime]
    attr_accessor :time_ended

    # URI to the job execution instance in the API.
    # @return [String]
    attr_accessor :uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'job_key': :'jobKey',
        'job_type': :'jobType',
        'parent_key': :'parentKey',
        'schedule_instance_key': :'scheduleInstanceKey',
        'lifecycle_state': :'lifecycleState',
        'time_created': :'timeCreated',
        'time_started': :'timeStarted',
        'time_ended': :'timeEnded',
        'uri': :'uri'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'job_key': :'String',
        'job_type': :'String',
        'parent_key': :'String',
        'schedule_instance_key': :'String',
        'lifecycle_state': :'String',
        'time_created': :'DateTime',
        'time_started': :'DateTime',
        'time_ended': :'DateTime',
        'uri': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :job_key The value to assign to the {#job_key} property
    # @option attributes [String] :job_type The value to assign to the {#job_type} property
    # @option attributes [String] :parent_key The value to assign to the {#parent_key} property
    # @option attributes [String] :schedule_instance_key The value to assign to the {#schedule_instance_key} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_started The value to assign to the {#time_started} property
    # @option attributes [DateTime] :time_ended The value to assign to the {#time_ended} property
    # @option attributes [String] :uri The value to assign to the {#uri} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.job_key = attributes[:'jobKey'] if attributes[:'jobKey']

      raise 'You cannot provide both :jobKey and :job_key' if attributes.key?(:'jobKey') && attributes.key?(:'job_key')

      self.job_key = attributes[:'job_key'] if attributes[:'job_key']

      self.job_type = attributes[:'jobType'] if attributes[:'jobType']

      raise 'You cannot provide both :jobType and :job_type' if attributes.key?(:'jobType') && attributes.key?(:'job_type')

      self.job_type = attributes[:'job_type'] if attributes[:'job_type']

      self.parent_key = attributes[:'parentKey'] if attributes[:'parentKey']

      raise 'You cannot provide both :parentKey and :parent_key' if attributes.key?(:'parentKey') && attributes.key?(:'parent_key')

      self.parent_key = attributes[:'parent_key'] if attributes[:'parent_key']

      self.schedule_instance_key = attributes[:'scheduleInstanceKey'] if attributes[:'scheduleInstanceKey']

      raise 'You cannot provide both :scheduleInstanceKey and :schedule_instance_key' if attributes.key?(:'scheduleInstanceKey') && attributes.key?(:'schedule_instance_key')

      self.schedule_instance_key = attributes[:'schedule_instance_key'] if attributes[:'schedule_instance_key']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_started = attributes[:'timeStarted'] if attributes[:'timeStarted']

      raise 'You cannot provide both :timeStarted and :time_started' if attributes.key?(:'timeStarted') && attributes.key?(:'time_started')

      self.time_started = attributes[:'time_started'] if attributes[:'time_started']

      self.time_ended = attributes[:'timeEnded'] if attributes[:'timeEnded']

      raise 'You cannot provide both :timeEnded and :time_ended' if attributes.key?(:'timeEnded') && attributes.key?(:'time_ended')

      self.time_ended = attributes[:'time_ended'] if attributes[:'time_ended']

      self.uri = attributes[:'uri'] if attributes[:'uri']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] job_type Object to be assigned
    def job_type=(job_type)
      # rubocop:disable Style/ConditionalAssignment
      if job_type && !JOB_TYPE_ENUM.include?(job_type)
        OCI.logger.debug("Unknown value for 'job_type' [" + job_type + "]. Mapping to 'JOB_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @job_type = JOB_TYPE_UNKNOWN_ENUM_VALUE
      else
        @job_type = job_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        job_key == other.job_key &&
        job_type == other.job_type &&
        parent_key == other.parent_key &&
        schedule_instance_key == other.schedule_instance_key &&
        lifecycle_state == other.lifecycle_state &&
        time_created == other.time_created &&
        time_started == other.time_started &&
        time_ended == other.time_ended &&
        uri == other.uri
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
      [key, job_key, job_type, parent_key, schedule_instance_key, lifecycle_state, time_created, time_started, time_ended, uri].hash
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
