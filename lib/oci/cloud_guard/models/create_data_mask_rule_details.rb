# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The information about new Data Mask Rule.
  class CloudGuard::Models::CreateDataMaskRuleDetails
    DATA_MASK_CATEGORIES_ENUM = [
      DATA_MASK_CATEGORIES_ACTOR = 'ACTOR'.freeze,
      DATA_MASK_CATEGORIES_PII = 'PII'.freeze,
      DATA_MASK_CATEGORIES_PHI = 'PHI'.freeze,
      DATA_MASK_CATEGORIES_FINANCIAL = 'FINANCIAL'.freeze,
      DATA_MASK_CATEGORIES_LOCATION = 'LOCATION'.freeze,
      DATA_MASK_CATEGORIES_CUSTOM = 'CUSTOM'.freeze
    ].freeze

    DATA_MASK_RULE_STATUS_ENUM = [
      DATA_MASK_RULE_STATUS_ENABLED = 'ENABLED'.freeze,
      DATA_MASK_RULE_STATUS_DISABLED = 'DISABLED'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze
    ].freeze

    # **[Required]** Data Mask Rule name
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Compartment Identifier where the resource is created
    # @return [String]
    attr_accessor :compartment_id

    # The Data Mask Rule description.
    # @return [String]
    attr_accessor :description

    # **[Required]** IAM Group id associated with the data mask rule
    # @return [String]
    attr_accessor :iam_group_id

    # This attribute is required.
    # @return [OCI::CloudGuard::Models::TargetSelected]
    attr_accessor :target_selected

    # **[Required]** Data Mask Categories
    # @return [Array<String>]
    attr_reader :data_mask_categories

    # The status of the dataMaskRule.
    # @return [String]
    attr_reader :data_mask_rule_status

    # The current state of the DataMaskRule.
    # @return [String]
    attr_reader :lifecycle_state

    # Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'compartment_id': :'compartmentId',
        'description': :'description',
        'iam_group_id': :'iamGroupId',
        'target_selected': :'targetSelected',
        'data_mask_categories': :'dataMaskCategories',
        'data_mask_rule_status': :'dataMaskRuleStatus',
        'lifecycle_state': :'lifecycleState',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'compartment_id': :'String',
        'description': :'String',
        'iam_group_id': :'String',
        'target_selected': :'OCI::CloudGuard::Models::TargetSelected',
        'data_mask_categories': :'Array<String>',
        'data_mask_rule_status': :'String',
        'lifecycle_state': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :iam_group_id The value to assign to the {#iam_group_id} property
    # @option attributes [OCI::CloudGuard::Models::TargetSelected] :target_selected The value to assign to the {#target_selected} property
    # @option attributes [Array<String>] :data_mask_categories The value to assign to the {#data_mask_categories} property
    # @option attributes [String] :data_mask_rule_status The value to assign to the {#data_mask_rule_status} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.description = attributes[:'description'] if attributes[:'description']

      self.iam_group_id = attributes[:'iamGroupId'] if attributes[:'iamGroupId']

      raise 'You cannot provide both :iamGroupId and :iam_group_id' if attributes.key?(:'iamGroupId') && attributes.key?(:'iam_group_id')

      self.iam_group_id = attributes[:'iam_group_id'] if attributes[:'iam_group_id']

      self.target_selected = attributes[:'targetSelected'] if attributes[:'targetSelected']

      raise 'You cannot provide both :targetSelected and :target_selected' if attributes.key?(:'targetSelected') && attributes.key?(:'target_selected')

      self.target_selected = attributes[:'target_selected'] if attributes[:'target_selected']

      self.data_mask_categories = attributes[:'dataMaskCategories'] if attributes[:'dataMaskCategories']

      raise 'You cannot provide both :dataMaskCategories and :data_mask_categories' if attributes.key?(:'dataMaskCategories') && attributes.key?(:'data_mask_categories')

      self.data_mask_categories = attributes[:'data_mask_categories'] if attributes[:'data_mask_categories']

      self.data_mask_rule_status = attributes[:'dataMaskRuleStatus'] if attributes[:'dataMaskRuleStatus']

      raise 'You cannot provide both :dataMaskRuleStatus and :data_mask_rule_status' if attributes.key?(:'dataMaskRuleStatus') && attributes.key?(:'data_mask_rule_status')

      self.data_mask_rule_status = attributes[:'data_mask_rule_status'] if attributes[:'data_mask_rule_status']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_mask_categories Object to be assigned
    def data_mask_categories=(data_mask_categories)
      # rubocop:disable Style/ConditionalAssignment
      if data_mask_categories.nil?
        @data_mask_categories = nil
      else
        data_mask_categories.each do |item|
          raise "Invalid value for 'data_mask_categories': this must be one of the values in DATA_MASK_CATEGORIES_ENUM." unless DATA_MASK_CATEGORIES_ENUM.include?(item)
        end
        @data_mask_categories = data_mask_categories
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_mask_rule_status Object to be assigned
    def data_mask_rule_status=(data_mask_rule_status)
      raise "Invalid value for 'data_mask_rule_status': this must be one of the values in DATA_MASK_RULE_STATUS_ENUM." if data_mask_rule_status && !DATA_MASK_RULE_STATUS_ENUM.include?(data_mask_rule_status)

      @data_mask_rule_status = data_mask_rule_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      raise "Invalid value for 'lifecycle_state': this must be one of the values in LIFECYCLE_STATE_ENUM." if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)

      @lifecycle_state = lifecycle_state
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        compartment_id == other.compartment_id &&
        description == other.description &&
        iam_group_id == other.iam_group_id &&
        target_selected == other.target_selected &&
        data_mask_categories == other.data_mask_categories &&
        data_mask_rule_status == other.data_mask_rule_status &&
        lifecycle_state == other.lifecycle_state &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags
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
      [display_name, compartment_id, description, iam_group_id, target_selected, data_mask_categories, data_mask_rule_status, lifecycle_state, freeform_tags, defined_tags].hash
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
