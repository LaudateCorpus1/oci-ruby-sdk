# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The supported Autonomous Database version.
  #
  class Database::Models::AutonomousDbVersionSummary
    DB_WORKLOAD_ENUM = [
      DB_WORKLOAD_OLTP = 'OLTP'.freeze,
      DB_WORKLOAD_DW = 'DW'.freeze,
      DB_WORKLOAD_AJD = 'AJD'.freeze,
      DB_WORKLOAD_APEX = 'APEX'.freeze,
      DB_WORKLOAD_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** A valid Oracle Database version for Autonomous Database.
    # @return [String]
    attr_accessor :version

    # The Autonomous Database workload type. The following values are valid:
    #
    # - OLTP - indicates an Autonomous Transaction Processing database
    # - DW - indicates an Autonomous Data Warehouse database
    # - AJD - indicates an Autonomous JSON Database
    # - APEX - indicates an Autonomous Database with the Oracle Application Express (APEX) workload type.
    #
    # @return [String]
    attr_reader :db_workload

    # True if the database uses [dedicated Exadata infrastructure](https://docs.cloud.oracle.com/Content/Database/Concepts/adbddoverview.htm).
    #
    # @return [BOOLEAN]
    attr_accessor :is_dedicated

    # A URL that points to a detailed description of the Autonomous Database version.
    # @return [String]
    attr_accessor :details

    # True if this version of the Oracle Database software can be used for Always-Free Autonomous Databases.
    # @return [BOOLEAN]
    attr_accessor :is_free_tier_enabled

    # True if this version of the Oracle Database software has payments enabled.
    # @return [BOOLEAN]
    attr_accessor :is_paid_enabled

    # True if this version of the Oracle Database software's default is free.
    # @return [BOOLEAN]
    attr_accessor :is_default_for_free

    # True if this version of the Oracle Database software's default is paid.
    # @return [BOOLEAN]
    attr_accessor :is_default_for_paid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'version': :'version',
        'db_workload': :'dbWorkload',
        'is_dedicated': :'isDedicated',
        'details': :'details',
        'is_free_tier_enabled': :'isFreeTierEnabled',
        'is_paid_enabled': :'isPaidEnabled',
        'is_default_for_free': :'isDefaultForFree',
        'is_default_for_paid': :'isDefaultForPaid'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'version': :'String',
        'db_workload': :'String',
        'is_dedicated': :'BOOLEAN',
        'details': :'String',
        'is_free_tier_enabled': :'BOOLEAN',
        'is_paid_enabled': :'BOOLEAN',
        'is_default_for_free': :'BOOLEAN',
        'is_default_for_paid': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :version The value to assign to the {#version} property
    # @option attributes [String] :db_workload The value to assign to the {#db_workload} property
    # @option attributes [BOOLEAN] :is_dedicated The value to assign to the {#is_dedicated} property
    # @option attributes [String] :details The value to assign to the {#details} property
    # @option attributes [BOOLEAN] :is_free_tier_enabled The value to assign to the {#is_free_tier_enabled} property
    # @option attributes [BOOLEAN] :is_paid_enabled The value to assign to the {#is_paid_enabled} property
    # @option attributes [BOOLEAN] :is_default_for_free The value to assign to the {#is_default_for_free} property
    # @option attributes [BOOLEAN] :is_default_for_paid The value to assign to the {#is_default_for_paid} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.version = attributes[:'version'] if attributes[:'version']

      self.db_workload = attributes[:'dbWorkload'] if attributes[:'dbWorkload']

      raise 'You cannot provide both :dbWorkload and :db_workload' if attributes.key?(:'dbWorkload') && attributes.key?(:'db_workload')

      self.db_workload = attributes[:'db_workload'] if attributes[:'db_workload']

      self.is_dedicated = attributes[:'isDedicated'] unless attributes[:'isDedicated'].nil?

      raise 'You cannot provide both :isDedicated and :is_dedicated' if attributes.key?(:'isDedicated') && attributes.key?(:'is_dedicated')

      self.is_dedicated = attributes[:'is_dedicated'] unless attributes[:'is_dedicated'].nil?

      self.details = attributes[:'details'] if attributes[:'details']

      self.is_free_tier_enabled = attributes[:'isFreeTierEnabled'] unless attributes[:'isFreeTierEnabled'].nil?

      raise 'You cannot provide both :isFreeTierEnabled and :is_free_tier_enabled' if attributes.key?(:'isFreeTierEnabled') && attributes.key?(:'is_free_tier_enabled')

      self.is_free_tier_enabled = attributes[:'is_free_tier_enabled'] unless attributes[:'is_free_tier_enabled'].nil?

      self.is_paid_enabled = attributes[:'isPaidEnabled'] unless attributes[:'isPaidEnabled'].nil?

      raise 'You cannot provide both :isPaidEnabled and :is_paid_enabled' if attributes.key?(:'isPaidEnabled') && attributes.key?(:'is_paid_enabled')

      self.is_paid_enabled = attributes[:'is_paid_enabled'] unless attributes[:'is_paid_enabled'].nil?

      self.is_default_for_free = attributes[:'isDefaultForFree'] unless attributes[:'isDefaultForFree'].nil?

      raise 'You cannot provide both :isDefaultForFree and :is_default_for_free' if attributes.key?(:'isDefaultForFree') && attributes.key?(:'is_default_for_free')

      self.is_default_for_free = attributes[:'is_default_for_free'] unless attributes[:'is_default_for_free'].nil?

      self.is_default_for_paid = attributes[:'isDefaultForPaid'] unless attributes[:'isDefaultForPaid'].nil?

      raise 'You cannot provide both :isDefaultForPaid and :is_default_for_paid' if attributes.key?(:'isDefaultForPaid') && attributes.key?(:'is_default_for_paid')

      self.is_default_for_paid = attributes[:'is_default_for_paid'] unless attributes[:'is_default_for_paid'].nil?
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] db_workload Object to be assigned
    def db_workload=(db_workload)
      # rubocop:disable Style/ConditionalAssignment
      if db_workload && !DB_WORKLOAD_ENUM.include?(db_workload)
        OCI.logger.debug("Unknown value for 'db_workload' [" + db_workload + "]. Mapping to 'DB_WORKLOAD_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @db_workload = DB_WORKLOAD_UNKNOWN_ENUM_VALUE
      else
        @db_workload = db_workload
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        version == other.version &&
        db_workload == other.db_workload &&
        is_dedicated == other.is_dedicated &&
        details == other.details &&
        is_free_tier_enabled == other.is_free_tier_enabled &&
        is_paid_enabled == other.is_paid_enabled &&
        is_default_for_free == other.is_default_for_free &&
        is_default_for_paid == other.is_default_for_paid
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
      [version, db_workload, is_dedicated, details, is_free_tier_enabled, is_paid_enabled, is_default_for_free, is_default_for_paid].hash
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
