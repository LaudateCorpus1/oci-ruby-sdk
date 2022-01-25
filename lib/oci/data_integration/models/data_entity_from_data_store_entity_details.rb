# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'data_entity_details'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The view entity data entity details.
  class DataIntegration::Models::DataEntityFromDataStoreEntityDetails < DataIntegration::Models::DataEntityDetails
    ENTITY_TYPE_ENUM = [
      ENTITY_TYPE_TABLE = 'TABLE'.freeze,
      ENTITY_TYPE_VIEW = 'VIEW'.freeze,
      ENTITY_TYPE_FILE = 'FILE'.freeze,
      ENTITY_TYPE_QUEUE = 'QUEUE'.freeze,
      ENTITY_TYPE_STREAM = 'STREAM'.freeze,
      ENTITY_TYPE_OTHER = 'OTHER'.freeze,
      ENTITY_TYPE_DATA_STORE = 'DATA_STORE'.freeze
    ].freeze

    # The object key.
    # @return [String]
    attr_accessor :key

    # The object's model version.
    # @return [String]
    attr_accessor :model_version

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # The version of the object that is used to track changes in the object instance.
    # @return [Integer]
    attr_accessor :object_version

    # The external key for the object
    # @return [String]
    attr_accessor :external_key

    # @return [OCI::DataIntegration::Models::Shape]
    attr_accessor :shape

    # The shape ID.
    # @return [String]
    attr_accessor :shape_id

    # @return [OCI::DataIntegration::Models::TypeLibrary]
    attr_accessor :types

    # The entity type.
    # @return [String]
    attr_reader :entity_type

    # Specifies other type labels.
    # @return [String]
    attr_accessor :other_type_label

    # An array of unique keys.
    # @return [Array<OCI::DataIntegration::Models::UniqueKey>]
    attr_accessor :unique_keys

    # An array of foreign keys.
    # @return [Array<OCI::DataIntegration::Models::ForeignKey>]
    attr_accessor :foreign_keys

    # The resource name.
    # @return [String]
    attr_accessor :resource_name

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # Value can only contain upper case letters, underscore and numbers. It should begin with upper case letter or underscore. The value can be modified.
    # @return [String]
    attr_accessor :identifier

    # Filters present in the Datastore. It can be Null.
    # @return [String]
    attr_accessor :filters

    # It shows whether or not effective date is disabled
    # @return [BOOLEAN]
    attr_accessor :is_effective_date_disabled

    # It shows whether the datastore is of flex type
    # @return [BOOLEAN]
    attr_accessor :is_flex_data_store

    # It shows whether the extraction of this datastore will stop on error
    # @return [BOOLEAN]
    attr_accessor :is_silent_error

    # It shows whether the datastore supports Incremental Extract or not.
    # @return [BOOLEAN]
    attr_accessor :supports_incremental

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'modelType',
        'key': :'key',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'external_key': :'externalKey',
        'shape': :'shape',
        'shape_id': :'shapeId',
        'types': :'types',
        'entity_type': :'entityType',
        'other_type_label': :'otherTypeLabel',
        'unique_keys': :'uniqueKeys',
        'foreign_keys': :'foreignKeys',
        'resource_name': :'resourceName',
        'object_status': :'objectStatus',
        'identifier': :'identifier',
        'filters': :'filters',
        'is_effective_date_disabled': :'isEffectiveDateDisabled',
        'is_flex_data_store': :'isFlexDataStore',
        'is_silent_error': :'isSilentError',
        'supports_incremental': :'supportsIncremental'
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
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'external_key': :'String',
        'shape': :'OCI::DataIntegration::Models::Shape',
        'shape_id': :'String',
        'types': :'OCI::DataIntegration::Models::TypeLibrary',
        'entity_type': :'String',
        'other_type_label': :'String',
        'unique_keys': :'Array<OCI::DataIntegration::Models::UniqueKey>',
        'foreign_keys': :'Array<OCI::DataIntegration::Models::ForeignKey>',
        'resource_name': :'String',
        'object_status': :'Integer',
        'identifier': :'String',
        'filters': :'String',
        'is_effective_date_disabled': :'BOOLEAN',
        'is_flex_data_store': :'BOOLEAN',
        'is_silent_error': :'BOOLEAN',
        'supports_incremental': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :model_version The value to assign to the {#model_version} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Integer] :object_version The value to assign to the {#object_version} property
    # @option attributes [String] :external_key The value to assign to the {#external_key} property
    # @option attributes [OCI::DataIntegration::Models::Shape] :shape The value to assign to the {#shape} property
    # @option attributes [String] :shape_id The value to assign to the {#shape_id} property
    # @option attributes [OCI::DataIntegration::Models::TypeLibrary] :types The value to assign to the {#types} property
    # @option attributes [String] :entity_type The value to assign to the {#entity_type} property
    # @option attributes [String] :other_type_label The value to assign to the {#other_type_label} property
    # @option attributes [Array<OCI::DataIntegration::Models::UniqueKey>] :unique_keys The value to assign to the {#unique_keys} property
    # @option attributes [Array<OCI::DataIntegration::Models::ForeignKey>] :foreign_keys The value to assign to the {#foreign_keys} property
    # @option attributes [String] :resource_name The value to assign to the {#resource_name} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [String] :identifier The value to assign to the {#identifier} property
    # @option attributes [String] :filters The value to assign to the {#filters} property
    # @option attributes [BOOLEAN] :is_effective_date_disabled The value to assign to the {#is_effective_date_disabled} property
    # @option attributes [BOOLEAN] :is_flex_data_store The value to assign to the {#is_flex_data_store} property
    # @option attributes [BOOLEAN] :is_silent_error The value to assign to the {#is_silent_error} property
    # @option attributes [BOOLEAN] :supports_incremental The value to assign to the {#supports_incremental} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['modelType'] = 'DATA_STORE_ENTITY'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.object_version = attributes[:'objectVersion'] if attributes[:'objectVersion']

      raise 'You cannot provide both :objectVersion and :object_version' if attributes.key?(:'objectVersion') && attributes.key?(:'object_version')

      self.object_version = attributes[:'object_version'] if attributes[:'object_version']

      self.external_key = attributes[:'externalKey'] if attributes[:'externalKey']

      raise 'You cannot provide both :externalKey and :external_key' if attributes.key?(:'externalKey') && attributes.key?(:'external_key')

      self.external_key = attributes[:'external_key'] if attributes[:'external_key']

      self.shape = attributes[:'shape'] if attributes[:'shape']

      self.shape_id = attributes[:'shapeId'] if attributes[:'shapeId']

      raise 'You cannot provide both :shapeId and :shape_id' if attributes.key?(:'shapeId') && attributes.key?(:'shape_id')

      self.shape_id = attributes[:'shape_id'] if attributes[:'shape_id']

      self.types = attributes[:'types'] if attributes[:'types']

      self.entity_type = attributes[:'entityType'] if attributes[:'entityType']

      raise 'You cannot provide both :entityType and :entity_type' if attributes.key?(:'entityType') && attributes.key?(:'entity_type')

      self.entity_type = attributes[:'entity_type'] if attributes[:'entity_type']

      self.other_type_label = attributes[:'otherTypeLabel'] if attributes[:'otherTypeLabel']

      raise 'You cannot provide both :otherTypeLabel and :other_type_label' if attributes.key?(:'otherTypeLabel') && attributes.key?(:'other_type_label')

      self.other_type_label = attributes[:'other_type_label'] if attributes[:'other_type_label']

      self.unique_keys = attributes[:'uniqueKeys'] if attributes[:'uniqueKeys']

      raise 'You cannot provide both :uniqueKeys and :unique_keys' if attributes.key?(:'uniqueKeys') && attributes.key?(:'unique_keys')

      self.unique_keys = attributes[:'unique_keys'] if attributes[:'unique_keys']

      self.foreign_keys = attributes[:'foreignKeys'] if attributes[:'foreignKeys']

      raise 'You cannot provide both :foreignKeys and :foreign_keys' if attributes.key?(:'foreignKeys') && attributes.key?(:'foreign_keys')

      self.foreign_keys = attributes[:'foreign_keys'] if attributes[:'foreign_keys']

      self.resource_name = attributes[:'resourceName'] if attributes[:'resourceName']

      raise 'You cannot provide both :resourceName and :resource_name' if attributes.key?(:'resourceName') && attributes.key?(:'resource_name')

      self.resource_name = attributes[:'resource_name'] if attributes[:'resource_name']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.identifier = attributes[:'identifier'] if attributes[:'identifier']

      self.filters = attributes[:'filters'] if attributes[:'filters']

      self.is_effective_date_disabled = attributes[:'isEffectiveDateDisabled'] unless attributes[:'isEffectiveDateDisabled'].nil?

      raise 'You cannot provide both :isEffectiveDateDisabled and :is_effective_date_disabled' if attributes.key?(:'isEffectiveDateDisabled') && attributes.key?(:'is_effective_date_disabled')

      self.is_effective_date_disabled = attributes[:'is_effective_date_disabled'] unless attributes[:'is_effective_date_disabled'].nil?

      self.is_flex_data_store = attributes[:'isFlexDataStore'] unless attributes[:'isFlexDataStore'].nil?

      raise 'You cannot provide both :isFlexDataStore and :is_flex_data_store' if attributes.key?(:'isFlexDataStore') && attributes.key?(:'is_flex_data_store')

      self.is_flex_data_store = attributes[:'is_flex_data_store'] unless attributes[:'is_flex_data_store'].nil?

      self.is_silent_error = attributes[:'isSilentError'] unless attributes[:'isSilentError'].nil?

      raise 'You cannot provide both :isSilentError and :is_silent_error' if attributes.key?(:'isSilentError') && attributes.key?(:'is_silent_error')

      self.is_silent_error = attributes[:'is_silent_error'] unless attributes[:'is_silent_error'].nil?

      self.supports_incremental = attributes[:'supportsIncremental'] unless attributes[:'supportsIncremental'].nil?

      raise 'You cannot provide both :supportsIncremental and :supports_incremental' if attributes.key?(:'supportsIncremental') && attributes.key?(:'supports_incremental')

      self.supports_incremental = attributes[:'supports_incremental'] unless attributes[:'supports_incremental'].nil?
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity_type Object to be assigned
    def entity_type=(entity_type)
      raise "Invalid value for 'entity_type': this must be one of the values in ENTITY_TYPE_ENUM." if entity_type && !ENTITY_TYPE_ENUM.include?(entity_type)

      @entity_type = entity_type
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
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        external_key == other.external_key &&
        shape == other.shape &&
        shape_id == other.shape_id &&
        types == other.types &&
        entity_type == other.entity_type &&
        other_type_label == other.other_type_label &&
        unique_keys == other.unique_keys &&
        foreign_keys == other.foreign_keys &&
        resource_name == other.resource_name &&
        object_status == other.object_status &&
        identifier == other.identifier &&
        filters == other.filters &&
        is_effective_date_disabled == other.is_effective_date_disabled &&
        is_flex_data_store == other.is_flex_data_store &&
        is_silent_error == other.is_silent_error &&
        supports_incremental == other.supports_incremental
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
      [model_type, key, model_version, parent_ref, name, description, object_version, external_key, shape, shape_id, types, entity_type, other_type_label, unique_keys, foreign_keys, resource_name, object_status, identifier, filters, is_effective_date_disabled, is_flex_data_store, is_silent_error, supports_incremental].hash
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
