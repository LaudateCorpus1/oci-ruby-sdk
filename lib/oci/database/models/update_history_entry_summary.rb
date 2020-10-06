# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The record of an update action on a specified target.
  class Database::Models::UpdateHistoryEntrySummary
    UPDATE_ACTION_ENUM = [
      UPDATE_ACTION_ROLLING_APPLY = 'ROLLING_APPLY'.freeze,
      UPDATE_ACTION_NON_ROLLING_APPLY = 'NON_ROLLING_APPLY'.freeze,
      UPDATE_ACTION_PRECHECK = 'PRECHECK'.freeze,
      UPDATE_ACTION_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    UPDATE_TYPE_ENUM = [
      UPDATE_TYPE_GI_PATCH = 'GI_PATCH'.freeze,
      UPDATE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      LIFECYCLE_STATE_SUCCEEDED = 'SUCCEEDED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the maintenance update history entry.
    # @return [String]
    attr_accessor :id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the maintenance update.
    # @return [String]
    attr_accessor :update_id

    # The update action.
    # @return [String]
    attr_reader :update_action

    # **[Required]** The type of cloud VM cluster maintenance update.
    # @return [String]
    attr_reader :update_type

    # **[Required]** The current lifecycle state of the maintenance update operation.
    # @return [String]
    attr_reader :lifecycle_state

    # Descriptive text providing additional details about the lifecycle state.
    #
    # @return [String]
    attr_accessor :lifecycle_details

    # **[Required]** The date and time when the maintenance update action started.
    # @return [DateTime]
    attr_accessor :time_started

    # The date and time when the maintenance update action completed.
    # @return [DateTime]
    attr_accessor :time_completed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'update_id': :'updateId',
        'update_action': :'updateAction',
        'update_type': :'updateType',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails',
        'time_started': :'timeStarted',
        'time_completed': :'timeCompleted'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'update_id': :'String',
        'update_action': :'String',
        'update_type': :'String',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String',
        'time_started': :'DateTime',
        'time_completed': :'DateTime'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :update_id The value to assign to the {#update_id} property
    # @option attributes [String] :update_action The value to assign to the {#update_action} property
    # @option attributes [String] :update_type The value to assign to the {#update_type} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [DateTime] :time_started The value to assign to the {#time_started} property
    # @option attributes [DateTime] :time_completed The value to assign to the {#time_completed} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.update_id = attributes[:'updateId'] if attributes[:'updateId']

      raise 'You cannot provide both :updateId and :update_id' if attributes.key?(:'updateId') && attributes.key?(:'update_id')

      self.update_id = attributes[:'update_id'] if attributes[:'update_id']

      self.update_action = attributes[:'updateAction'] if attributes[:'updateAction']

      raise 'You cannot provide both :updateAction and :update_action' if attributes.key?(:'updateAction') && attributes.key?(:'update_action')

      self.update_action = attributes[:'update_action'] if attributes[:'update_action']

      self.update_type = attributes[:'updateType'] if attributes[:'updateType']

      raise 'You cannot provide both :updateType and :update_type' if attributes.key?(:'updateType') && attributes.key?(:'update_type')

      self.update_type = attributes[:'update_type'] if attributes[:'update_type']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.time_started = attributes[:'timeStarted'] if attributes[:'timeStarted']

      raise 'You cannot provide both :timeStarted and :time_started' if attributes.key?(:'timeStarted') && attributes.key?(:'time_started')

      self.time_started = attributes[:'time_started'] if attributes[:'time_started']

      self.time_completed = attributes[:'timeCompleted'] if attributes[:'timeCompleted']

      raise 'You cannot provide both :timeCompleted and :time_completed' if attributes.key?(:'timeCompleted') && attributes.key?(:'time_completed')

      self.time_completed = attributes[:'time_completed'] if attributes[:'time_completed']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] update_action Object to be assigned
    def update_action=(update_action)
      # rubocop:disable Style/ConditionalAssignment
      if update_action && !UPDATE_ACTION_ENUM.include?(update_action)
        OCI.logger.debug("Unknown value for 'update_action' [" + update_action + "]. Mapping to 'UPDATE_ACTION_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @update_action = UPDATE_ACTION_UNKNOWN_ENUM_VALUE
      else
        @update_action = update_action
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] update_type Object to be assigned
    def update_type=(update_type)
      # rubocop:disable Style/ConditionalAssignment
      if update_type && !UPDATE_TYPE_ENUM.include?(update_type)
        OCI.logger.debug("Unknown value for 'update_type' [" + update_type + "]. Mapping to 'UPDATE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @update_type = UPDATE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @update_type = update_type
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
        update_id == other.update_id &&
        update_action == other.update_action &&
        update_type == other.update_type &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details &&
        time_started == other.time_started &&
        time_completed == other.time_completed
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
      [id, update_id, update_action, update_type, lifecycle_state, lifecycle_details, time_started, time_completed].hash
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
