# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'job_configuration_details'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The default job configuration.
  class DataScience::Models::DefaultJobConfigurationDetails < DataScience::Models::JobConfigurationDetails
    # Environment variables to set for the job.
    #
    # @return [Hash<String, String>]
    attr_accessor :environment_variables

    # The arguments to pass to the job.
    #
    # @return [String]
    attr_accessor :command_line_arguments

    # A time bound for the execution of the job. Timer starts when the job becomes active.
    #
    # @return [Integer]
    attr_accessor :maximum_runtime_in_minutes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'job_type': :'jobType',
        'environment_variables': :'environmentVariables',
        'command_line_arguments': :'commandLineArguments',
        'maximum_runtime_in_minutes': :'maximumRuntimeInMinutes'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'job_type': :'String',
        'environment_variables': :'Hash<String, String>',
        'command_line_arguments': :'String',
        'maximum_runtime_in_minutes': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Hash<String, String>] :environment_variables The value to assign to the {#environment_variables} property
    # @option attributes [String] :command_line_arguments The value to assign to the {#command_line_arguments} property
    # @option attributes [Integer] :maximum_runtime_in_minutes The value to assign to the {#maximum_runtime_in_minutes} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['jobType'] = 'DEFAULT'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.environment_variables = attributes[:'environmentVariables'] if attributes[:'environmentVariables']

      raise 'You cannot provide both :environmentVariables and :environment_variables' if attributes.key?(:'environmentVariables') && attributes.key?(:'environment_variables')

      self.environment_variables = attributes[:'environment_variables'] if attributes[:'environment_variables']

      self.command_line_arguments = attributes[:'commandLineArguments'] if attributes[:'commandLineArguments']

      raise 'You cannot provide both :commandLineArguments and :command_line_arguments' if attributes.key?(:'commandLineArguments') && attributes.key?(:'command_line_arguments')

      self.command_line_arguments = attributes[:'command_line_arguments'] if attributes[:'command_line_arguments']

      self.maximum_runtime_in_minutes = attributes[:'maximumRuntimeInMinutes'] if attributes[:'maximumRuntimeInMinutes']

      raise 'You cannot provide both :maximumRuntimeInMinutes and :maximum_runtime_in_minutes' if attributes.key?(:'maximumRuntimeInMinutes') && attributes.key?(:'maximum_runtime_in_minutes')

      self.maximum_runtime_in_minutes = attributes[:'maximum_runtime_in_minutes'] if attributes[:'maximum_runtime_in_minutes']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        job_type == other.job_type &&
        environment_variables == other.environment_variables &&
        command_line_arguments == other.command_line_arguments &&
        maximum_runtime_in_minutes == other.maximum_runtime_in_minutes
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
      [job_type, environment_variables, command_line_arguments, maximum_runtime_in_minutes].hash
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