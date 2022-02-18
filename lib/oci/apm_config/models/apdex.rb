# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # An Apdex configuration rule.
  # The Apdex score is computed based on how the response time of a span compares to two predefined threshold values.
  # The first threshold defines the maximum response time that is considered satisfactory for the end user.
  # The second one defines the maximum response time that is considered tolerable. All times larger than that will
  # be considered frustrating for the end user.
  # An Apdex configuration rule works by selecting a subset of spans based on a filter expression and applying the
  # two threshold comparisons to compute a score for each of the selected spans.
  # The rule has an \"isApplyToErrorSpans\" property that controls whether or not to compute the Apdex for spans that
  # have been marked as errors. If this property is set to \"true\", then the Apdex score for error spans is computed in
  # the same way as for non-error ones. If set to \"false\", then computation for error spans is skipped, and the score
  # is set to \"frustrating\" regardless of the configured thresholds. The default is \"false\".
  # The \"isEnabled\" property controls whether or not an Apdex score is computed and can be used to disable Apdex
  # score for certain spans. The default is \"true\".
  # The \"priority\" property specifies the importance of the rule within a rule set.
  # Lower values indicate a higher priority. Rules with higher priorities are evaluated first in the rule set. The
  # priority of the rules must be unique within a rule set.
  #
  class ApmConfig::Models::Apdex
    # **[Required]** The string that defines the Span Filter expression.
    #
    # @return [String]
    attr_accessor :filter_text

    # **[Required]** The priority controls the order in which multiple rules in a rule set are applied. Lower values indicate higher
    # priorities. Rules with higher priority are applied first, and once a match is found, the rest of the rules are
    # ignored. Rules within the same rule set cannot have the same priority.
    #
    # @return [Integer]
    attr_accessor :priority

    # Specifies whether the Apdex score should be computed for spans matching the rule. This can be used to disable
    # Apdex score for spans that do not need or require it. The default is \"true\".
    #
    # @return [BOOLEAN]
    attr_accessor :is_enabled

    # The maximum response time in milliseconds that is considered \"satisfactory\" for the end user.
    #
    # @return [Integer]
    attr_accessor :satisfied_response_time

    # The maximum response time in milliseconds that is considered \"tolerable\" for the end user. A response
    # time beyond this threshold is considered \"frustrating\".
    # This value cannot be lower than \"satisfiedResponseTime\".
    #
    # @return [Integer]
    attr_accessor :tolerating_response_time

    # Specifies whether an Apdex score should be computed for error spans. Setting it to \"true\" means that the Apdex
    # score is computed in the usual way. Setting it to \"false\" skips the Apdex computation and sets the Apdex
    # score to \"frustrating\" regardless of the configured thresholds. The default is \"false\".
    #
    # @return [BOOLEAN]
    attr_accessor :is_apply_to_error_spans

    # A user-friendly name that provides a short description of this rule.
    # @return [String]
    attr_accessor :display_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'filter_text': :'filterText',
        'priority': :'priority',
        'is_enabled': :'isEnabled',
        'satisfied_response_time': :'satisfiedResponseTime',
        'tolerating_response_time': :'toleratingResponseTime',
        'is_apply_to_error_spans': :'isApplyToErrorSpans',
        'display_name': :'displayName'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'filter_text': :'String',
        'priority': :'Integer',
        'is_enabled': :'BOOLEAN',
        'satisfied_response_time': :'Integer',
        'tolerating_response_time': :'Integer',
        'is_apply_to_error_spans': :'BOOLEAN',
        'display_name': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :filter_text The value to assign to the {#filter_text} property
    # @option attributes [Integer] :priority The value to assign to the {#priority} property
    # @option attributes [BOOLEAN] :is_enabled The value to assign to the {#is_enabled} property
    # @option attributes [Integer] :satisfied_response_time The value to assign to the {#satisfied_response_time} property
    # @option attributes [Integer] :tolerating_response_time The value to assign to the {#tolerating_response_time} property
    # @option attributes [BOOLEAN] :is_apply_to_error_spans The value to assign to the {#is_apply_to_error_spans} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.filter_text = attributes[:'filterText'] if attributes[:'filterText']

      raise 'You cannot provide both :filterText and :filter_text' if attributes.key?(:'filterText') && attributes.key?(:'filter_text')

      self.filter_text = attributes[:'filter_text'] if attributes[:'filter_text']

      self.priority = attributes[:'priority'] if attributes[:'priority']

      self.is_enabled = attributes[:'isEnabled'] unless attributes[:'isEnabled'].nil?
      self.is_enabled = true if is_enabled.nil? && !attributes.key?(:'isEnabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isEnabled and :is_enabled' if attributes.key?(:'isEnabled') && attributes.key?(:'is_enabled')

      self.is_enabled = attributes[:'is_enabled'] unless attributes[:'is_enabled'].nil?
      self.is_enabled = true if is_enabled.nil? && !attributes.key?(:'isEnabled') && !attributes.key?(:'is_enabled') # rubocop:disable Style/StringLiterals

      self.satisfied_response_time = attributes[:'satisfiedResponseTime'] if attributes[:'satisfiedResponseTime']

      raise 'You cannot provide both :satisfiedResponseTime and :satisfied_response_time' if attributes.key?(:'satisfiedResponseTime') && attributes.key?(:'satisfied_response_time')

      self.satisfied_response_time = attributes[:'satisfied_response_time'] if attributes[:'satisfied_response_time']

      self.tolerating_response_time = attributes[:'toleratingResponseTime'] if attributes[:'toleratingResponseTime']

      raise 'You cannot provide both :toleratingResponseTime and :tolerating_response_time' if attributes.key?(:'toleratingResponseTime') && attributes.key?(:'tolerating_response_time')

      self.tolerating_response_time = attributes[:'tolerating_response_time'] if attributes[:'tolerating_response_time']

      self.is_apply_to_error_spans = attributes[:'isApplyToErrorSpans'] unless attributes[:'isApplyToErrorSpans'].nil?
      self.is_apply_to_error_spans = false if is_apply_to_error_spans.nil? && !attributes.key?(:'isApplyToErrorSpans') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isApplyToErrorSpans and :is_apply_to_error_spans' if attributes.key?(:'isApplyToErrorSpans') && attributes.key?(:'is_apply_to_error_spans')

      self.is_apply_to_error_spans = attributes[:'is_apply_to_error_spans'] unless attributes[:'is_apply_to_error_spans'].nil?
      self.is_apply_to_error_spans = false if is_apply_to_error_spans.nil? && !attributes.key?(:'isApplyToErrorSpans') && !attributes.key?(:'is_apply_to_error_spans') # rubocop:disable Style/StringLiterals

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        filter_text == other.filter_text &&
        priority == other.priority &&
        is_enabled == other.is_enabled &&
        satisfied_response_time == other.satisfied_response_time &&
        tolerating_response_time == other.tolerating_response_time &&
        is_apply_to_error_spans == other.is_apply_to_error_spans &&
        display_name == other.display_name
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
      [filter_text, priority, is_enabled, satisfied_response_time, tolerating_response_time, is_apply_to_error_spans, display_name].hash
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