# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The finding benefits data for the SQL Tuning Advisor summary report.
  class DatabaseManagement::Models::SqlTuningAdvisorTaskSummaryFindingBenefits
    # **[Required]** The count of Potential database time before SQL recommendations are implemented.
    # @return [Integer]
    attr_accessor :db_time_before_recommended

    # **[Required]** The count of Potential database time after SQL recommendations are implemented.
    # @return [Integer]
    attr_accessor :db_time_after_recommended

    # **[Required]** The count of database time benefit before SQL recommendations are implemented.
    # @return [Integer]
    attr_accessor :db_time_before_implemented

    # **[Required]** The count of database time benefit after SQL recommendations are implemented.
    # @return [Integer]
    attr_accessor :db_time_after_implemented

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'db_time_before_recommended': :'dbTimeBeforeRecommended',
        'db_time_after_recommended': :'dbTimeAfterRecommended',
        'db_time_before_implemented': :'dbTimeBeforeImplemented',
        'db_time_after_implemented': :'dbTimeAfterImplemented'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'db_time_before_recommended': :'Integer',
        'db_time_after_recommended': :'Integer',
        'db_time_before_implemented': :'Integer',
        'db_time_after_implemented': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Integer] :db_time_before_recommended The value to assign to the {#db_time_before_recommended} property
    # @option attributes [Integer] :db_time_after_recommended The value to assign to the {#db_time_after_recommended} property
    # @option attributes [Integer] :db_time_before_implemented The value to assign to the {#db_time_before_implemented} property
    # @option attributes [Integer] :db_time_after_implemented The value to assign to the {#db_time_after_implemented} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.db_time_before_recommended = attributes[:'dbTimeBeforeRecommended'] if attributes[:'dbTimeBeforeRecommended']

      raise 'You cannot provide both :dbTimeBeforeRecommended and :db_time_before_recommended' if attributes.key?(:'dbTimeBeforeRecommended') && attributes.key?(:'db_time_before_recommended')

      self.db_time_before_recommended = attributes[:'db_time_before_recommended'] if attributes[:'db_time_before_recommended']

      self.db_time_after_recommended = attributes[:'dbTimeAfterRecommended'] if attributes[:'dbTimeAfterRecommended']

      raise 'You cannot provide both :dbTimeAfterRecommended and :db_time_after_recommended' if attributes.key?(:'dbTimeAfterRecommended') && attributes.key?(:'db_time_after_recommended')

      self.db_time_after_recommended = attributes[:'db_time_after_recommended'] if attributes[:'db_time_after_recommended']

      self.db_time_before_implemented = attributes[:'dbTimeBeforeImplemented'] if attributes[:'dbTimeBeforeImplemented']

      raise 'You cannot provide both :dbTimeBeforeImplemented and :db_time_before_implemented' if attributes.key?(:'dbTimeBeforeImplemented') && attributes.key?(:'db_time_before_implemented')

      self.db_time_before_implemented = attributes[:'db_time_before_implemented'] if attributes[:'db_time_before_implemented']

      self.db_time_after_implemented = attributes[:'dbTimeAfterImplemented'] if attributes[:'dbTimeAfterImplemented']

      raise 'You cannot provide both :dbTimeAfterImplemented and :db_time_after_implemented' if attributes.key?(:'dbTimeAfterImplemented') && attributes.key?(:'db_time_after_implemented')

      self.db_time_after_implemented = attributes[:'db_time_after_implemented'] if attributes[:'db_time_after_implemented']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        db_time_before_recommended == other.db_time_before_recommended &&
        db_time_after_recommended == other.db_time_after_recommended &&
        db_time_before_implemented == other.db_time_before_implemented &&
        db_time_after_implemented == other.db_time_after_implemented
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
      [db_time_before_recommended, db_time_after_recommended, db_time_before_implemented, db_time_after_implemented].hash
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
