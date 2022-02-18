# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Object containing information about a mirror record.
  class Devops::Models::RepositoryMirrorRecordSummary
    MIRROR_STATUS_ENUM = [
      MIRROR_STATUS_NONE = 'NONE'.freeze,
      MIRROR_STATUS_QUEUED = 'QUEUED'.freeze,
      MIRROR_STATUS_RUNNING = 'RUNNING'.freeze,
      MIRROR_STATUS_PASSED = 'PASSED'.freeze,
      MIRROR_STATUS_FAILED = 'FAILED'.freeze,
      MIRROR_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Mirror status of current mirror entry.
    # QUEUED - Mirroring Queued
    # RUNNING - Mirroring is Running
    # PASSED - Mirroring Passed
    # FAILED - Mirroring Failed
    #
    # @return [String]
    attr_reader :mirror_status

    # Workrequest ID to track current mirror operation.
    # @return [String]
    attr_accessor :work_request_id

    # The time to enqueue a mirror operation.
    # @return [DateTime]
    attr_accessor :time_enqueued

    # The time to start a mirror operation.
    # @return [DateTime]
    attr_accessor :time_started

    # The time to complete a mirror operation.
    # @return [DateTime]
    attr_accessor :time_completed

    # Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.  See [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm). Example: `{\"bar-key\": \"value\"}`
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace. See [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm). Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'mirror_status': :'mirrorStatus',
        'work_request_id': :'workRequestId',
        'time_enqueued': :'timeEnqueued',
        'time_started': :'timeStarted',
        'time_completed': :'timeCompleted',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'mirror_status': :'String',
        'work_request_id': :'String',
        'time_enqueued': :'DateTime',
        'time_started': :'DateTime',
        'time_completed': :'DateTime',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :mirror_status The value to assign to the {#mirror_status} property
    # @option attributes [String] :work_request_id The value to assign to the {#work_request_id} property
    # @option attributes [DateTime] :time_enqueued The value to assign to the {#time_enqueued} property
    # @option attributes [DateTime] :time_started The value to assign to the {#time_started} property
    # @option attributes [DateTime] :time_completed The value to assign to the {#time_completed} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.mirror_status = attributes[:'mirrorStatus'] if attributes[:'mirrorStatus']

      raise 'You cannot provide both :mirrorStatus and :mirror_status' if attributes.key?(:'mirrorStatus') && attributes.key?(:'mirror_status')

      self.mirror_status = attributes[:'mirror_status'] if attributes[:'mirror_status']

      self.work_request_id = attributes[:'workRequestId'] if attributes[:'workRequestId']

      raise 'You cannot provide both :workRequestId and :work_request_id' if attributes.key?(:'workRequestId') && attributes.key?(:'work_request_id')

      self.work_request_id = attributes[:'work_request_id'] if attributes[:'work_request_id']

      self.time_enqueued = attributes[:'timeEnqueued'] if attributes[:'timeEnqueued']

      raise 'You cannot provide both :timeEnqueued and :time_enqueued' if attributes.key?(:'timeEnqueued') && attributes.key?(:'time_enqueued')

      self.time_enqueued = attributes[:'time_enqueued'] if attributes[:'time_enqueued']

      self.time_started = attributes[:'timeStarted'] if attributes[:'timeStarted']

      raise 'You cannot provide both :timeStarted and :time_started' if attributes.key?(:'timeStarted') && attributes.key?(:'time_started')

      self.time_started = attributes[:'time_started'] if attributes[:'time_started']

      self.time_completed = attributes[:'timeCompleted'] if attributes[:'timeCompleted']

      raise 'You cannot provide both :timeCompleted and :time_completed' if attributes.key?(:'timeCompleted') && attributes.key?(:'time_completed')

      self.time_completed = attributes[:'time_completed'] if attributes[:'time_completed']

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
    # @param [Object] mirror_status Object to be assigned
    def mirror_status=(mirror_status)
      # rubocop:disable Style/ConditionalAssignment
      if mirror_status && !MIRROR_STATUS_ENUM.include?(mirror_status)
        OCI.logger.debug("Unknown value for 'mirror_status' [" + mirror_status + "]. Mapping to 'MIRROR_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @mirror_status = MIRROR_STATUS_UNKNOWN_ENUM_VALUE
      else
        @mirror_status = mirror_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        mirror_status == other.mirror_status &&
        work_request_id == other.work_request_id &&
        time_enqueued == other.time_enqueued &&
        time_started == other.time_started &&
        time_completed == other.time_completed &&
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
      [mirror_status, work_request_id, time_enqueued, time_started, time_completed, freeform_tags, defined_tags].hash
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