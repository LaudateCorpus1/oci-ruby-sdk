# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Responder Activity summary Definition.
  class CloudGuard::Models::ResponderActivitySummary
    RESPONDER_TYPE_ENUM = [
      RESPONDER_TYPE_REMEDIATION = 'REMEDIATION'.freeze,
      RESPONDER_TYPE_NOTIFICATION = 'NOTIFICATION'.freeze,
      RESPONDER_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    RESPONDER_ACTIVITY_TYPE_ENUM = [
      RESPONDER_ACTIVITY_TYPE_STARTED = 'STARTED'.freeze,
      RESPONDER_ACTIVITY_TYPE_COMPLETED = 'COMPLETED'.freeze,
      RESPONDER_ACTIVITY_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    RESPONDER_EXECUTION_STATUS_ENUM = [
      RESPONDER_EXECUTION_STATUS_STARTED = 'STARTED'.freeze,
      RESPONDER_EXECUTION_STATUS_AWAITING_CONFIRMATION = 'AWAITING_CONFIRMATION'.freeze,
      RESPONDER_EXECUTION_STATUS_AWAITING_INPUT = 'AWAITING_INPUT'.freeze,
      RESPONDER_EXECUTION_STATUS_SUCCEEDED = 'SUCCEEDED'.freeze,
      RESPONDER_EXECUTION_STATUS_FAILED = 'FAILED'.freeze,
      RESPONDER_EXECUTION_STATUS_SKIPPED = 'SKIPPED'.freeze,
      RESPONDER_EXECUTION_STATUS_ALL = 'ALL'.freeze,
      RESPONDER_EXECUTION_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique id for Responder activity.
    # @return [String]
    attr_accessor :id

    # **[Required]** problemId for which Responder activity is associated to.
    # @return [String]
    attr_accessor :problem_id

    # **[Required]** Id of the responder rule for the problem
    # @return [String]
    attr_accessor :responder_rule_id

    # **[Required]** responder rule type for performing the operation
    # @return [String]
    attr_reader :responder_type

    # **[Required]** responder rule name
    # @return [String]
    attr_accessor :responder_rule_name

    # **[Required]** Responder activity types
    # @return [String]
    attr_reader :responder_activity_type

    # **[Required]** the responder execution status
    # @return [String]
    attr_reader :responder_execution_status

    # **[Required]** responder activity starting time
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** additional message related to this operation
    # @return [String]
    attr_accessor :message

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'problem_id': :'problemId',
        'responder_rule_id': :'responderRuleId',
        'responder_type': :'responderType',
        'responder_rule_name': :'responderRuleName',
        'responder_activity_type': :'responderActivityType',
        'responder_execution_status': :'responderExecutionStatus',
        'time_created': :'timeCreated',
        'message': :'message'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'problem_id': :'String',
        'responder_rule_id': :'String',
        'responder_type': :'String',
        'responder_rule_name': :'String',
        'responder_activity_type': :'String',
        'responder_execution_status': :'String',
        'time_created': :'DateTime',
        'message': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :problem_id The value to assign to the {#problem_id} property
    # @option attributes [String] :responder_rule_id The value to assign to the {#responder_rule_id} property
    # @option attributes [String] :responder_type The value to assign to the {#responder_type} property
    # @option attributes [String] :responder_rule_name The value to assign to the {#responder_rule_name} property
    # @option attributes [String] :responder_activity_type The value to assign to the {#responder_activity_type} property
    # @option attributes [String] :responder_execution_status The value to assign to the {#responder_execution_status} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :message The value to assign to the {#message} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.problem_id = attributes[:'problemId'] if attributes[:'problemId']

      raise 'You cannot provide both :problemId and :problem_id' if attributes.key?(:'problemId') && attributes.key?(:'problem_id')

      self.problem_id = attributes[:'problem_id'] if attributes[:'problem_id']

      self.responder_rule_id = attributes[:'responderRuleId'] if attributes[:'responderRuleId']

      raise 'You cannot provide both :responderRuleId and :responder_rule_id' if attributes.key?(:'responderRuleId') && attributes.key?(:'responder_rule_id')

      self.responder_rule_id = attributes[:'responder_rule_id'] if attributes[:'responder_rule_id']

      self.responder_type = attributes[:'responderType'] if attributes[:'responderType']

      raise 'You cannot provide both :responderType and :responder_type' if attributes.key?(:'responderType') && attributes.key?(:'responder_type')

      self.responder_type = attributes[:'responder_type'] if attributes[:'responder_type']

      self.responder_rule_name = attributes[:'responderRuleName'] if attributes[:'responderRuleName']

      raise 'You cannot provide both :responderRuleName and :responder_rule_name' if attributes.key?(:'responderRuleName') && attributes.key?(:'responder_rule_name')

      self.responder_rule_name = attributes[:'responder_rule_name'] if attributes[:'responder_rule_name']

      self.responder_activity_type = attributes[:'responderActivityType'] if attributes[:'responderActivityType']

      raise 'You cannot provide both :responderActivityType and :responder_activity_type' if attributes.key?(:'responderActivityType') && attributes.key?(:'responder_activity_type')

      self.responder_activity_type = attributes[:'responder_activity_type'] if attributes[:'responder_activity_type']

      self.responder_execution_status = attributes[:'responderExecutionStatus'] if attributes[:'responderExecutionStatus']

      raise 'You cannot provide both :responderExecutionStatus and :responder_execution_status' if attributes.key?(:'responderExecutionStatus') && attributes.key?(:'responder_execution_status')

      self.responder_execution_status = attributes[:'responder_execution_status'] if attributes[:'responder_execution_status']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.message = attributes[:'message'] if attributes[:'message']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] responder_type Object to be assigned
    def responder_type=(responder_type)
      # rubocop:disable Style/ConditionalAssignment
      if responder_type && !RESPONDER_TYPE_ENUM.include?(responder_type)
        OCI.logger.debug("Unknown value for 'responder_type' [" + responder_type + "]. Mapping to 'RESPONDER_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @responder_type = RESPONDER_TYPE_UNKNOWN_ENUM_VALUE
      else
        @responder_type = responder_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] responder_activity_type Object to be assigned
    def responder_activity_type=(responder_activity_type)
      # rubocop:disable Style/ConditionalAssignment
      if responder_activity_type && !RESPONDER_ACTIVITY_TYPE_ENUM.include?(responder_activity_type)
        OCI.logger.debug("Unknown value for 'responder_activity_type' [" + responder_activity_type + "]. Mapping to 'RESPONDER_ACTIVITY_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @responder_activity_type = RESPONDER_ACTIVITY_TYPE_UNKNOWN_ENUM_VALUE
      else
        @responder_activity_type = responder_activity_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] responder_execution_status Object to be assigned
    def responder_execution_status=(responder_execution_status)
      # rubocop:disable Style/ConditionalAssignment
      if responder_execution_status && !RESPONDER_EXECUTION_STATUS_ENUM.include?(responder_execution_status)
        OCI.logger.debug("Unknown value for 'responder_execution_status' [" + responder_execution_status + "]. Mapping to 'RESPONDER_EXECUTION_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @responder_execution_status = RESPONDER_EXECUTION_STATUS_UNKNOWN_ENUM_VALUE
      else
        @responder_execution_status = responder_execution_status
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
        problem_id == other.problem_id &&
        responder_rule_id == other.responder_rule_id &&
        responder_type == other.responder_type &&
        responder_rule_name == other.responder_rule_name &&
        responder_activity_type == other.responder_activity_type &&
        responder_execution_status == other.responder_execution_status &&
        time_created == other.time_created &&
        message == other.message
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
      [id, problem_id, responder_rule_id, responder_type, responder_rule_name, responder_activity_type, responder_execution_status, time_created, message].hash
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
