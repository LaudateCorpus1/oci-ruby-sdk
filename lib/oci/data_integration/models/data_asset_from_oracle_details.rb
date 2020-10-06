# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'data_asset'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details for the Oracle Database data asset type.
  class DataIntegration::Models::DataAssetFromOracleDetails < DataIntegration::Models::DataAsset
    # The Oracle Database hostname.
    # @return [String]
    attr_accessor :host

    # The Oracle Database port.
    # @return [String]
    attr_accessor :port

    # The Oracle Database service name.
    # @return [String]
    attr_accessor :service_name

    # The Oracle Database driver class.
    # @return [String]
    attr_accessor :driver_class

    # The Oracle Database SID.
    # @return [String]
    attr_accessor :sid

    # The credential file content from a wallet for the data asset.
    # @return [String]
    attr_accessor :credential_file_content

    # @return [OCI::DataIntegration::Models::ConnectionFromOracleDetails]
    attr_accessor :default_connection

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'modelType',
        'key': :'key',
        'model_version': :'modelVersion',
        'name': :'name',
        'description': :'description',
        'object_status': :'objectStatus',
        'identifier': :'identifier',
        'external_key': :'externalKey',
        'asset_properties': :'assetProperties',
        'native_type_system': :'nativeTypeSystem',
        'object_version': :'objectVersion',
        'parent_ref': :'parentRef',
        'metadata': :'metadata',
        'key_map': :'keyMap',
        'host': :'host',
        'port': :'port',
        'service_name': :'serviceName',
        'driver_class': :'driverClass',
        'sid': :'sid',
        'credential_file_content': :'credentialFileContent',
        'default_connection': :'defaultConnection'
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
        'name': :'String',
        'description': :'String',
        'object_status': :'Integer',
        'identifier': :'String',
        'external_key': :'String',
        'asset_properties': :'Hash<String, String>',
        'native_type_system': :'OCI::DataIntegration::Models::TypeSystem',
        'object_version': :'Integer',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'metadata': :'OCI::DataIntegration::Models::ObjectMetadata',
        'key_map': :'Hash<String, String>',
        'host': :'String',
        'port': :'String',
        'service_name': :'String',
        'driver_class': :'String',
        'sid': :'String',
        'credential_file_content': :'String',
        'default_connection': :'OCI::DataIntegration::Models::ConnectionFromOracleDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {OCI::DataIntegration::Models::DataAsset#key #key} proprety
    # @option attributes [String] :model_version The value to assign to the {OCI::DataIntegration::Models::DataAsset#model_version #model_version} proprety
    # @option attributes [String] :name The value to assign to the {OCI::DataIntegration::Models::DataAsset#name #name} proprety
    # @option attributes [String] :description The value to assign to the {OCI::DataIntegration::Models::DataAsset#description #description} proprety
    # @option attributes [Integer] :object_status The value to assign to the {OCI::DataIntegration::Models::DataAsset#object_status #object_status} proprety
    # @option attributes [String] :identifier The value to assign to the {OCI::DataIntegration::Models::DataAsset#identifier #identifier} proprety
    # @option attributes [String] :external_key The value to assign to the {OCI::DataIntegration::Models::DataAsset#external_key #external_key} proprety
    # @option attributes [Hash<String, String>] :asset_properties The value to assign to the {OCI::DataIntegration::Models::DataAsset#asset_properties #asset_properties} proprety
    # @option attributes [OCI::DataIntegration::Models::TypeSystem] :native_type_system The value to assign to the {OCI::DataIntegration::Models::DataAsset#native_type_system #native_type_system} proprety
    # @option attributes [Integer] :object_version The value to assign to the {OCI::DataIntegration::Models::DataAsset#object_version #object_version} proprety
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {OCI::DataIntegration::Models::DataAsset#parent_ref #parent_ref} proprety
    # @option attributes [OCI::DataIntegration::Models::ObjectMetadata] :metadata The value to assign to the {OCI::DataIntegration::Models::DataAsset#metadata #metadata} proprety
    # @option attributes [Hash<String, String>] :key_map The value to assign to the {OCI::DataIntegration::Models::DataAsset#key_map #key_map} proprety
    # @option attributes [String] :host The value to assign to the {#host} property
    # @option attributes [String] :port The value to assign to the {#port} property
    # @option attributes [String] :service_name The value to assign to the {#service_name} property
    # @option attributes [String] :driver_class The value to assign to the {#driver_class} property
    # @option attributes [String] :sid The value to assign to the {#sid} property
    # @option attributes [String] :credential_file_content The value to assign to the {#credential_file_content} property
    # @option attributes [OCI::DataIntegration::Models::ConnectionFromOracleDetails] :default_connection The value to assign to the {#default_connection} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['modelType'] = 'ORACLE_DATA_ASSET'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.host = attributes[:'host'] if attributes[:'host']

      self.port = attributes[:'port'] if attributes[:'port']

      self.service_name = attributes[:'serviceName'] if attributes[:'serviceName']

      raise 'You cannot provide both :serviceName and :service_name' if attributes.key?(:'serviceName') && attributes.key?(:'service_name')

      self.service_name = attributes[:'service_name'] if attributes[:'service_name']

      self.driver_class = attributes[:'driverClass'] if attributes[:'driverClass']

      raise 'You cannot provide both :driverClass and :driver_class' if attributes.key?(:'driverClass') && attributes.key?(:'driver_class')

      self.driver_class = attributes[:'driver_class'] if attributes[:'driver_class']

      self.sid = attributes[:'sid'] if attributes[:'sid']

      self.credential_file_content = attributes[:'credentialFileContent'] if attributes[:'credentialFileContent']

      raise 'You cannot provide both :credentialFileContent and :credential_file_content' if attributes.key?(:'credentialFileContent') && attributes.key?(:'credential_file_content')

      self.credential_file_content = attributes[:'credential_file_content'] if attributes[:'credential_file_content']

      self.default_connection = attributes[:'defaultConnection'] if attributes[:'defaultConnection']

      raise 'You cannot provide both :defaultConnection and :default_connection' if attributes.key?(:'defaultConnection') && attributes.key?(:'default_connection')

      self.default_connection = attributes[:'default_connection'] if attributes[:'default_connection']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        model_type == other.model_type &&
        key == other.key &&
        model_version == other.model_version &&
        name == other.name &&
        description == other.description &&
        object_status == other.object_status &&
        identifier == other.identifier &&
        external_key == other.external_key &&
        asset_properties == other.asset_properties &&
        native_type_system == other.native_type_system &&
        object_version == other.object_version &&
        parent_ref == other.parent_ref &&
        metadata == other.metadata &&
        key_map == other.key_map &&
        host == other.host &&
        port == other.port &&
        service_name == other.service_name &&
        driver_class == other.driver_class &&
        sid == other.sid &&
        credential_file_content == other.credential_file_content &&
        default_connection == other.default_connection
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
      [model_type, key, model_version, name, description, object_status, identifier, external_key, asset_properties, native_type_system, object_version, parent_ref, metadata, key_map, host, port, service_name, driver_class, sid, credential_file_content, default_connection].hash
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
