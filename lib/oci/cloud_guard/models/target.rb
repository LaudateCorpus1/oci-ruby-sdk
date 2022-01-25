# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Description of Target.
  class CloudGuard::Models::Target
    TARGET_RESOURCE_TYPE_ENUM = [
      TARGET_RESOURCE_TYPE_COMPARTMENT = 'COMPARTMENT'.freeze,
      TARGET_RESOURCE_TYPE_ERPCLOUD = 'ERPCLOUD'.freeze,
      TARGET_RESOURCE_TYPE_HCMCLOUD = 'HCMCLOUD'.freeze,
      TARGET_RESOURCE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique identifier that is immutable on creation
    # @return [String]
    attr_accessor :id

    # Target Identifier, can be renamed
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Compartment Identifier where the resource is created
    # @return [String]
    attr_accessor :compartment_id

    # The target description.
    # @return [String]
    attr_accessor :description

    # **[Required]** possible type of targets
    # @return [String]
    attr_reader :target_resource_type

    # **[Required]** Resource ID which the target uses to monitor
    # @return [String]
    attr_accessor :target_resource_id

    # **[Required]** Total number of recipes attached to target
    # @return [Integer]
    attr_accessor :recipe_count

    # List of detector recipes associated with target
    # @return [Array<OCI::CloudGuard::Models::TargetDetectorRecipe>]
    attr_accessor :target_detector_recipes

    # List of responder recipes associated with target
    # @return [Array<OCI::CloudGuard::Models::TargetResponderRecipe>]
    attr_accessor :target_responder_recipes

    # List of inherited compartments
    # @return [Array<String>]
    attr_accessor :inherited_by_compartments

    # The date and time the target was created. Format defined by RFC3339.
    # @return [DateTime]
    attr_accessor :time_created

    # The date and time the target was updated. Format defined by RFC3339.
    # @return [DateTime]
    attr_accessor :time_updated

    # The current state of the Target.
    # @return [String]
    attr_reader :lifecycle_state

    # A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state.
    # @return [String]
    attr_accessor :lifecyle_details

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

    # System tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    # System tags can be viewed by users, but can only be created by the system.
    #
    # Example: `{\"orcl-cloud\": {\"free-tier-retained\": \"true\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :system_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'display_name': :'displayName',
        'compartment_id': :'compartmentId',
        'description': :'description',
        'target_resource_type': :'targetResourceType',
        'target_resource_id': :'targetResourceId',
        'recipe_count': :'recipeCount',
        'target_detector_recipes': :'targetDetectorRecipes',
        'target_responder_recipes': :'targetResponderRecipes',
        'inherited_by_compartments': :'inheritedByCompartments',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'lifecycle_state': :'lifecycleState',
        'lifecyle_details': :'lifecyleDetails',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'system_tags': :'systemTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'display_name': :'String',
        'compartment_id': :'String',
        'description': :'String',
        'target_resource_type': :'String',
        'target_resource_id': :'String',
        'recipe_count': :'Integer',
        'target_detector_recipes': :'Array<OCI::CloudGuard::Models::TargetDetectorRecipe>',
        'target_responder_recipes': :'Array<OCI::CloudGuard::Models::TargetResponderRecipe>',
        'inherited_by_compartments': :'Array<String>',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'lifecycle_state': :'String',
        'lifecyle_details': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'system_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :target_resource_type The value to assign to the {#target_resource_type} property
    # @option attributes [String] :target_resource_id The value to assign to the {#target_resource_id} property
    # @option attributes [Integer] :recipe_count The value to assign to the {#recipe_count} property
    # @option attributes [Array<OCI::CloudGuard::Models::TargetDetectorRecipe>] :target_detector_recipes The value to assign to the {#target_detector_recipes} property
    # @option attributes [Array<OCI::CloudGuard::Models::TargetResponderRecipe>] :target_responder_recipes The value to assign to the {#target_responder_recipes} property
    # @option attributes [Array<String>] :inherited_by_compartments The value to assign to the {#inherited_by_compartments} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecyle_details The value to assign to the {#lifecyle_details} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :system_tags The value to assign to the {#system_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.description = attributes[:'description'] if attributes[:'description']

      self.target_resource_type = attributes[:'targetResourceType'] if attributes[:'targetResourceType']

      raise 'You cannot provide both :targetResourceType and :target_resource_type' if attributes.key?(:'targetResourceType') && attributes.key?(:'target_resource_type')

      self.target_resource_type = attributes[:'target_resource_type'] if attributes[:'target_resource_type']

      self.target_resource_id = attributes[:'targetResourceId'] if attributes[:'targetResourceId']

      raise 'You cannot provide both :targetResourceId and :target_resource_id' if attributes.key?(:'targetResourceId') && attributes.key?(:'target_resource_id')

      self.target_resource_id = attributes[:'target_resource_id'] if attributes[:'target_resource_id']

      self.recipe_count = attributes[:'recipeCount'] if attributes[:'recipeCount']

      raise 'You cannot provide both :recipeCount and :recipe_count' if attributes.key?(:'recipeCount') && attributes.key?(:'recipe_count')

      self.recipe_count = attributes[:'recipe_count'] if attributes[:'recipe_count']

      self.target_detector_recipes = attributes[:'targetDetectorRecipes'] if attributes[:'targetDetectorRecipes']

      raise 'You cannot provide both :targetDetectorRecipes and :target_detector_recipes' if attributes.key?(:'targetDetectorRecipes') && attributes.key?(:'target_detector_recipes')

      self.target_detector_recipes = attributes[:'target_detector_recipes'] if attributes[:'target_detector_recipes']

      self.target_responder_recipes = attributes[:'targetResponderRecipes'] if attributes[:'targetResponderRecipes']

      raise 'You cannot provide both :targetResponderRecipes and :target_responder_recipes' if attributes.key?(:'targetResponderRecipes') && attributes.key?(:'target_responder_recipes')

      self.target_responder_recipes = attributes[:'target_responder_recipes'] if attributes[:'target_responder_recipes']

      self.inherited_by_compartments = attributes[:'inheritedByCompartments'] if attributes[:'inheritedByCompartments']

      raise 'You cannot provide both :inheritedByCompartments and :inherited_by_compartments' if attributes.key?(:'inheritedByCompartments') && attributes.key?(:'inherited_by_compartments')

      self.inherited_by_compartments = attributes[:'inherited_by_compartments'] if attributes[:'inherited_by_compartments']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecyle_details = attributes[:'lifecyleDetails'] if attributes[:'lifecyleDetails']

      raise 'You cannot provide both :lifecyleDetails and :lifecyle_details' if attributes.key?(:'lifecyleDetails') && attributes.key?(:'lifecyle_details')

      self.lifecyle_details = attributes[:'lifecyle_details'] if attributes[:'lifecyle_details']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.system_tags = attributes[:'systemTags'] if attributes[:'systemTags']

      raise 'You cannot provide both :systemTags and :system_tags' if attributes.key?(:'systemTags') && attributes.key?(:'system_tags')

      self.system_tags = attributes[:'system_tags'] if attributes[:'system_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_resource_type Object to be assigned
    def target_resource_type=(target_resource_type)
      # rubocop:disable Style/ConditionalAssignment
      if target_resource_type && !TARGET_RESOURCE_TYPE_ENUM.include?(target_resource_type)
        OCI.logger.debug("Unknown value for 'target_resource_type' [" + target_resource_type + "]. Mapping to 'TARGET_RESOURCE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @target_resource_type = TARGET_RESOURCE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @target_resource_type = target_resource_type
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
        id == other.id &&
        display_name == other.display_name &&
        compartment_id == other.compartment_id &&
        description == other.description &&
        target_resource_type == other.target_resource_type &&
        target_resource_id == other.target_resource_id &&
        recipe_count == other.recipe_count &&
        target_detector_recipes == other.target_detector_recipes &&
        target_responder_recipes == other.target_responder_recipes &&
        inherited_by_compartments == other.inherited_by_compartments &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        lifecycle_state == other.lifecycle_state &&
        lifecyle_details == other.lifecyle_details &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        system_tags == other.system_tags
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
      [id, display_name, compartment_id, description, target_resource_type, target_resource_id, recipe_count, target_detector_recipes, target_responder_recipes, inherited_by_compartments, time_created, time_updated, lifecycle_state, lifecyle_details, freeform_tags, defined_tags, system_tags].hash
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
