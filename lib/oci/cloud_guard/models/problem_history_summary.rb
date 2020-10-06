# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Problem History Definition.
  class CloudGuard::Models::ProblemHistorySummary
    ACTOR_TYPE_ENUM = [
      ACTOR_TYPE_CLOUD_GUARD_SERVICE = 'CLOUD_GUARD_SERVICE'.freeze,
      ACTOR_TYPE_CORRELATION = 'CORRELATION'.freeze,
      ACTOR_TYPE_RESPONDER = 'RESPONDER'.freeze,
      ACTOR_TYPE_USER = 'USER'.freeze,
      ACTOR_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_DETAIL_ENUM = [
      LIFECYCLE_DETAIL_OPEN = 'OPEN'.freeze,
      LIFECYCLE_DETAIL_RESOLVED = 'RESOLVED'.freeze,
      LIFECYCLE_DETAIL_DISMISSED = 'DISMISSED'.freeze,
      LIFECYCLE_DETAIL_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    EVENT_STATUS_ENUM = [
      EVENT_STATUS_REOPEN = 'REOPEN'.freeze,
      EVENT_STATUS_OPEN = 'OPEN'.freeze,
      EVENT_STATUS_UPDATE = 'UPDATE'.freeze,
      EVENT_STATUS_RESOLVE = 'RESOLVE'.freeze,
      EVENT_STATUS_DISMISS = 'DISMISS'.freeze,
      EVENT_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique identifier for the history record
    # @return [String]
    attr_accessor :id

    # **[Required]** problemId for which history is associated to.
    # @return [String]
    attr_accessor :problem_id

    # **[Required]** Actor type who performed the operation
    # @return [String]
    attr_reader :actor_type

    # **[Required]** Resource Name who performed activity
    # @return [String]
    attr_accessor :actor_name

    # **[Required]** Activity explanation details
    # @return [String]
    attr_accessor :explanation

    # **[Required]** Problem Lifecycle Detail Status
    # @return [String]
    attr_reader :lifecycle_detail

    # Event status
    # @return [String]
    attr_reader :event_status

    # **[Required]** Type of the Entity
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** Impacted Resource Names in a comma-separated string.
    # @return [String]
    attr_accessor :delta

    # User Defined Comments
    # @return [String]
    attr_accessor :comment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'problem_id': :'problemId',
        'actor_type': :'actorType',
        'actor_name': :'actorName',
        'explanation': :'explanation',
        'lifecycle_detail': :'lifecycleDetail',
        'event_status': :'eventStatus',
        'time_created': :'timeCreated',
        'delta': :'delta',
        'comment': :'comment'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'problem_id': :'String',
        'actor_type': :'String',
        'actor_name': :'String',
        'explanation': :'String',
        'lifecycle_detail': :'String',
        'event_status': :'String',
        'time_created': :'DateTime',
        'delta': :'String',
        'comment': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :problem_id The value to assign to the {#problem_id} property
    # @option attributes [String] :actor_type The value to assign to the {#actor_type} property
    # @option attributes [String] :actor_name The value to assign to the {#actor_name} property
    # @option attributes [String] :explanation The value to assign to the {#explanation} property
    # @option attributes [String] :lifecycle_detail The value to assign to the {#lifecycle_detail} property
    # @option attributes [String] :event_status The value to assign to the {#event_status} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :delta The value to assign to the {#delta} property
    # @option attributes [String] :comment The value to assign to the {#comment} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.problem_id = attributes[:'problemId'] if attributes[:'problemId']

      raise 'You cannot provide both :problemId and :problem_id' if attributes.key?(:'problemId') && attributes.key?(:'problem_id')

      self.problem_id = attributes[:'problem_id'] if attributes[:'problem_id']

      self.actor_type = attributes[:'actorType'] if attributes[:'actorType']

      raise 'You cannot provide both :actorType and :actor_type' if attributes.key?(:'actorType') && attributes.key?(:'actor_type')

      self.actor_type = attributes[:'actor_type'] if attributes[:'actor_type']

      self.actor_name = attributes[:'actorName'] if attributes[:'actorName']

      raise 'You cannot provide both :actorName and :actor_name' if attributes.key?(:'actorName') && attributes.key?(:'actor_name')

      self.actor_name = attributes[:'actor_name'] if attributes[:'actor_name']

      self.explanation = attributes[:'explanation'] if attributes[:'explanation']

      self.lifecycle_detail = attributes[:'lifecycleDetail'] if attributes[:'lifecycleDetail']

      raise 'You cannot provide both :lifecycleDetail and :lifecycle_detail' if attributes.key?(:'lifecycleDetail') && attributes.key?(:'lifecycle_detail')

      self.lifecycle_detail = attributes[:'lifecycle_detail'] if attributes[:'lifecycle_detail']

      self.event_status = attributes[:'eventStatus'] if attributes[:'eventStatus']

      raise 'You cannot provide both :eventStatus and :event_status' if attributes.key?(:'eventStatus') && attributes.key?(:'event_status')

      self.event_status = attributes[:'event_status'] if attributes[:'event_status']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.delta = attributes[:'delta'] if attributes[:'delta']

      self.comment = attributes[:'comment'] if attributes[:'comment']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] actor_type Object to be assigned
    def actor_type=(actor_type)
      # rubocop:disable Style/ConditionalAssignment
      if actor_type && !ACTOR_TYPE_ENUM.include?(actor_type)
        OCI.logger.debug("Unknown value for 'actor_type' [" + actor_type + "]. Mapping to 'ACTOR_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @actor_type = ACTOR_TYPE_UNKNOWN_ENUM_VALUE
      else
        @actor_type = actor_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_detail Object to be assigned
    def lifecycle_detail=(lifecycle_detail)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_detail && !LIFECYCLE_DETAIL_ENUM.include?(lifecycle_detail)
        OCI.logger.debug("Unknown value for 'lifecycle_detail' [" + lifecycle_detail + "]. Mapping to 'LIFECYCLE_DETAIL_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_detail = LIFECYCLE_DETAIL_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_detail = lifecycle_detail
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_status Object to be assigned
    def event_status=(event_status)
      # rubocop:disable Style/ConditionalAssignment
      if event_status && !EVENT_STATUS_ENUM.include?(event_status)
        OCI.logger.debug("Unknown value for 'event_status' [" + event_status + "]. Mapping to 'EVENT_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @event_status = EVENT_STATUS_UNKNOWN_ENUM_VALUE
      else
        @event_status = event_status
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
        actor_type == other.actor_type &&
        actor_name == other.actor_name &&
        explanation == other.explanation &&
        lifecycle_detail == other.lifecycle_detail &&
        event_status == other.event_status &&
        time_created == other.time_created &&
        delta == other.delta &&
        comment == other.comment
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
      [id, problem_id, actor_type, actor_name, explanation, lifecycle_detail, event_status, time_created, delta, comment].hash
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
