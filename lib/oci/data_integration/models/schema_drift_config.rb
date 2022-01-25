# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The configuration for handling schema drift in a Source or Target operator.
  class DataIntegration::Models::SchemaDriftConfig
    EXTRA_COLUMN_HANDLING_ENUM = [
      EXTRA_COLUMN_HANDLING_ALLOW = 'ALLOW'.freeze,
      EXTRA_COLUMN_HANDLING_NULL_FILLUP = 'NULL_FILLUP'.freeze,
      EXTRA_COLUMN_HANDLING_DO_NOT_ALLOW = 'DO_NOT_ALLOW'.freeze,
      EXTRA_COLUMN_HANDLING_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    MISSING_COLUMN_HANDLING_ENUM = [
      MISSING_COLUMN_HANDLING_ALLOW = 'ALLOW'.freeze,
      MISSING_COLUMN_HANDLING_NULL_SELECT = 'NULL_SELECT'.freeze,
      MISSING_COLUMN_HANDLING_DO_NOT_ALLOW = 'DO_NOT_ALLOW'.freeze,
      MISSING_COLUMN_HANDLING_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    DATA_TYPE_CHANGE_HANDLING_ENUM = [
      DATA_TYPE_CHANGE_HANDLING_ALLOW = 'ALLOW'.freeze,
      DATA_TYPE_CHANGE_HANDLING_DO_CAST_IF_POSSIBLE = 'DO_CAST_IF_POSSIBLE'.freeze,
      DATA_TYPE_CHANGE_HANDLING_DO_NOT_ALLOW = 'DO_NOT_ALLOW'.freeze,
      DATA_TYPE_CHANGE_HANDLING_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The setting for how to handle extra columns/fields.  NULL_FILLUP means that nulls will be loaded into the target for extra columns.
    # @return [String]
    attr_reader :extra_column_handling

    # The setting for how to handle missing columns/fields.  NULL_SELECT means that null values will be selected from the source for missing columns.
    # @return [String]
    attr_reader :missing_column_handling

    # The setting for how to handle columns/fields with changed data types.
    # @return [String]
    attr_reader :data_type_change_handling

    # If true, display a validation warning for schema changes, even if they are allowed.
    # @return [BOOLEAN]
    attr_accessor :is_validation_warning_if_allowed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'extra_column_handling': :'extraColumnHandling',
        'missing_column_handling': :'missingColumnHandling',
        'data_type_change_handling': :'dataTypeChangeHandling',
        'is_validation_warning_if_allowed': :'isValidationWarningIfAllowed'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'extra_column_handling': :'String',
        'missing_column_handling': :'String',
        'data_type_change_handling': :'String',
        'is_validation_warning_if_allowed': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :extra_column_handling The value to assign to the {#extra_column_handling} property
    # @option attributes [String] :missing_column_handling The value to assign to the {#missing_column_handling} property
    # @option attributes [String] :data_type_change_handling The value to assign to the {#data_type_change_handling} property
    # @option attributes [BOOLEAN] :is_validation_warning_if_allowed The value to assign to the {#is_validation_warning_if_allowed} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.extra_column_handling = attributes[:'extraColumnHandling'] if attributes[:'extraColumnHandling']
      self.extra_column_handling = "ALLOW" if extra_column_handling.nil? && !attributes.key?(:'extraColumnHandling') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :extraColumnHandling and :extra_column_handling' if attributes.key?(:'extraColumnHandling') && attributes.key?(:'extra_column_handling')

      self.extra_column_handling = attributes[:'extra_column_handling'] if attributes[:'extra_column_handling']
      self.extra_column_handling = "ALLOW" if extra_column_handling.nil? && !attributes.key?(:'extraColumnHandling') && !attributes.key?(:'extra_column_handling') # rubocop:disable Style/StringLiterals

      self.missing_column_handling = attributes[:'missingColumnHandling'] if attributes[:'missingColumnHandling']
      self.missing_column_handling = "ALLOW" if missing_column_handling.nil? && !attributes.key?(:'missingColumnHandling') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :missingColumnHandling and :missing_column_handling' if attributes.key?(:'missingColumnHandling') && attributes.key?(:'missing_column_handling')

      self.missing_column_handling = attributes[:'missing_column_handling'] if attributes[:'missing_column_handling']
      self.missing_column_handling = "ALLOW" if missing_column_handling.nil? && !attributes.key?(:'missingColumnHandling') && !attributes.key?(:'missing_column_handling') # rubocop:disable Style/StringLiterals

      self.data_type_change_handling = attributes[:'dataTypeChangeHandling'] if attributes[:'dataTypeChangeHandling']
      self.data_type_change_handling = "ALLOW" if data_type_change_handling.nil? && !attributes.key?(:'dataTypeChangeHandling') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :dataTypeChangeHandling and :data_type_change_handling' if attributes.key?(:'dataTypeChangeHandling') && attributes.key?(:'data_type_change_handling')

      self.data_type_change_handling = attributes[:'data_type_change_handling'] if attributes[:'data_type_change_handling']
      self.data_type_change_handling = "ALLOW" if data_type_change_handling.nil? && !attributes.key?(:'dataTypeChangeHandling') && !attributes.key?(:'data_type_change_handling') # rubocop:disable Style/StringLiterals

      self.is_validation_warning_if_allowed = attributes[:'isValidationWarningIfAllowed'] unless attributes[:'isValidationWarningIfAllowed'].nil?
      self.is_validation_warning_if_allowed = false if is_validation_warning_if_allowed.nil? && !attributes.key?(:'isValidationWarningIfAllowed') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isValidationWarningIfAllowed and :is_validation_warning_if_allowed' if attributes.key?(:'isValidationWarningIfAllowed') && attributes.key?(:'is_validation_warning_if_allowed')

      self.is_validation_warning_if_allowed = attributes[:'is_validation_warning_if_allowed'] unless attributes[:'is_validation_warning_if_allowed'].nil?
      self.is_validation_warning_if_allowed = false if is_validation_warning_if_allowed.nil? && !attributes.key?(:'isValidationWarningIfAllowed') && !attributes.key?(:'is_validation_warning_if_allowed') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] extra_column_handling Object to be assigned
    def extra_column_handling=(extra_column_handling)
      # rubocop:disable Style/ConditionalAssignment
      if extra_column_handling && !EXTRA_COLUMN_HANDLING_ENUM.include?(extra_column_handling)
        OCI.logger.debug("Unknown value for 'extra_column_handling' [" + extra_column_handling + "]. Mapping to 'EXTRA_COLUMN_HANDLING_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @extra_column_handling = EXTRA_COLUMN_HANDLING_UNKNOWN_ENUM_VALUE
      else
        @extra_column_handling = extra_column_handling
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] missing_column_handling Object to be assigned
    def missing_column_handling=(missing_column_handling)
      # rubocop:disable Style/ConditionalAssignment
      if missing_column_handling && !MISSING_COLUMN_HANDLING_ENUM.include?(missing_column_handling)
        OCI.logger.debug("Unknown value for 'missing_column_handling' [" + missing_column_handling + "]. Mapping to 'MISSING_COLUMN_HANDLING_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @missing_column_handling = MISSING_COLUMN_HANDLING_UNKNOWN_ENUM_VALUE
      else
        @missing_column_handling = missing_column_handling
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_type_change_handling Object to be assigned
    def data_type_change_handling=(data_type_change_handling)
      # rubocop:disable Style/ConditionalAssignment
      if data_type_change_handling && !DATA_TYPE_CHANGE_HANDLING_ENUM.include?(data_type_change_handling)
        OCI.logger.debug("Unknown value for 'data_type_change_handling' [" + data_type_change_handling + "]. Mapping to 'DATA_TYPE_CHANGE_HANDLING_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @data_type_change_handling = DATA_TYPE_CHANGE_HANDLING_UNKNOWN_ENUM_VALUE
      else
        @data_type_change_handling = data_type_change_handling
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        extra_column_handling == other.extra_column_handling &&
        missing_column_handling == other.missing_column_handling &&
        data_type_change_handling == other.data_type_change_handling &&
        is_validation_warning_if_allowed == other.is_validation_warning_if_allowed
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
      [extra_column_handling, missing_column_handling, data_type_change_handling, is_validation_warning_if_allowed].hash
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
