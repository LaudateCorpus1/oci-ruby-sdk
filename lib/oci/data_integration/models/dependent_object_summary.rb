# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details of the dependent object.
  class DataIntegration::Models::DependentObjectSummary
    # The user that created the object.
    # @return [String]
    attr_accessor :created_by

    # The user that created the object.
    # @return [String]
    attr_accessor :created_by_name

    # The user that updated the object.
    # @return [String]
    attr_accessor :updated_by

    # The user that updated the object.
    # @return [String]
    attr_accessor :updated_by_name

    # The date and time that the object was created.
    # @return [DateTime]
    attr_accessor :time_created

    # The date and time that the object was updated.
    # @return [DateTime]
    attr_accessor :time_updated

    # The owning object key for this object.
    # @return [String]
    attr_accessor :aggregator_key

    # The full path to identify this object.
    # @return [String]
    attr_accessor :identifier_path

    # Information property fields.
    # @return [Hash<String, String>]
    attr_accessor :info_fields

    # The registry version of the object.
    # @return [Integer]
    attr_accessor :registry_version

    # Labels are keywords or tags that you can add to data assets, dataflows and so on. You can define your own labels and use them to categorize content.
    # @return [Array<String>]
    attr_accessor :labels

    # Specifies whether this object is a favorite or not.
    # @return [BOOLEAN]
    attr_accessor :is_favorite

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'created_by': :'createdBy',
        'created_by_name': :'createdByName',
        'updated_by': :'updatedBy',
        'updated_by_name': :'updatedByName',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'aggregator_key': :'aggregatorKey',
        'identifier_path': :'identifierPath',
        'info_fields': :'infoFields',
        'registry_version': :'registryVersion',
        'labels': :'labels',
        'is_favorite': :'isFavorite'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'created_by': :'String',
        'created_by_name': :'String',
        'updated_by': :'String',
        'updated_by_name': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'aggregator_key': :'String',
        'identifier_path': :'String',
        'info_fields': :'Hash<String, String>',
        'registry_version': :'Integer',
        'labels': :'Array<String>',
        'is_favorite': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :created_by The value to assign to the {#created_by} property
    # @option attributes [String] :created_by_name The value to assign to the {#created_by_name} property
    # @option attributes [String] :updated_by The value to assign to the {#updated_by} property
    # @option attributes [String] :updated_by_name The value to assign to the {#updated_by_name} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :aggregator_key The value to assign to the {#aggregator_key} property
    # @option attributes [String] :identifier_path The value to assign to the {#identifier_path} property
    # @option attributes [Hash<String, String>] :info_fields The value to assign to the {#info_fields} property
    # @option attributes [Integer] :registry_version The value to assign to the {#registry_version} property
    # @option attributes [Array<String>] :labels The value to assign to the {#labels} property
    # @option attributes [BOOLEAN] :is_favorite The value to assign to the {#is_favorite} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      self.created_by = attributes[:'createdBy'] if attributes[:'createdBy']

      raise 'You cannot provide both :createdBy and :created_by' if attributes.key?(:'createdBy') && attributes.key?(:'created_by')

      self.created_by = attributes[:'created_by'] if attributes[:'created_by']

      self.created_by_name = attributes[:'createdByName'] if attributes[:'createdByName']

      raise 'You cannot provide both :createdByName and :created_by_name' if attributes.key?(:'createdByName') && attributes.key?(:'created_by_name')

      self.created_by_name = attributes[:'created_by_name'] if attributes[:'created_by_name']

      self.updated_by = attributes[:'updatedBy'] if attributes[:'updatedBy']

      raise 'You cannot provide both :updatedBy and :updated_by' if attributes.key?(:'updatedBy') && attributes.key?(:'updated_by')

      self.updated_by = attributes[:'updated_by'] if attributes[:'updated_by']

      self.updated_by_name = attributes[:'updatedByName'] if attributes[:'updatedByName']

      raise 'You cannot provide both :updatedByName and :updated_by_name' if attributes.key?(:'updatedByName') && attributes.key?(:'updated_by_name')

      self.updated_by_name = attributes[:'updated_by_name'] if attributes[:'updated_by_name']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.aggregator_key = attributes[:'aggregatorKey'] if attributes[:'aggregatorKey']

      raise 'You cannot provide both :aggregatorKey and :aggregator_key' if attributes.key?(:'aggregatorKey') && attributes.key?(:'aggregator_key')

      self.aggregator_key = attributes[:'aggregator_key'] if attributes[:'aggregator_key']

      self.identifier_path = attributes[:'identifierPath'] if attributes[:'identifierPath']

      raise 'You cannot provide both :identifierPath and :identifier_path' if attributes.key?(:'identifierPath') && attributes.key?(:'identifier_path')

      self.identifier_path = attributes[:'identifier_path'] if attributes[:'identifier_path']

      self.info_fields = attributes[:'infoFields'] if attributes[:'infoFields']

      raise 'You cannot provide both :infoFields and :info_fields' if attributes.key?(:'infoFields') && attributes.key?(:'info_fields')

      self.info_fields = attributes[:'info_fields'] if attributes[:'info_fields']

      self.registry_version = attributes[:'registryVersion'] if attributes[:'registryVersion']

      raise 'You cannot provide both :registryVersion and :registry_version' if attributes.key?(:'registryVersion') && attributes.key?(:'registry_version')

      self.registry_version = attributes[:'registry_version'] if attributes[:'registry_version']

      self.labels = attributes[:'labels'] if attributes[:'labels']

      self.is_favorite = attributes[:'isFavorite'] unless attributes[:'isFavorite'].nil?
      self.is_favorite = false if is_favorite.nil? && !attributes.key?(:'isFavorite') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isFavorite and :is_favorite' if attributes.key?(:'isFavorite') && attributes.key?(:'is_favorite')

      self.is_favorite = attributes[:'is_favorite'] unless attributes[:'is_favorite'].nil?
      self.is_favorite = false if is_favorite.nil? && !attributes.key?(:'isFavorite') && !attributes.key?(:'is_favorite') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        created_by == other.created_by &&
        created_by_name == other.created_by_name &&
        updated_by == other.updated_by &&
        updated_by_name == other.updated_by_name &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        aggregator_key == other.aggregator_key &&
        identifier_path == other.identifier_path &&
        info_fields == other.info_fields &&
        registry_version == other.registry_version &&
        labels == other.labels &&
        is_favorite == other.is_favorite
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
      [created_by, created_by_name, updated_by, updated_by_name, time_created, time_updated, aggregator_key, identifier_path, info_fields, registry_version, labels, is_favorite].hash
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