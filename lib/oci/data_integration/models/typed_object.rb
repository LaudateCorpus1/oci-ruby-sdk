# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The `TypedObject` class is a base class for any model object that has a type.
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class DataIntegration::Models::TypedObject
    MODEL_TYPE_ENUM = [
      MODEL_TYPE_SHAPE = 'SHAPE'.freeze,
      MODEL_TYPE_INPUT_PORT = 'INPUT_PORT'.freeze,
      MODEL_TYPE_SHAPE_FIELD = 'SHAPE_FIELD'.freeze,
      MODEL_TYPE_INPUT_FIELD = 'INPUT_FIELD'.freeze,
      MODEL_TYPE_DERIVED_FIELD = 'DERIVED_FIELD'.freeze,
      MODEL_TYPE_MACRO_FIELD = 'MACRO_FIELD'.freeze,
      MODEL_TYPE_OUTPUT_FIELD = 'OUTPUT_FIELD'.freeze,
      MODEL_TYPE_DYNAMIC_PROXY_FIELD = 'DYNAMIC_PROXY_FIELD'.freeze,
      MODEL_TYPE_OUTPUT_PORT = 'OUTPUT_PORT'.freeze,
      MODEL_TYPE_DYNAMIC_INPUT_FIELD = 'DYNAMIC_INPUT_FIELD'.freeze,
      MODEL_TYPE_PROXY_FIELD = 'PROXY_FIELD'.freeze,
      MODEL_TYPE_PARAMETER = 'PARAMETER'.freeze
    ].freeze

    # **[Required]** The type of the types object.
    # @return [String]
    attr_reader :model_type

    # The key of the object.
    # @return [String]
    attr_accessor :key

    # The model version of an object.
    # @return [String]
    attr_accessor :model_version

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

    # @return [OCI::DataIntegration::Models::ConfigValues]
    attr_accessor :config_values

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'modelType',
        'key': :'key',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'config_values': :'configValues',
        'object_status': :'objectStatus',
        'name': :'name',
        'description': :'description'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'String',
        'key': :'String',
        'model_version': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'config_values': :'OCI::DataIntegration::Models::ConfigValues',
        'object_status': :'Integer',
        'name': :'String',
        'description': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize


    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'modelType'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::DataIntegration::Models::OutputPort' if type == 'OUTPUT_PORT'
      return 'OCI::DataIntegration::Models::DynamicInputField' if type == 'DYNAMIC_INPUT_FIELD'
      return 'OCI::DataIntegration::Models::AbstractField' if type == 'FIELD'
      return 'OCI::DataIntegration::Models::InputField' if type == 'INPUT_FIELD'
      return 'OCI::DataIntegration::Models::Shape' if type == 'SHAPE'
      return 'OCI::DataIntegration::Models::InputPort' if type == 'INPUT_PORT'
      return 'OCI::DataIntegration::Models::ProxyField' if type == 'PROXY_FIELD'
      return 'OCI::DataIntegration::Models::DynamicProxyField' if type == 'DYNAMIC_PROXY_FIELD'
      return 'OCI::DataIntegration::Models::ShapeField' if type == 'SHAPE_FIELD'
      return 'OCI::DataIntegration::Models::Parameter' if type == 'PARAMETER'
      return 'OCI::DataIntegration::Models::OutputField' if type == 'OUTPUT_FIELD'
      return 'OCI::DataIntegration::Models::MacroField' if type == 'MACRO_FIELD'
      return 'OCI::DataIntegration::Models::DerivedField' if type == 'DERIVED_FIELD'
      return 'OCI::DataIntegration::Models::FlowPort' if type == 'FLOW_PORT'

      # TODO: Log a warning when the subtype is not found.
      'OCI::DataIntegration::Models::TypedObject'
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :model_type The value to assign to the {#model_type} property
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :model_version The value to assign to the {#model_version} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [OCI::DataIntegration::Models::ConfigValues] :config_values The value to assign to the {#config_values} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.model_type = attributes[:'modelType'] if attributes[:'modelType']

      raise 'You cannot provide both :modelType and :model_type' if attributes.key?(:'modelType') && attributes.key?(:'model_type')

      self.model_type = attributes[:'model_type'] if attributes[:'model_type']

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.config_values = attributes[:'configValues'] if attributes[:'configValues']

      raise 'You cannot provide both :configValues and :config_values' if attributes.key?(:'configValues') && attributes.key?(:'config_values')

      self.config_values = attributes[:'config_values'] if attributes[:'config_values']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] model_type Object to be assigned
    def model_type=(model_type)
      raise "Invalid value for 'model_type': this must be one of the values in MODEL_TYPE_ENUM." if model_type && !MODEL_TYPE_ENUM.include?(model_type)

      @model_type = model_type
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        model_type == other.model_type &&
        key == other.key &&
        model_version == other.model_version &&
        parent_ref == other.parent_ref &&
        config_values == other.config_values &&
        object_status == other.object_status &&
        name == other.name &&
        description == other.description
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
      [model_type, key, model_version, parent_ref, config_values, object_status, name, description].hash
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
