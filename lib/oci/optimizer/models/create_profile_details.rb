# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details for creating a profile.
  #
  class Optimizer::Models::CreateProfileDetails
    # **[Required]** The OCID of the tenancy. The tenancy is the root compartment.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The name assigned to the profile. Avoid entering confidential information.
    # @return [String]
    attr_accessor :name

    # **[Required]** Text describing the profile. Avoid entering confidential information.
    # @return [String]
    attr_accessor :description

    # The time period over which to collect data for the recommendations, measured in number of days.
    # @return [Integer]
    attr_accessor :aggregation_interval_in_days

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Simple key-value pair applied without any predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm). Exists for cross-compatibility only.
    #
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # This attribute is required.
    # @return [OCI::Optimizer::Models::LevelsConfiguration]
    attr_accessor :levels_configuration

    # @return [OCI::Optimizer::Models::TargetCompartments]
    attr_accessor :target_compartments

    # @return [OCI::Optimizer::Models::TargetTags]
    attr_accessor :target_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'name': :'name',
        'description': :'description',
        'aggregation_interval_in_days': :'aggregationIntervalInDays',
        'defined_tags': :'definedTags',
        'freeform_tags': :'freeformTags',
        'levels_configuration': :'levelsConfiguration',
        'target_compartments': :'targetCompartments',
        'target_tags': :'targetTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'name': :'String',
        'description': :'String',
        'aggregation_interval_in_days': :'Integer',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'freeform_tags': :'Hash<String, String>',
        'levels_configuration': :'OCI::Optimizer::Models::LevelsConfiguration',
        'target_compartments': :'OCI::Optimizer::Models::TargetCompartments',
        'target_tags': :'OCI::Optimizer::Models::TargetTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Integer] :aggregation_interval_in_days The value to assign to the {#aggregation_interval_in_days} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [OCI::Optimizer::Models::LevelsConfiguration] :levels_configuration The value to assign to the {#levels_configuration} property
    # @option attributes [OCI::Optimizer::Models::TargetCompartments] :target_compartments The value to assign to the {#target_compartments} property
    # @option attributes [OCI::Optimizer::Models::TargetTags] :target_tags The value to assign to the {#target_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.aggregation_interval_in_days = attributes[:'aggregationIntervalInDays'] if attributes[:'aggregationIntervalInDays']

      raise 'You cannot provide both :aggregationIntervalInDays and :aggregation_interval_in_days' if attributes.key?(:'aggregationIntervalInDays') && attributes.key?(:'aggregation_interval_in_days')

      self.aggregation_interval_in_days = attributes[:'aggregation_interval_in_days'] if attributes[:'aggregation_interval_in_days']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.levels_configuration = attributes[:'levelsConfiguration'] if attributes[:'levelsConfiguration']

      raise 'You cannot provide both :levelsConfiguration and :levels_configuration' if attributes.key?(:'levelsConfiguration') && attributes.key?(:'levels_configuration')

      self.levels_configuration = attributes[:'levels_configuration'] if attributes[:'levels_configuration']

      self.target_compartments = attributes[:'targetCompartments'] if attributes[:'targetCompartments']

      raise 'You cannot provide both :targetCompartments and :target_compartments' if attributes.key?(:'targetCompartments') && attributes.key?(:'target_compartments')

      self.target_compartments = attributes[:'target_compartments'] if attributes[:'target_compartments']

      self.target_tags = attributes[:'targetTags'] if attributes[:'targetTags']

      raise 'You cannot provide both :targetTags and :target_tags' if attributes.key?(:'targetTags') && attributes.key?(:'target_tags')

      self.target_tags = attributes[:'target_tags'] if attributes[:'target_tags']
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
        name == other.name &&
        description == other.description &&
        aggregation_interval_in_days == other.aggregation_interval_in_days &&
        defined_tags == other.defined_tags &&
        freeform_tags == other.freeform_tags &&
        levels_configuration == other.levels_configuration &&
        target_compartments == other.target_compartments &&
        target_tags == other.target_tags
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
      [compartment_id, name, description, aggregation_interval_in_days, defined_tags, freeform_tags, levels_configuration, target_compartments, target_tags].hash
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
