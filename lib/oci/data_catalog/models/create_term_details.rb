# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Properties used in term create operations.
  class DataCatalog::Models::CreateTermDetails
    WORKFLOW_STATUS_ENUM = [
      WORKFLOW_STATUS_NEW = 'NEW'.freeze,
      WORKFLOW_STATUS_APPROVED = 'APPROVED'.freeze,
      WORKFLOW_STATUS_UNDER_REVIEW = 'UNDER_REVIEW'.freeze,
      WORKFLOW_STATUS_ESCALATED = 'ESCALATED'.freeze
    ].freeze

    # **[Required]** A user-friendly display name. Is changeable. The combination of 'displayName' and 'parentTermKey'
    # must be unique. Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of the term.
    # @return [String]
    attr_accessor :description

    # Indicates whether a term may contain child terms.
    # @return [BOOLEAN]
    attr_accessor :is_allowed_to_have_child_terms

    # The parent key of the term. In the case of a root-level category only, the term would have no parent and this should be left unset.
    # @return [String]
    attr_accessor :parent_term_key

    # OCID of the user who is the owner of this business terminology.
    # @return [String]
    attr_accessor :owner

    # Status of the approval process workflow for this business term in the glossary.
    # @return [String]
    attr_reader :workflow_status

    # The list of customized properties along with the values for this object
    # @return [Array<OCI::DataCatalog::Models::CustomPropertySetUsage>]
    attr_accessor :custom_property_members

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'description': :'description',
        'is_allowed_to_have_child_terms': :'isAllowedToHaveChildTerms',
        'parent_term_key': :'parentTermKey',
        'owner': :'owner',
        'workflow_status': :'workflowStatus',
        'custom_property_members': :'customPropertyMembers'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'description': :'String',
        'is_allowed_to_have_child_terms': :'BOOLEAN',
        'parent_term_key': :'String',
        'owner': :'String',
        'workflow_status': :'String',
        'custom_property_members': :'Array<OCI::DataCatalog::Models::CustomPropertySetUsage>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [BOOLEAN] :is_allowed_to_have_child_terms The value to assign to the {#is_allowed_to_have_child_terms} property
    # @option attributes [String] :parent_term_key The value to assign to the {#parent_term_key} property
    # @option attributes [String] :owner The value to assign to the {#owner} property
    # @option attributes [String] :workflow_status The value to assign to the {#workflow_status} property
    # @option attributes [Array<OCI::DataCatalog::Models::CustomPropertySetUsage>] :custom_property_members The value to assign to the {#custom_property_members} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.is_allowed_to_have_child_terms = attributes[:'isAllowedToHaveChildTerms'] unless attributes[:'isAllowedToHaveChildTerms'].nil?
      self.is_allowed_to_have_child_terms = true if is_allowed_to_have_child_terms.nil? && !attributes.key?(:'isAllowedToHaveChildTerms') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isAllowedToHaveChildTerms and :is_allowed_to_have_child_terms' if attributes.key?(:'isAllowedToHaveChildTerms') && attributes.key?(:'is_allowed_to_have_child_terms')

      self.is_allowed_to_have_child_terms = attributes[:'is_allowed_to_have_child_terms'] unless attributes[:'is_allowed_to_have_child_terms'].nil?
      self.is_allowed_to_have_child_terms = true if is_allowed_to_have_child_terms.nil? && !attributes.key?(:'isAllowedToHaveChildTerms') && !attributes.key?(:'is_allowed_to_have_child_terms') # rubocop:disable Style/StringLiterals

      self.parent_term_key = attributes[:'parentTermKey'] if attributes[:'parentTermKey']

      raise 'You cannot provide both :parentTermKey and :parent_term_key' if attributes.key?(:'parentTermKey') && attributes.key?(:'parent_term_key')

      self.parent_term_key = attributes[:'parent_term_key'] if attributes[:'parent_term_key']

      self.owner = attributes[:'owner'] if attributes[:'owner']

      self.workflow_status = attributes[:'workflowStatus'] if attributes[:'workflowStatus']

      raise 'You cannot provide both :workflowStatus and :workflow_status' if attributes.key?(:'workflowStatus') && attributes.key?(:'workflow_status')

      self.workflow_status = attributes[:'workflow_status'] if attributes[:'workflow_status']

      self.custom_property_members = attributes[:'customPropertyMembers'] if attributes[:'customPropertyMembers']

      raise 'You cannot provide both :customPropertyMembers and :custom_property_members' if attributes.key?(:'customPropertyMembers') && attributes.key?(:'custom_property_members')

      self.custom_property_members = attributes[:'custom_property_members'] if attributes[:'custom_property_members']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] workflow_status Object to be assigned
    def workflow_status=(workflow_status)
      raise "Invalid value for 'workflow_status': this must be one of the values in WORKFLOW_STATUS_ENUM." if workflow_status && !WORKFLOW_STATUS_ENUM.include?(workflow_status)

      @workflow_status = workflow_status
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        description == other.description &&
        is_allowed_to_have_child_terms == other.is_allowed_to_have_child_terms &&
        parent_term_key == other.parent_term_key &&
        owner == other.owner &&
        workflow_status == other.workflow_status &&
        custom_property_members == other.custom_property_members
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
      [display_name, description, is_allowed_to_have_child_terms, parent_term_key, owner, workflow_status, custom_property_members].hash
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
