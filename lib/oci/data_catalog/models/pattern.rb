# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Pattern representation. A Pattern is defined using an expression and can be used as data selectors or filters
  # to provide a singular view of an entity across multiple physical data artifacts.
  #
  class DataCatalog::Models::Pattern
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_MOVING = 'MOVING'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique pattern key that is immutable.
    # @return [String]
    attr_accessor :key

    # A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of the pattern.
    # @return [String]
    attr_accessor :description

    # The data catalog's OCID.
    # @return [String]
    attr_accessor :catalog_id

    # The current state of the data asset.
    # @return [String]
    attr_reader :lifecycle_state

    # The date and time the pattern was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The last time that any change was made to the pattern. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    #
    # @return [DateTime]
    attr_accessor :time_updated

    # OCID of the user who created the pattern.
    # @return [String]
    attr_accessor :created_by_id

    # OCID of the user who last modified the pattern.
    # @return [String]
    attr_accessor :updated_by_id

    # The expression used in the pattern that may include qualifiers. Refer to the user documentation for details of the format and examples.
    #
    # @return [String]
    attr_accessor :expression

    # List of file paths against which the expression can be tried, as a check. This documents, for reference
    # purposes, some example objects a pattern is meant to work with. If isEnableCheckFailureLimit is set to true,
    # this will be run as a validation during the request, such that if the check fails the request fails. If
    # isEnableCheckFailureLimit instead is set to (the default) false, a pattern will still be created or updated even
    # if the check fails, with a lifecycleState of FAILED.
    #
    # @return [Array<String>]
    attr_accessor :check_file_path_list

    # Indicates whether the expression check, against the checkFilePathList, will fail the request if the count of
    # UNMATCHED files is above the checkFailureLimit.
    #
    # @return [BOOLEAN]
    attr_accessor :is_enable_check_failure_limit

    # The maximum number of UNMATCHED files, in checkFilePathList, above which the check fails. Optional, if
    # checkFilePathList is provided - but if isEnableCheckFailureLimit is set to true it is required.
    #
    # @return [Integer]
    attr_accessor :check_failure_limit

    # A map of maps that contains the properties which are specific to the pattern type. Each pattern type
    # definition defines it's set of required and optional properties.
    # Example: `{\"properties\": { \"default\": { \"tbd\"}}}`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'display_name': :'displayName',
        'description': :'description',
        'catalog_id': :'catalogId',
        'lifecycle_state': :'lifecycleState',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'created_by_id': :'createdById',
        'updated_by_id': :'updatedById',
        'expression': :'expression',
        'check_file_path_list': :'checkFilePathList',
        'is_enable_check_failure_limit': :'isEnableCheckFailureLimit',
        'check_failure_limit': :'checkFailureLimit',
        'properties': :'properties'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'display_name': :'String',
        'description': :'String',
        'catalog_id': :'String',
        'lifecycle_state': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'created_by_id': :'String',
        'updated_by_id': :'String',
        'expression': :'String',
        'check_file_path_list': :'Array<String>',
        'is_enable_check_failure_limit': :'BOOLEAN',
        'check_failure_limit': :'Integer',
        'properties': :'Hash<String, Hash<String, String>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :catalog_id The value to assign to the {#catalog_id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :created_by_id The value to assign to the {#created_by_id} property
    # @option attributes [String] :updated_by_id The value to assign to the {#updated_by_id} property
    # @option attributes [String] :expression The value to assign to the {#expression} property
    # @option attributes [Array<String>] :check_file_path_list The value to assign to the {#check_file_path_list} property
    # @option attributes [BOOLEAN] :is_enable_check_failure_limit The value to assign to the {#is_enable_check_failure_limit} property
    # @option attributes [Integer] :check_failure_limit The value to assign to the {#check_failure_limit} property
    # @option attributes [Hash<String, Hash<String, String>>] :properties The value to assign to the {#properties} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.catalog_id = attributes[:'catalogId'] if attributes[:'catalogId']

      raise 'You cannot provide both :catalogId and :catalog_id' if attributes.key?(:'catalogId') && attributes.key?(:'catalog_id')

      self.catalog_id = attributes[:'catalog_id'] if attributes[:'catalog_id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.created_by_id = attributes[:'createdById'] if attributes[:'createdById']

      raise 'You cannot provide both :createdById and :created_by_id' if attributes.key?(:'createdById') && attributes.key?(:'created_by_id')

      self.created_by_id = attributes[:'created_by_id'] if attributes[:'created_by_id']

      self.updated_by_id = attributes[:'updatedById'] if attributes[:'updatedById']

      raise 'You cannot provide both :updatedById and :updated_by_id' if attributes.key?(:'updatedById') && attributes.key?(:'updated_by_id')

      self.updated_by_id = attributes[:'updated_by_id'] if attributes[:'updated_by_id']

      self.expression = attributes[:'expression'] if attributes[:'expression']

      self.check_file_path_list = attributes[:'checkFilePathList'] if attributes[:'checkFilePathList']

      raise 'You cannot provide both :checkFilePathList and :check_file_path_list' if attributes.key?(:'checkFilePathList') && attributes.key?(:'check_file_path_list')

      self.check_file_path_list = attributes[:'check_file_path_list'] if attributes[:'check_file_path_list']

      self.is_enable_check_failure_limit = attributes[:'isEnableCheckFailureLimit'] unless attributes[:'isEnableCheckFailureLimit'].nil?
      self.is_enable_check_failure_limit = false if is_enable_check_failure_limit.nil? && !attributes.key?(:'isEnableCheckFailureLimit') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isEnableCheckFailureLimit and :is_enable_check_failure_limit' if attributes.key?(:'isEnableCheckFailureLimit') && attributes.key?(:'is_enable_check_failure_limit')

      self.is_enable_check_failure_limit = attributes[:'is_enable_check_failure_limit'] unless attributes[:'is_enable_check_failure_limit'].nil?
      self.is_enable_check_failure_limit = false if is_enable_check_failure_limit.nil? && !attributes.key?(:'isEnableCheckFailureLimit') && !attributes.key?(:'is_enable_check_failure_limit') # rubocop:disable Style/StringLiterals

      self.check_failure_limit = attributes[:'checkFailureLimit'] if attributes[:'checkFailureLimit']

      raise 'You cannot provide both :checkFailureLimit and :check_failure_limit' if attributes.key?(:'checkFailureLimit') && attributes.key?(:'check_failure_limit')

      self.check_failure_limit = attributes[:'check_failure_limit'] if attributes[:'check_failure_limit']

      self.properties = attributes[:'properties'] if attributes[:'properties']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        display_name == other.display_name &&
        description == other.description &&
        catalog_id == other.catalog_id &&
        lifecycle_state == other.lifecycle_state &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        created_by_id == other.created_by_id &&
        updated_by_id == other.updated_by_id &&
        expression == other.expression &&
        check_file_path_list == other.check_file_path_list &&
        is_enable_check_failure_limit == other.is_enable_check_failure_limit &&
        check_failure_limit == other.check_failure_limit &&
        properties == other.properties
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
      [key, display_name, description, catalog_id, lifecycle_state, time_created, time_updated, created_by_id, updated_by_id, expression, check_file_path_list, is_enable_check_failure_limit, check_failure_limit, properties].hash
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