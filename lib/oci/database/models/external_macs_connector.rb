# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'external_database_connector'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # An Oracle Cloud Infrastructure resource that uses the [Management Agent cloud service (MACS)](https://docs.cloud.oracle.com/iaas/management-agents/index.html) to connect to an external Oracle Database.
  #
  class Database::Models::ExternalMacsConnector < Database::Models::ExternalDatabaseConnector
    # This attribute is required.
    # @return [OCI::Database::Models::DatabaseConnectionString]
    attr_accessor :connection_string

    # This attribute is required.
    # @return [OCI::Database::Models::DatabaseConnectionCredentials]
    attr_accessor :connection_credentials

    # **[Required]** The ID of the agent used for the
    # {#create_external_database_connector_details create_external_database_connector_details}.
    #
    # @return [String]
    attr_accessor :connector_agent_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'display_name': :'displayName',
        'id': :'id',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails',
        'time_created': :'timeCreated',
        'connector_type': :'connectorType',
        'external_database_id': :'externalDatabaseId',
        'connection_status': :'connectionStatus',
        'time_connection_status_last_updated': :'timeConnectionStatusLastUpdated',
        'connection_string': :'connectionString',
        'connection_credentials': :'connectionCredentials',
        'connector_agent_id': :'connectorAgentId'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'display_name': :'String',
        'id': :'String',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String',
        'time_created': :'DateTime',
        'connector_type': :'String',
        'external_database_id': :'String',
        'connection_status': :'String',
        'time_connection_status_last_updated': :'DateTime',
        'connection_string': :'OCI::Database::Models::DatabaseConnectionString',
        'connection_credentials': :'OCI::Database::Models::DatabaseConnectionCredentials',
        'connector_agent_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#compartment_id #compartment_id} proprety
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#freeform_tags #freeform_tags} proprety
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#defined_tags #defined_tags} proprety
    # @option attributes [String] :display_name The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#display_name #display_name} proprety
    # @option attributes [String] :id The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#id #id} proprety
    # @option attributes [String] :lifecycle_state The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#lifecycle_state #lifecycle_state} proprety
    # @option attributes [String] :lifecycle_details The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#lifecycle_details #lifecycle_details} proprety
    # @option attributes [DateTime] :time_created The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#time_created #time_created} proprety
    # @option attributes [String] :external_database_id The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#external_database_id #external_database_id} proprety
    # @option attributes [String] :connection_status The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#connection_status #connection_status} proprety
    # @option attributes [DateTime] :time_connection_status_last_updated The value to assign to the {OCI::Database::Models::ExternalDatabaseConnector#time_connection_status_last_updated #time_connection_status_last_updated} proprety
    # @option attributes [OCI::Database::Models::DatabaseConnectionString] :connection_string The value to assign to the {#connection_string} property
    # @option attributes [OCI::Database::Models::DatabaseConnectionCredentials] :connection_credentials The value to assign to the {#connection_credentials} property
    # @option attributes [String] :connector_agent_id The value to assign to the {#connector_agent_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['connectorType'] = 'MACS'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.connection_string = attributes[:'connectionString'] if attributes[:'connectionString']

      raise 'You cannot provide both :connectionString and :connection_string' if attributes.key?(:'connectionString') && attributes.key?(:'connection_string')

      self.connection_string = attributes[:'connection_string'] if attributes[:'connection_string']

      self.connection_credentials = attributes[:'connectionCredentials'] if attributes[:'connectionCredentials']

      raise 'You cannot provide both :connectionCredentials and :connection_credentials' if attributes.key?(:'connectionCredentials') && attributes.key?(:'connection_credentials')

      self.connection_credentials = attributes[:'connection_credentials'] if attributes[:'connection_credentials']

      self.connector_agent_id = attributes[:'connectorAgentId'] if attributes[:'connectorAgentId']

      raise 'You cannot provide both :connectorAgentId and :connector_agent_id' if attributes.key?(:'connectorAgentId') && attributes.key?(:'connector_agent_id')

      self.connector_agent_id = attributes[:'connector_agent_id'] if attributes[:'connector_agent_id']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        compartment_id == other.compartment_id &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        display_name == other.display_name &&
        id == other.id &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details &&
        time_created == other.time_created &&
        connector_type == other.connector_type &&
        external_database_id == other.external_database_id &&
        connection_status == other.connection_status &&
        time_connection_status_last_updated == other.time_connection_status_last_updated &&
        connection_string == other.connection_string &&
        connection_credentials == other.connection_credentials &&
        connector_agent_id == other.connector_agent_id
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
      [compartment_id, freeform_tags, defined_tags, display_name, id, lifecycle_state, lifecycle_details, time_created, connector_type, external_database_id, connection_status, time_connection_status_last_updated, connection_string, connection_credentials, connector_agent_id].hash
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