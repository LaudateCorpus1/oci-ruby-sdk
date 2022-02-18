# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'format_entry'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The Deterministic Encryption masking format encrypts column data using a cryptographic
  # key and Advanced Encryption Standard (AES 128). It can be used to encrypt character and
  # number columns. It can encrypt ASCII data without any input (except seed value), but it
  # needs a regular expression to encrypt non-ASCII data.
  #
  # Deterministic Encryption is a format-preserving, deterministic and reversible masking
  # format, which requires a seed value while submitting a masking work request. Passing
  # the same seed value when masking multiple times or masking different databases ensures
  # that the data is masked deterministically. To learn more, check Deterministic Encryption
  # in the Data Safe documentation.
  #
  class DataSafe::Models::DeterministicEncryptionFormatEntry < DataSafe::Models::FormatEntry
    # The regular expression to be used for masking. For data with characters in the
    # ASCII character set, providing a regular expression is optional. However, it
    # is required if the data contains multi-byte characters. If not provided, an
    # error is returned when a multi-byte character is found.
    #
    # In the case of ASCII characters, if a regular expression is not provided,
    # Deterministic Encryption can encrypt variable-length column values while
    # preserving their original format.
    #
    # If a regular expression is provided, the column values in all the rows must match
    # the regular expression. Deterministic Encryption supports a subset of the regular
    # expression language. It supports encryption of fixed-length strings, and does not
    # support * or + syntax of regular expressions. The encrypted values also match the
    # regular expression, which helps to ensure that the original format is preserved.
    # If an original value does not match the regular expression, Deterministic Encryption
    # might not produce a one-to-one mapping. All non-confirming values are mapped to a
    # single encrypted value, thereby producing a many-to-one mapping.
    #
    # @return [String]
    attr_accessor :regular_expression

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'type': :'type',
        'description': :'description',
        'regular_expression': :'regularExpression'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'type': :'String',
        'description': :'String',
        'regular_expression': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :description The value to assign to the {OCI::DataSafe::Models::FormatEntry#description #description} proprety
    # @option attributes [String] :regular_expression The value to assign to the {#regular_expression} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['type'] = 'DETERMINISTIC_ENCRYPTION'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.regular_expression = attributes[:'regularExpression'] if attributes[:'regularExpression']

      raise 'You cannot provide both :regularExpression and :regular_expression' if attributes.key?(:'regularExpression') && attributes.key?(:'regular_expression')

      self.regular_expression = attributes[:'regular_expression'] if attributes[:'regular_expression']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        type == other.type &&
        description == other.description &&
        regular_expression == other.regular_expression
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
      [type, description, regular_expression].hash
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