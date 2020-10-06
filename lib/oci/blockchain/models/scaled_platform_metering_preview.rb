# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Blockchain Platform Metering Preview after Scaling
  class Blockchain::Models::ScaledPlatformMeteringPreview
    # Number of total OCPU allocation for the blockchain platform
    # @return [Float]
    attr_accessor :total_ocpu_allocation

    # Number of total OCPU allocation for the blockchain platform after Scaling
    # @return [Float]
    attr_accessor :total_ocpu_allocation_post_scaling

    # Current Storage metered units in TBs
    # @return [Float]
    attr_accessor :storage_metered_units

    # Extra Storage units required in TBs
    # @return [Float]
    attr_accessor :extra_storage_metered_units

    # Total Post Scaling Storage metered units in TBs
    # @return [Float]
    attr_accessor :storage_metered_units_post_scaling

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'total_ocpu_allocation': :'totalOcpuAllocation',
        'total_ocpu_allocation_post_scaling': :'totalOcpuAllocationPostScaling',
        'storage_metered_units': :'storageMeteredUnits',
        'extra_storage_metered_units': :'extraStorageMeteredUnits',
        'storage_metered_units_post_scaling': :'storageMeteredUnitsPostScaling'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'total_ocpu_allocation': :'Float',
        'total_ocpu_allocation_post_scaling': :'Float',
        'storage_metered_units': :'Float',
        'extra_storage_metered_units': :'Float',
        'storage_metered_units_post_scaling': :'Float'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Float] :total_ocpu_allocation The value to assign to the {#total_ocpu_allocation} property
    # @option attributes [Float] :total_ocpu_allocation_post_scaling The value to assign to the {#total_ocpu_allocation_post_scaling} property
    # @option attributes [Float] :storage_metered_units The value to assign to the {#storage_metered_units} property
    # @option attributes [Float] :extra_storage_metered_units The value to assign to the {#extra_storage_metered_units} property
    # @option attributes [Float] :storage_metered_units_post_scaling The value to assign to the {#storage_metered_units_post_scaling} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.total_ocpu_allocation = attributes[:'totalOcpuAllocation'] if attributes[:'totalOcpuAllocation']

      raise 'You cannot provide both :totalOcpuAllocation and :total_ocpu_allocation' if attributes.key?(:'totalOcpuAllocation') && attributes.key?(:'total_ocpu_allocation')

      self.total_ocpu_allocation = attributes[:'total_ocpu_allocation'] if attributes[:'total_ocpu_allocation']

      self.total_ocpu_allocation_post_scaling = attributes[:'totalOcpuAllocationPostScaling'] if attributes[:'totalOcpuAllocationPostScaling']

      raise 'You cannot provide both :totalOcpuAllocationPostScaling and :total_ocpu_allocation_post_scaling' if attributes.key?(:'totalOcpuAllocationPostScaling') && attributes.key?(:'total_ocpu_allocation_post_scaling')

      self.total_ocpu_allocation_post_scaling = attributes[:'total_ocpu_allocation_post_scaling'] if attributes[:'total_ocpu_allocation_post_scaling']

      self.storage_metered_units = attributes[:'storageMeteredUnits'] if attributes[:'storageMeteredUnits']

      raise 'You cannot provide both :storageMeteredUnits and :storage_metered_units' if attributes.key?(:'storageMeteredUnits') && attributes.key?(:'storage_metered_units')

      self.storage_metered_units = attributes[:'storage_metered_units'] if attributes[:'storage_metered_units']

      self.extra_storage_metered_units = attributes[:'extraStorageMeteredUnits'] if attributes[:'extraStorageMeteredUnits']

      raise 'You cannot provide both :extraStorageMeteredUnits and :extra_storage_metered_units' if attributes.key?(:'extraStorageMeteredUnits') && attributes.key?(:'extra_storage_metered_units')

      self.extra_storage_metered_units = attributes[:'extra_storage_metered_units'] if attributes[:'extra_storage_metered_units']

      self.storage_metered_units_post_scaling = attributes[:'storageMeteredUnitsPostScaling'] if attributes[:'storageMeteredUnitsPostScaling']

      raise 'You cannot provide both :storageMeteredUnitsPostScaling and :storage_metered_units_post_scaling' if attributes.key?(:'storageMeteredUnitsPostScaling') && attributes.key?(:'storage_metered_units_post_scaling')

      self.storage_metered_units_post_scaling = attributes[:'storage_metered_units_post_scaling'] if attributes[:'storage_metered_units_post_scaling']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        total_ocpu_allocation == other.total_ocpu_allocation &&
        total_ocpu_allocation_post_scaling == other.total_ocpu_allocation_post_scaling &&
        storage_metered_units == other.storage_metered_units &&
        extra_storage_metered_units == other.extra_storage_metered_units &&
        storage_metered_units_post_scaling == other.storage_metered_units_post_scaling
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
      [total_ocpu_allocation, total_ocpu_allocation_post_scaling, storage_metered_units, extra_storage_metered_units, storage_metered_units_post_scaling].hash
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
