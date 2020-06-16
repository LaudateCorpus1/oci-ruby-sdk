# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Properties used to create a job.
  class DataCatalog::Models::CreateJobDetails
    # **[Required]** A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of the job.
    # @return [String]
    attr_accessor :description

    # Schedule specified in the cron expression format that has seven fields for second, minute, hour, day-of-month, month, day-of-week, year.
    # It can also include special characters like * for all and ? for any. There are also pre-defined schedules that can be specified using
    # special strings. For example, @hourly will run the job every hour.
    #
    # @return [String]
    attr_accessor :schedule_cron_expression

    # Date that the schedule should be operational. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    # @return [DateTime]
    attr_accessor :time_schedule_begin

    # Date that the schedule should end from being operational. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    # @return [DateTime]
    attr_accessor :time_schedule_end

    # The key of the connection used by the job. This connection will override the default connection specified in
    # the associated job definition. All executions will use this connection.
    #
    # @return [String]
    attr_accessor :connection_key

    # **[Required]** The unique key of the job definition that defined the scope of this job.
    # @return [String]
    attr_accessor :job_definition_key

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'description': :'description',
        'schedule_cron_expression': :'scheduleCronExpression',
        'time_schedule_begin': :'timeScheduleBegin',
        'time_schedule_end': :'timeScheduleEnd',
        'connection_key': :'connectionKey',
        'job_definition_key': :'jobDefinitionKey'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'description': :'String',
        'schedule_cron_expression': :'String',
        'time_schedule_begin': :'DateTime',
        'time_schedule_end': :'DateTime',
        'connection_key': :'String',
        'job_definition_key': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :schedule_cron_expression The value to assign to the {#schedule_cron_expression} property
    # @option attributes [DateTime] :time_schedule_begin The value to assign to the {#time_schedule_begin} property
    # @option attributes [DateTime] :time_schedule_end The value to assign to the {#time_schedule_end} property
    # @option attributes [String] :connection_key The value to assign to the {#connection_key} property
    # @option attributes [String] :job_definition_key The value to assign to the {#job_definition_key} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.schedule_cron_expression = attributes[:'scheduleCronExpression'] if attributes[:'scheduleCronExpression']

      raise 'You cannot provide both :scheduleCronExpression and :schedule_cron_expression' if attributes.key?(:'scheduleCronExpression') && attributes.key?(:'schedule_cron_expression')

      self.schedule_cron_expression = attributes[:'schedule_cron_expression'] if attributes[:'schedule_cron_expression']

      self.time_schedule_begin = attributes[:'timeScheduleBegin'] if attributes[:'timeScheduleBegin']

      raise 'You cannot provide both :timeScheduleBegin and :time_schedule_begin' if attributes.key?(:'timeScheduleBegin') && attributes.key?(:'time_schedule_begin')

      self.time_schedule_begin = attributes[:'time_schedule_begin'] if attributes[:'time_schedule_begin']

      self.time_schedule_end = attributes[:'timeScheduleEnd'] if attributes[:'timeScheduleEnd']

      raise 'You cannot provide both :timeScheduleEnd and :time_schedule_end' if attributes.key?(:'timeScheduleEnd') && attributes.key?(:'time_schedule_end')

      self.time_schedule_end = attributes[:'time_schedule_end'] if attributes[:'time_schedule_end']

      self.connection_key = attributes[:'connectionKey'] if attributes[:'connectionKey']

      raise 'You cannot provide both :connectionKey and :connection_key' if attributes.key?(:'connectionKey') && attributes.key?(:'connection_key')

      self.connection_key = attributes[:'connection_key'] if attributes[:'connection_key']

      self.job_definition_key = attributes[:'jobDefinitionKey'] if attributes[:'jobDefinitionKey']

      raise 'You cannot provide both :jobDefinitionKey and :job_definition_key' if attributes.key?(:'jobDefinitionKey') && attributes.key?(:'job_definition_key')

      self.job_definition_key = attributes[:'job_definition_key'] if attributes[:'job_definition_key']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        description == other.description &&
        schedule_cron_expression == other.schedule_cron_expression &&
        time_schedule_begin == other.time_schedule_begin &&
        time_schedule_end == other.time_schedule_end &&
        connection_key == other.connection_key &&
        job_definition_key == other.job_definition_key
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
      [display_name, description, schedule_cron_expression, time_schedule_begin, time_schedule_end, connection_key, job_definition_key].hash
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
