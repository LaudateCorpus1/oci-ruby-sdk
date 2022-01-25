# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The summary of the user assessment.
  class DataSafe::Models::UserAssessmentSummary
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_SUCCEEDED = 'SUCCEEDED'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TRIGGERED_BY_ENUM = [
      TRIGGERED_BY_USER = 'USER'.freeze,
      TRIGGERED_BY_SYSTEM = 'SYSTEM'.freeze,
      TRIGGERED_BY_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TYPE_ENUM = [
      TYPE_LATEST = 'LATEST'.freeze,
      TYPE_SAVED = 'SAVED'.freeze,
      TYPE_SAVE_SCHEDULE = 'SAVE_SCHEDULE'.freeze,
      TYPE_COMPARTMENT = 'COMPARTMENT'.freeze,
      TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the compartment that contains the user assessment.
    # @return [String]
    attr_accessor :compartment_id

    # The description of the user assessment.
    # @return [String]
    attr_accessor :description

    # **[Required]** The display name of the user assessment.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The OCID of the user assessment.
    # @return [String]
    attr_accessor :id

    # List containing maps as values.
    # Example: `{\"Operations\": [ {\"CostCenter\": \"42\"} ] }`
    #
    # @return [Array<Object>]
    attr_accessor :ignored_targets

    # List containing maps as values.
    # Example: `{\"Operations\": [ {\"CostCenter\": \"42\"} ] }`
    #
    # @return [Array<Object>]
    attr_accessor :ignored_assessment_ids

    # Indicates if the assessment is a baseline assessment. This applies to saved user assessments only.
    # @return [BOOLEAN]
    attr_accessor :is_baseline

    # Indicates if the assessment has deviated from the baseline.
    # @return [BOOLEAN]
    attr_accessor :is_deviated_from_baseline

    # The OCID of the last user assessment baseline against which the latest assessment was compared.
    # @return [String]
    attr_accessor :last_compared_baseline_id

    # **[Required]** The current state of the user assessment.
    # @return [String]
    attr_reader :lifecycle_state

    # Details about the current state of the user assessment.
    # @return [String]
    attr_accessor :lifecycle_details

    # The OCID of the user assessment that created this scheduled save assessment.
    # @return [String]
    attr_accessor :schedule_assessment_id

    # Schedule to save the assessment periodically in the specified format:
    # <version-string>;<version-specific-schedule>
    #
    # Allowed version strings - \"v1\"
    # v1's version specific schedule -<ss> <mm> <hh> <day-of-week> <day-of-month>
    # Each of the above fields potentially introduce constraints. A workrequest is created only
    # when clock time satisfies all the constraints. Constraints introduced:
    # 1. seconds = <ss> (So, the allowed range for <ss> is [0, 59])
    # 2. minutes = <mm> (So, the allowed range for <mm> is [0, 59])
    # 3. hours = <hh> (So, the allowed range for <hh> is [0, 23])
    # <day-of-week> can be either '*' (without quotes or a number between 1(Monday) and 7(Sunday))
    # 4. No constraint introduced when it is '*'. When not, day of week must equal the given value
    # <day-of-month> can be either '*' (without quotes or a number between 1 and 28)
    # 5. No constraint introduced when it is '*'. When not, day of month must equal the given value
    #
    # @return [String]
    attr_accessor :schedule

    # Map that contains maps of values.
    #  Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :statistics

    # Array of database target OCIDs.
    # @return [Array<String>]
    attr_accessor :target_ids

    # **[Required]** The date and time when the user assessment was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The last date and time when the user assessment was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # @return [DateTime]
    attr_accessor :time_updated

    # Indicates whether the user assessment was created by system or user.
    # @return [String]
    attr_reader :triggered_by

    # **[Required]** Type of user assessment. The possible types are:
    #
    # LATEST: The most up-to-date assessment that is running automatically for a target. It is system generated.
    # SAVED: A saved user assessment. LATEST assessments are always saved to maintain the history of runs. A SAVED assessment is also generated by a 'refresh' action (triggered by the user).
    # SAVE_SCHEDULE: The schedule for periodic save of LATEST assessments.
    # COMPARTMENT: An automatic managed assessment type that stores all details of targets in one compartment. This type keeps an up-to-date status of all database risks in one compartment.
    #        It is automatically updated when the latest assessment or refresh action is executed. It is also automatically updated when a target is deleted or move to a different compartment.
    #
    # @return [String]
    attr_reader :type

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'description': :'description',
        'display_name': :'displayName',
        'id': :'id',
        'ignored_targets': :'ignoredTargets',
        'ignored_assessment_ids': :'ignoredAssessmentIds',
        'is_baseline': :'isBaseline',
        'is_deviated_from_baseline': :'isDeviatedFromBaseline',
        'last_compared_baseline_id': :'lastComparedBaselineId',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails',
        'schedule_assessment_id': :'scheduleAssessmentId',
        'schedule': :'schedule',
        'statistics': :'statistics',
        'target_ids': :'targetIds',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'triggered_by': :'triggeredBy',
        'type': :'type',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'description': :'String',
        'display_name': :'String',
        'id': :'String',
        'ignored_targets': :'Array<Object>',
        'ignored_assessment_ids': :'Array<Object>',
        'is_baseline': :'BOOLEAN',
        'is_deviated_from_baseline': :'BOOLEAN',
        'last_compared_baseline_id': :'String',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String',
        'schedule_assessment_id': :'String',
        'schedule': :'String',
        'statistics': :'Hash<String, Hash<String, Object>>',
        'target_ids': :'Array<String>',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'triggered_by': :'String',
        'type': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [Array<Object>] :ignored_targets The value to assign to the {#ignored_targets} property
    # @option attributes [Array<Object>] :ignored_assessment_ids The value to assign to the {#ignored_assessment_ids} property
    # @option attributes [BOOLEAN] :is_baseline The value to assign to the {#is_baseline} property
    # @option attributes [BOOLEAN] :is_deviated_from_baseline The value to assign to the {#is_deviated_from_baseline} property
    # @option attributes [String] :last_compared_baseline_id The value to assign to the {#last_compared_baseline_id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [String] :schedule_assessment_id The value to assign to the {#schedule_assessment_id} property
    # @option attributes [String] :schedule The value to assign to the {#schedule} property
    # @option attributes [Hash<String, Hash<String, Object>>] :statistics The value to assign to the {#statistics} property
    # @option attributes [Array<String>] :target_ids The value to assign to the {#target_ids} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :triggered_by The value to assign to the {#triggered_by} property
    # @option attributes [String] :type The value to assign to the {#type} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.description = attributes[:'description'] if attributes[:'description']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.id = attributes[:'id'] if attributes[:'id']

      self.ignored_targets = attributes[:'ignoredTargets'] if attributes[:'ignoredTargets']

      raise 'You cannot provide both :ignoredTargets and :ignored_targets' if attributes.key?(:'ignoredTargets') && attributes.key?(:'ignored_targets')

      self.ignored_targets = attributes[:'ignored_targets'] if attributes[:'ignored_targets']

      self.ignored_assessment_ids = attributes[:'ignoredAssessmentIds'] if attributes[:'ignoredAssessmentIds']

      raise 'You cannot provide both :ignoredAssessmentIds and :ignored_assessment_ids' if attributes.key?(:'ignoredAssessmentIds') && attributes.key?(:'ignored_assessment_ids')

      self.ignored_assessment_ids = attributes[:'ignored_assessment_ids'] if attributes[:'ignored_assessment_ids']

      self.is_baseline = attributes[:'isBaseline'] unless attributes[:'isBaseline'].nil?

      raise 'You cannot provide both :isBaseline and :is_baseline' if attributes.key?(:'isBaseline') && attributes.key?(:'is_baseline')

      self.is_baseline = attributes[:'is_baseline'] unless attributes[:'is_baseline'].nil?

      self.is_deviated_from_baseline = attributes[:'isDeviatedFromBaseline'] unless attributes[:'isDeviatedFromBaseline'].nil?

      raise 'You cannot provide both :isDeviatedFromBaseline and :is_deviated_from_baseline' if attributes.key?(:'isDeviatedFromBaseline') && attributes.key?(:'is_deviated_from_baseline')

      self.is_deviated_from_baseline = attributes[:'is_deviated_from_baseline'] unless attributes[:'is_deviated_from_baseline'].nil?

      self.last_compared_baseline_id = attributes[:'lastComparedBaselineId'] if attributes[:'lastComparedBaselineId']

      raise 'You cannot provide both :lastComparedBaselineId and :last_compared_baseline_id' if attributes.key?(:'lastComparedBaselineId') && attributes.key?(:'last_compared_baseline_id')

      self.last_compared_baseline_id = attributes[:'last_compared_baseline_id'] if attributes[:'last_compared_baseline_id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.schedule_assessment_id = attributes[:'scheduleAssessmentId'] if attributes[:'scheduleAssessmentId']

      raise 'You cannot provide both :scheduleAssessmentId and :schedule_assessment_id' if attributes.key?(:'scheduleAssessmentId') && attributes.key?(:'schedule_assessment_id')

      self.schedule_assessment_id = attributes[:'schedule_assessment_id'] if attributes[:'schedule_assessment_id']

      self.schedule = attributes[:'schedule'] if attributes[:'schedule']

      self.statistics = attributes[:'statistics'] if attributes[:'statistics']

      self.target_ids = attributes[:'targetIds'] if attributes[:'targetIds']

      raise 'You cannot provide both :targetIds and :target_ids' if attributes.key?(:'targetIds') && attributes.key?(:'target_ids')

      self.target_ids = attributes[:'target_ids'] if attributes[:'target_ids']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.triggered_by = attributes[:'triggeredBy'] if attributes[:'triggeredBy']

      raise 'You cannot provide both :triggeredBy and :triggered_by' if attributes.key?(:'triggeredBy') && attributes.key?(:'triggered_by')

      self.triggered_by = attributes[:'triggered_by'] if attributes[:'triggered_by']

      self.type = attributes[:'type'] if attributes[:'type']

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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] triggered_by Object to be assigned
    def triggered_by=(triggered_by)
      # rubocop:disable Style/ConditionalAssignment
      if triggered_by && !TRIGGERED_BY_ENUM.include?(triggered_by)
        OCI.logger.debug("Unknown value for 'triggered_by' [" + triggered_by + "]. Mapping to 'TRIGGERED_BY_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @triggered_by = TRIGGERED_BY_UNKNOWN_ENUM_VALUE
      else
        @triggered_by = triggered_by
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      # rubocop:disable Style/ConditionalAssignment
      if type && !TYPE_ENUM.include?(type)
        OCI.logger.debug("Unknown value for 'type' [" + type + "]. Mapping to 'TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @type = TYPE_UNKNOWN_ENUM_VALUE
      else
        @type = type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        compartment_id == other.compartment_id &&
        description == other.description &&
        display_name == other.display_name &&
        id == other.id &&
        ignored_targets == other.ignored_targets &&
        ignored_assessment_ids == other.ignored_assessment_ids &&
        is_baseline == other.is_baseline &&
        is_deviated_from_baseline == other.is_deviated_from_baseline &&
        last_compared_baseline_id == other.last_compared_baseline_id &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details &&
        schedule_assessment_id == other.schedule_assessment_id &&
        schedule == other.schedule &&
        statistics == other.statistics &&
        target_ids == other.target_ids &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        triggered_by == other.triggered_by &&
        type == other.type &&
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
      [compartment_id, description, display_name, id, ignored_targets, ignored_assessment_ids, is_baseline, is_deviated_from_baseline, last_compared_baseline_id, lifecycle_state, lifecycle_details, schedule_assessment_id, schedule, statistics, target_ids, time_created, time_updated, triggered_by, type, freeform_tags, defined_tags].hash
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
