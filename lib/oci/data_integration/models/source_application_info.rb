# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The information about the application.
  class DataIntegration::Models::SourceApplicationInfo
    # The OCID of the workspace containing the application. This allows cross workspace deployment to publish an application from a different workspace into the current workspace specified in this operation.
    # @return [String]
    attr_accessor :workspace_id

    # The source application key to use when creating the application.
    # @return [String]
    attr_accessor :application_key

    # The source application version of the application.
    # @return [String]
    attr_accessor :application_version

    # The last patch key for the application.
    # @return [String]
    attr_accessor :last_patch_key

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'workspace_id': :'workspaceId',
        'application_key': :'applicationKey',
        'application_version': :'applicationVersion',
        'last_patch_key': :'lastPatchKey'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'workspace_id': :'String',
        'application_key': :'String',
        'application_version': :'String',
        'last_patch_key': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :workspace_id The value to assign to the {#workspace_id} property
    # @option attributes [String] :application_key The value to assign to the {#application_key} property
    # @option attributes [String] :application_version The value to assign to the {#application_version} property
    # @option attributes [String] :last_patch_key The value to assign to the {#last_patch_key} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.workspace_id = attributes[:'workspaceId'] if attributes[:'workspaceId']

      raise 'You cannot provide both :workspaceId and :workspace_id' if attributes.key?(:'workspaceId') && attributes.key?(:'workspace_id')

      self.workspace_id = attributes[:'workspace_id'] if attributes[:'workspace_id']

      self.application_key = attributes[:'applicationKey'] if attributes[:'applicationKey']

      raise 'You cannot provide both :applicationKey and :application_key' if attributes.key?(:'applicationKey') && attributes.key?(:'application_key')

      self.application_key = attributes[:'application_key'] if attributes[:'application_key']

      self.application_version = attributes[:'applicationVersion'] if attributes[:'applicationVersion']

      raise 'You cannot provide both :applicationVersion and :application_version' if attributes.key?(:'applicationVersion') && attributes.key?(:'application_version')

      self.application_version = attributes[:'application_version'] if attributes[:'application_version']

      self.last_patch_key = attributes[:'lastPatchKey'] if attributes[:'lastPatchKey']

      raise 'You cannot provide both :lastPatchKey and :last_patch_key' if attributes.key?(:'lastPatchKey') && attributes.key?(:'last_patch_key')

      self.last_patch_key = attributes[:'last_patch_key'] if attributes[:'last_patch_key']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        workspace_id == other.workspace_id &&
        application_key == other.application_key &&
        application_version == other.application_version &&
        last_patch_key == other.last_patch_key
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
      [workspace_id, application_key, application_version, last_patch_key].hash
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
