# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # All the attributes of an audit event. For more information, see [Viewing Audit Log Events](https://docs.cloud.oracle.com/iaas/Content/Audit/Tasks/viewinglogevents.htm).
  #
  class Audit::Models::AuditEvent
    # **[Required]** The type of event that happened.
    #
    # The service that produces the event can also add, remove, or change the meaning of a field.
    # A service implementing these type changes would publish a new version of an `eventType` and
    # revise the `eventTypeVersion` field.
    #
    # Example: `com.oraclecloud.ComputeApi.GetInstance`
    #
    # @return [String]
    attr_accessor :event_type

    # **[Required]** The version of the CloudEvents specification. The structure of the envelope follows the
    # [CloudEvents](https://github.com/cloudevents/spec) industry standard format hosted by the
    # [Cloud Native Computing Foundation ( CNCF)](https://www.cncf.io/).
    #
    # Audit uses version 0.1 specification of the CloudEvents event envelope.
    #
    # Example: `0.1`
    #
    # @return [String]
    attr_accessor :cloud_events_version

    # **[Required]** The version of the event type. This version applies to the payload of the event, not the envelope.
    # Use `cloudEventsVersion` to determine the version of the envelope.
    #
    # Example: `2.0`
    #
    # @return [String]
    attr_accessor :event_type_version

    # **[Required]** The source of the event.
    #
    # Example: `ComputeApi`
    #
    # @return [String]
    attr_accessor :source

    # **[Required]** The GUID of the event.
    #
    # @return [String]
    attr_accessor :event_id

    # **[Required]** The time the event occurred, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339) timestamp format.
    #
    # Example: `2019-09-18T00:10:59.252Z`
    #
    # @return [DateTime]
    attr_accessor :event_time

    # **[Required]** The content type of the data contained in `data`.
    #
    # Example: `application/json`
    #
    # @return [String]
    attr_accessor :content_type

    # This attribute is required.
    # @return [OCI::Audit::Models::Data]
    attr_accessor :data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'event_type': :'eventType',
        'cloud_events_version': :'cloudEventsVersion',
        'event_type_version': :'eventTypeVersion',
        'source': :'source',
        'event_id': :'eventId',
        'event_time': :'eventTime',
        'content_type': :'contentType',
        'data': :'data'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'event_type': :'String',
        'cloud_events_version': :'String',
        'event_type_version': :'String',
        'source': :'String',
        'event_id': :'String',
        'event_time': :'DateTime',
        'content_type': :'String',
        'data': :'OCI::Audit::Models::Data'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :event_type The value to assign to the {#event_type} property
    # @option attributes [String] :cloud_events_version The value to assign to the {#cloud_events_version} property
    # @option attributes [String] :event_type_version The value to assign to the {#event_type_version} property
    # @option attributes [String] :source The value to assign to the {#source} property
    # @option attributes [String] :event_id The value to assign to the {#event_id} property
    # @option attributes [DateTime] :event_time The value to assign to the {#event_time} property
    # @option attributes [String] :content_type The value to assign to the {#content_type} property
    # @option attributes [OCI::Audit::Models::Data] :data The value to assign to the {#data} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.event_type = attributes[:'eventType'] if attributes[:'eventType']

      raise 'You cannot provide both :eventType and :event_type' if attributes.key?(:'eventType') && attributes.key?(:'event_type')

      self.event_type = attributes[:'event_type'] if attributes[:'event_type']

      self.cloud_events_version = attributes[:'cloudEventsVersion'] if attributes[:'cloudEventsVersion']

      raise 'You cannot provide both :cloudEventsVersion and :cloud_events_version' if attributes.key?(:'cloudEventsVersion') && attributes.key?(:'cloud_events_version')

      self.cloud_events_version = attributes[:'cloud_events_version'] if attributes[:'cloud_events_version']

      self.event_type_version = attributes[:'eventTypeVersion'] if attributes[:'eventTypeVersion']

      raise 'You cannot provide both :eventTypeVersion and :event_type_version' if attributes.key?(:'eventTypeVersion') && attributes.key?(:'event_type_version')

      self.event_type_version = attributes[:'event_type_version'] if attributes[:'event_type_version']

      self.source = attributes[:'source'] if attributes[:'source']

      self.event_id = attributes[:'eventId'] if attributes[:'eventId']

      raise 'You cannot provide both :eventId and :event_id' if attributes.key?(:'eventId') && attributes.key?(:'event_id')

      self.event_id = attributes[:'event_id'] if attributes[:'event_id']

      self.event_time = attributes[:'eventTime'] if attributes[:'eventTime']

      raise 'You cannot provide both :eventTime and :event_time' if attributes.key?(:'eventTime') && attributes.key?(:'event_time')

      self.event_time = attributes[:'event_time'] if attributes[:'event_time']

      self.content_type = attributes[:'contentType'] if attributes[:'contentType']

      raise 'You cannot provide both :contentType and :content_type' if attributes.key?(:'contentType') && attributes.key?(:'content_type')

      self.content_type = attributes[:'content_type'] if attributes[:'content_type']

      self.data = attributes[:'data'] if attributes[:'data']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        event_type == other.event_type &&
        cloud_events_version == other.cloud_events_version &&
        event_type_version == other.event_type_version &&
        source == other.source &&
        event_id == other.event_id &&
        event_time == other.event_time &&
        content_type == other.content_type &&
        data == other.data
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
      [event_type, cloud_events_version, event_type_version, source, event_id, event_time, content_type, data].hash
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
