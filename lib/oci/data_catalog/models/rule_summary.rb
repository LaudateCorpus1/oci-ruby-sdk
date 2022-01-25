# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A list of rule resources. One or more rules can be defined for a data entity.
  # Each rule can be defined on one or more attributes of the data entity.
  #
  class DataCatalog::Models::RuleSummary
    RULE_TYPE_ENUM = [
      RULE_TYPE_PRIMARYKEY = 'PRIMARYKEY'.freeze,
      RULE_TYPE_FOREIGNKEY = 'FOREIGNKEY'.freeze,
      RULE_TYPE_UNIQUEKEY = 'UNIQUEKEY'.freeze,
      RULE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    ORIGIN_TYPE_ENUM = [
      ORIGIN_TYPE_SOURCE = 'SOURCE'.freeze,
      ORIGIN_TYPE_USER = 'USER'.freeze,
      ORIGIN_TYPE_PROFILING = 'PROFILING'.freeze,
      ORIGIN_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

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

    # **[Required]** Immutable unique key of a rule.
    # @return [String]
    attr_accessor :key

    # A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of a rule.
    # @return [String]
    attr_accessor :description

    # Type of a rule.
    # @return [String]
    attr_reader :rule_type

    # External URI that can be used to reference the object. Format will differ based on the type of object.
    #
    # @return [String]
    attr_accessor :external_key

    # Attributes associated with a rule.
    # A UNIQUEKEY rule would contain (at least) one attribute, for the local table column(s) on which uniqueness is defined.
    #
    # @return [Array<OCI::DataCatalog::Models::RuleAttribute>]
    attr_accessor :attributes

    # Folder key that represents the referenced folder, applicable only when rule type FOREIGNKEY.
    # @return [String]
    attr_accessor :referenced_folder_key

    # Folder name that represents the referenced folder, applicable only when rule type FOREIGNKEY.
    # @return [String]
    attr_accessor :referenced_folder_name

    # Entity key that represents the referenced entity, applicable only when rule type is FOREIGNKEY.
    # @return [String]
    attr_accessor :referenced_entity_key

    # Entity name that represents the referenced entity, applicable only when rule type is FOREIGNKEY.
    # @return [String]
    attr_accessor :referenced_entity_name

    # Rule key that represents the referenced rule, applicable only when rule type is FOREIGNKEY.
    # @return [String]
    attr_accessor :referenced_rule_key

    # Rule name that represents the referenced rule, applicable only when rule type is FOREIGNKEY.
    # @return [String]
    attr_accessor :referenced_rule_name

    # Attributes associated with referenced rule, applicable only when rule type is FOREIGNKEY.
    # A FOREIGNKEY rule would contain (at least) one attribute, for the local table column(s), and (at least) one referencedAttribute for referenced table column(s).
    #
    # @return [Array<OCI::DataCatalog::Models::RuleAttribute>]
    attr_accessor :referenced_attributes

    # Origin type of the rule.
    # @return [String]
    attr_reader :origin_type

    # URI to the rule instance in the API.
    # @return [String]
    attr_accessor :uri

    # The date and time the rule was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # State of the rule.
    # @return [String]
    attr_reader :lifecycle_state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'display_name': :'displayName',
        'description': :'description',
        'rule_type': :'ruleType',
        'external_key': :'externalKey',
        'attributes': :'attributes',
        'referenced_folder_key': :'referencedFolderKey',
        'referenced_folder_name': :'referencedFolderName',
        'referenced_entity_key': :'referencedEntityKey',
        'referenced_entity_name': :'referencedEntityName',
        'referenced_rule_key': :'referencedRuleKey',
        'referenced_rule_name': :'referencedRuleName',
        'referenced_attributes': :'referencedAttributes',
        'origin_type': :'originType',
        'uri': :'uri',
        'time_created': :'timeCreated',
        'lifecycle_state': :'lifecycleState'
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
        'rule_type': :'String',
        'external_key': :'String',
        'attributes': :'Array<OCI::DataCatalog::Models::RuleAttribute>',
        'referenced_folder_key': :'String',
        'referenced_folder_name': :'String',
        'referenced_entity_key': :'String',
        'referenced_entity_name': :'String',
        'referenced_rule_key': :'String',
        'referenced_rule_name': :'String',
        'referenced_attributes': :'Array<OCI::DataCatalog::Models::RuleAttribute>',
        'origin_type': :'String',
        'uri': :'String',
        'time_created': :'DateTime',
        'lifecycle_state': :'String'
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
    # @option attributes [String] :rule_type The value to assign to the {#rule_type} property
    # @option attributes [String] :external_key The value to assign to the {#external_key} property
    # @option attributes [Array<OCI::DataCatalog::Models::RuleAttribute>] :attributes The value to assign to the {#attributes} property
    # @option attributes [String] :referenced_folder_key The value to assign to the {#referenced_folder_key} property
    # @option attributes [String] :referenced_folder_name The value to assign to the {#referenced_folder_name} property
    # @option attributes [String] :referenced_entity_key The value to assign to the {#referenced_entity_key} property
    # @option attributes [String] :referenced_entity_name The value to assign to the {#referenced_entity_name} property
    # @option attributes [String] :referenced_rule_key The value to assign to the {#referenced_rule_key} property
    # @option attributes [String] :referenced_rule_name The value to assign to the {#referenced_rule_name} property
    # @option attributes [Array<OCI::DataCatalog::Models::RuleAttribute>] :referenced_attributes The value to assign to the {#referenced_attributes} property
    # @option attributes [String] :origin_type The value to assign to the {#origin_type} property
    # @option attributes [String] :uri The value to assign to the {#uri} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.rule_type = attributes[:'ruleType'] if attributes[:'ruleType']

      raise 'You cannot provide both :ruleType and :rule_type' if attributes.key?(:'ruleType') && attributes.key?(:'rule_type')

      self.rule_type = attributes[:'rule_type'] if attributes[:'rule_type']

      self.external_key = attributes[:'externalKey'] if attributes[:'externalKey']

      raise 'You cannot provide both :externalKey and :external_key' if attributes.key?(:'externalKey') && attributes.key?(:'external_key')

      self.external_key = attributes[:'external_key'] if attributes[:'external_key']

      self.attributes = attributes[:'attributes'] if attributes[:'attributes']

      self.referenced_folder_key = attributes[:'referencedFolderKey'] if attributes[:'referencedFolderKey']

      raise 'You cannot provide both :referencedFolderKey and :referenced_folder_key' if attributes.key?(:'referencedFolderKey') && attributes.key?(:'referenced_folder_key')

      self.referenced_folder_key = attributes[:'referenced_folder_key'] if attributes[:'referenced_folder_key']

      self.referenced_folder_name = attributes[:'referencedFolderName'] if attributes[:'referencedFolderName']

      raise 'You cannot provide both :referencedFolderName and :referenced_folder_name' if attributes.key?(:'referencedFolderName') && attributes.key?(:'referenced_folder_name')

      self.referenced_folder_name = attributes[:'referenced_folder_name'] if attributes[:'referenced_folder_name']

      self.referenced_entity_key = attributes[:'referencedEntityKey'] if attributes[:'referencedEntityKey']

      raise 'You cannot provide both :referencedEntityKey and :referenced_entity_key' if attributes.key?(:'referencedEntityKey') && attributes.key?(:'referenced_entity_key')

      self.referenced_entity_key = attributes[:'referenced_entity_key'] if attributes[:'referenced_entity_key']

      self.referenced_entity_name = attributes[:'referencedEntityName'] if attributes[:'referencedEntityName']

      raise 'You cannot provide both :referencedEntityName and :referenced_entity_name' if attributes.key?(:'referencedEntityName') && attributes.key?(:'referenced_entity_name')

      self.referenced_entity_name = attributes[:'referenced_entity_name'] if attributes[:'referenced_entity_name']

      self.referenced_rule_key = attributes[:'referencedRuleKey'] if attributes[:'referencedRuleKey']

      raise 'You cannot provide both :referencedRuleKey and :referenced_rule_key' if attributes.key?(:'referencedRuleKey') && attributes.key?(:'referenced_rule_key')

      self.referenced_rule_key = attributes[:'referenced_rule_key'] if attributes[:'referenced_rule_key']

      self.referenced_rule_name = attributes[:'referencedRuleName'] if attributes[:'referencedRuleName']

      raise 'You cannot provide both :referencedRuleName and :referenced_rule_name' if attributes.key?(:'referencedRuleName') && attributes.key?(:'referenced_rule_name')

      self.referenced_rule_name = attributes[:'referenced_rule_name'] if attributes[:'referenced_rule_name']

      self.referenced_attributes = attributes[:'referencedAttributes'] if attributes[:'referencedAttributes']

      raise 'You cannot provide both :referencedAttributes and :referenced_attributes' if attributes.key?(:'referencedAttributes') && attributes.key?(:'referenced_attributes')

      self.referenced_attributes = attributes[:'referenced_attributes'] if attributes[:'referenced_attributes']

      self.origin_type = attributes[:'originType'] if attributes[:'originType']

      raise 'You cannot provide both :originType and :origin_type' if attributes.key?(:'originType') && attributes.key?(:'origin_type')

      self.origin_type = attributes[:'origin_type'] if attributes[:'origin_type']

      self.uri = attributes[:'uri'] if attributes[:'uri']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rule_type Object to be assigned
    def rule_type=(rule_type)
      # rubocop:disable Style/ConditionalAssignment
      if rule_type && !RULE_TYPE_ENUM.include?(rule_type)
        OCI.logger.debug("Unknown value for 'rule_type' [" + rule_type + "]. Mapping to 'RULE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @rule_type = RULE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @rule_type = rule_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origin_type Object to be assigned
    def origin_type=(origin_type)
      # rubocop:disable Style/ConditionalAssignment
      if origin_type && !ORIGIN_TYPE_ENUM.include?(origin_type)
        OCI.logger.debug("Unknown value for 'origin_type' [" + origin_type + "]. Mapping to 'ORIGIN_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @origin_type = ORIGIN_TYPE_UNKNOWN_ENUM_VALUE
      else
        @origin_type = origin_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

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
        rule_type == other.rule_type &&
        external_key == other.external_key &&
        attributes == other.attributes &&
        referenced_folder_key == other.referenced_folder_key &&
        referenced_folder_name == other.referenced_folder_name &&
        referenced_entity_key == other.referenced_entity_key &&
        referenced_entity_name == other.referenced_entity_name &&
        referenced_rule_key == other.referenced_rule_key &&
        referenced_rule_name == other.referenced_rule_name &&
        referenced_attributes == other.referenced_attributes &&
        origin_type == other.origin_type &&
        uri == other.uri &&
        time_created == other.time_created &&
        lifecycle_state == other.lifecycle_state
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
      [key, display_name, description, rule_type, external_key, attributes, referenced_folder_key, referenced_folder_name, referenced_entity_key, referenced_entity_name, referenced_rule_key, referenced_rule_name, referenced_attributes, origin_type, uri, time_created, lifecycle_state].hash
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
