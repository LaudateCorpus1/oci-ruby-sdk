# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # An instance that is to be detached from an instance pool.
  #
  class Core::Models::DetachInstancePoolInstanceDetails
    # **[Required]** The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance.
    # @return [String]
    attr_accessor :instance_id

    # Whether to decrease the size of the instance pool when the instance is detached. If `true`, the
    # pool size is decreased. If `false`, the pool will provision a new, replacement instance
    # using the pool's instance configuration as a template. Default is `true`.
    #
    # @return [BOOLEAN]
    attr_accessor :is_decrement_size

    # Whether to permanently terminate (delete) the instance and its attached boot volume
    # when detaching it from the instance pool. Default is `false`.
    #
    # @return [BOOLEAN]
    attr_accessor :is_auto_terminate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'instance_id': :'instanceId',
        'is_decrement_size': :'isDecrementSize',
        'is_auto_terminate': :'isAutoTerminate'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'instance_id': :'String',
        'is_decrement_size': :'BOOLEAN',
        'is_auto_terminate': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :instance_id The value to assign to the {#instance_id} property
    # @option attributes [BOOLEAN] :is_decrement_size The value to assign to the {#is_decrement_size} property
    # @option attributes [BOOLEAN] :is_auto_terminate The value to assign to the {#is_auto_terminate} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.instance_id = attributes[:'instanceId'] if attributes[:'instanceId']

      raise 'You cannot provide both :instanceId and :instance_id' if attributes.key?(:'instanceId') && attributes.key?(:'instance_id')

      self.instance_id = attributes[:'instance_id'] if attributes[:'instance_id']

      self.is_decrement_size = attributes[:'isDecrementSize'] unless attributes[:'isDecrementSize'].nil?
      self.is_decrement_size = true if is_decrement_size.nil? && !attributes.key?(:'isDecrementSize') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isDecrementSize and :is_decrement_size' if attributes.key?(:'isDecrementSize') && attributes.key?(:'is_decrement_size')

      self.is_decrement_size = attributes[:'is_decrement_size'] unless attributes[:'is_decrement_size'].nil?
      self.is_decrement_size = true if is_decrement_size.nil? && !attributes.key?(:'isDecrementSize') && !attributes.key?(:'is_decrement_size') # rubocop:disable Style/StringLiterals

      self.is_auto_terminate = attributes[:'isAutoTerminate'] unless attributes[:'isAutoTerminate'].nil?
      self.is_auto_terminate = false if is_auto_terminate.nil? && !attributes.key?(:'isAutoTerminate') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isAutoTerminate and :is_auto_terminate' if attributes.key?(:'isAutoTerminate') && attributes.key?(:'is_auto_terminate')

      self.is_auto_terminate = attributes[:'is_auto_terminate'] unless attributes[:'is_auto_terminate'].nil?
      self.is_auto_terminate = false if is_auto_terminate.nil? && !attributes.key?(:'isAutoTerminate') && !attributes.key?(:'is_auto_terminate') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        instance_id == other.instance_id &&
        is_decrement_size == other.is_decrement_size &&
        is_auto_terminate == other.is_auto_terminate
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
      [instance_id, is_decrement_size, is_auto_terminate].hash
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
