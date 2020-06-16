# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'
require_relative 'static_public_key'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A JSON Web Key that represents the public key used for verifying the JWT signature.
  class Apigateway::Models::JsonWebKey < Apigateway::Models::StaticPublicKey
    KTY_ENUM = [
      KTY_RSA = 'RSA'.freeze,
      KTY_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    USE_ENUM = [
      USE_SIG = 'sig'.freeze,
      USE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    KEY_OPS_ENUM = [
      KEY_OPS_VERIFY = 'verify'.freeze,
      KEY_OPS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The key type.
    # @return [String]
    attr_reader :kty

    # The intended use of the public key.
    # @return [String]
    attr_reader :use

    # The operations for which this key is to be used.
    # @return [Array<String>]
    attr_reader :key_ops

    # **[Required]** The algorithm intended for use with this key.
    # @return [String]
    attr_accessor :alg

    # **[Required]** The base64 url encoded modulus of the RSA public key represented
    # by this key.
    #
    # @return [String]
    attr_accessor :n

    # **[Required]** The base64 url encoded exponent of the RSA public key represented
    # by this key.
    #
    # @return [String]
    attr_accessor :e

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'kid': :'kid',
        'format': :'format',
        'kty': :'kty',
        'use': :'use',
        'key_ops': :'key_ops',
        'alg': :'alg',
        'n': :'n',
        'e': :'e'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'kid': :'String',
        'format': :'String',
        'kty': :'String',
        'use': :'String',
        'key_ops': :'Array<String>',
        'alg': :'String',
        'n': :'String',
        'e': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :kid The value to assign to the {OCI::Apigateway::Models::StaticPublicKey#kid #kid} proprety
    # @option attributes [String] :kty The value to assign to the {#kty} property
    # @option attributes [String] :use The value to assign to the {#use} property
    # @option attributes [Array<String>] :key_ops The value to assign to the {#key_ops} property
    # @option attributes [String] :alg The value to assign to the {#alg} property
    # @option attributes [String] :n The value to assign to the {#n} property
    # @option attributes [String] :e The value to assign to the {#e} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['format'] = 'JSON_WEB_KEY'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.kty = attributes[:'kty'] if attributes[:'kty']

      self.use = attributes[:'use'] if attributes[:'use']

      self.key_ops = attributes[:'key_ops'] if attributes[:'key_ops']

      self.alg = attributes[:'alg'] if attributes[:'alg']

      self.n = attributes[:'n'] if attributes[:'n']

      self.e = attributes[:'e'] if attributes[:'e']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kty Object to be assigned
    def kty=(kty)
      # rubocop:disable Style/ConditionalAssignment
      if kty && !KTY_ENUM.include?(kty)
        OCI.logger.debug("Unknown value for 'kty' [" + kty + "]. Mapping to 'KTY_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @kty = KTY_UNKNOWN_ENUM_VALUE
      else
        @kty = kty
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] use Object to be assigned
    def use=(use)
      # rubocop:disable Style/ConditionalAssignment
      if use && !USE_ENUM.include?(use)
        OCI.logger.debug("Unknown value for 'use' [" + use + "]. Mapping to 'USE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @use = USE_UNKNOWN_ENUM_VALUE
      else
        @use = use
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] key_ops Object to be assigned
    def key_ops=(key_ops)
      # rubocop:disable Style/ConditionalAssignment
      if key_ops.nil?
        @key_ops = nil
      else
        @key_ops =
          key_ops.collect do |item|
            if KEY_OPS_ENUM.include?(item)
              item
            else
              OCI.logger.debug("Unknown value for 'key_ops' [#{item}]. Mapping to 'KEY_OPS_UNKNOWN_ENUM_VALUE'") if OCI.logger
              KEY_OPS_UNKNOWN_ENUM_VALUE
            end
          end
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        kid == other.kid &&
        format == other.format &&
        kty == other.kty &&
        use == other.use &&
        key_ops == other.key_ops &&
        alg == other.alg &&
        n == other.n &&
        e == other.e
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
      [kid, format, kty, use, key_ops, alg, n, e].hash
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
