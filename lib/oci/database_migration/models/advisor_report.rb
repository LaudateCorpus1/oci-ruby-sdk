# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Pre-Migration advisor report details.
  #
  class DatabaseMigration::Models::AdvisorReport
    RESULT_ENUM = [
      RESULT_FATAL = 'FATAL'.freeze,
      RESULT_BLOCKER = 'BLOCKER'.freeze,
      RESULT_WARNING = 'WARNING'.freeze,
      RESULT_INFORMATIONAL = 'INFORMATIONAL'.freeze,
      RESULT_PASS = 'PASS'.freeze,
      RESULT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # @return [OCI::DatabaseMigration::Models::AdvisorReportLocationDetails]
    attr_accessor :report_location_details

    # **[Required]** Pre-Migration advisor result.
    #
    # @return [String]
    attr_reader :result

    # **[Required]** Number of Fatal results in the advisor report.
    #
    # @return [Integer]
    attr_accessor :number_of_fatal

    # **[Required]** Number of Fatal Blocker results in the advisor report.
    #
    # @return [Integer]
    attr_accessor :number_of_fatal_blockers

    # **[Required]** Number of Warning results in the advisor report.
    #
    # @return [Integer]
    attr_accessor :number_of_warnings

    # **[Required]** Number of Informational results in the advisor report.
    #
    # @return [Integer]
    attr_accessor :number_of_informational_results

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'report_location_details': :'reportLocationDetails',
        'result': :'result',
        'number_of_fatal': :'numberOfFatal',
        'number_of_fatal_blockers': :'numberOfFatalBlockers',
        'number_of_warnings': :'numberOfWarnings',
        'number_of_informational_results': :'numberOfInformationalResults'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'report_location_details': :'OCI::DatabaseMigration::Models::AdvisorReportLocationDetails',
        'result': :'String',
        'number_of_fatal': :'Integer',
        'number_of_fatal_blockers': :'Integer',
        'number_of_warnings': :'Integer',
        'number_of_informational_results': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [OCI::DatabaseMigration::Models::AdvisorReportLocationDetails] :report_location_details The value to assign to the {#report_location_details} property
    # @option attributes [String] :result The value to assign to the {#result} property
    # @option attributes [Integer] :number_of_fatal The value to assign to the {#number_of_fatal} property
    # @option attributes [Integer] :number_of_fatal_blockers The value to assign to the {#number_of_fatal_blockers} property
    # @option attributes [Integer] :number_of_warnings The value to assign to the {#number_of_warnings} property
    # @option attributes [Integer] :number_of_informational_results The value to assign to the {#number_of_informational_results} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.report_location_details = attributes[:'reportLocationDetails'] if attributes[:'reportLocationDetails']

      raise 'You cannot provide both :reportLocationDetails and :report_location_details' if attributes.key?(:'reportLocationDetails') && attributes.key?(:'report_location_details')

      self.report_location_details = attributes[:'report_location_details'] if attributes[:'report_location_details']

      self.result = attributes[:'result'] if attributes[:'result']

      self.number_of_fatal = attributes[:'numberOfFatal'] if attributes[:'numberOfFatal']

      raise 'You cannot provide both :numberOfFatal and :number_of_fatal' if attributes.key?(:'numberOfFatal') && attributes.key?(:'number_of_fatal')

      self.number_of_fatal = attributes[:'number_of_fatal'] if attributes[:'number_of_fatal']

      self.number_of_fatal_blockers = attributes[:'numberOfFatalBlockers'] if attributes[:'numberOfFatalBlockers']

      raise 'You cannot provide both :numberOfFatalBlockers and :number_of_fatal_blockers' if attributes.key?(:'numberOfFatalBlockers') && attributes.key?(:'number_of_fatal_blockers')

      self.number_of_fatal_blockers = attributes[:'number_of_fatal_blockers'] if attributes[:'number_of_fatal_blockers']

      self.number_of_warnings = attributes[:'numberOfWarnings'] if attributes[:'numberOfWarnings']

      raise 'You cannot provide both :numberOfWarnings and :number_of_warnings' if attributes.key?(:'numberOfWarnings') && attributes.key?(:'number_of_warnings')

      self.number_of_warnings = attributes[:'number_of_warnings'] if attributes[:'number_of_warnings']

      self.number_of_informational_results = attributes[:'numberOfInformationalResults'] if attributes[:'numberOfInformationalResults']

      raise 'You cannot provide both :numberOfInformationalResults and :number_of_informational_results' if attributes.key?(:'numberOfInformationalResults') && attributes.key?(:'number_of_informational_results')

      self.number_of_informational_results = attributes[:'number_of_informational_results'] if attributes[:'number_of_informational_results']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result Object to be assigned
    def result=(result)
      # rubocop:disable Style/ConditionalAssignment
      if result && !RESULT_ENUM.include?(result)
        OCI.logger.debug("Unknown value for 'result' [" + result + "]. Mapping to 'RESULT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @result = RESULT_UNKNOWN_ENUM_VALUE
      else
        @result = result
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        report_location_details == other.report_location_details &&
        result == other.result &&
        number_of_fatal == other.number_of_fatal &&
        number_of_fatal_blockers == other.number_of_fatal_blockers &&
        number_of_warnings == other.number_of_warnings &&
        number_of_informational_results == other.number_of_informational_results
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
      [report_location_details, result, number_of_fatal, number_of_fatal_blockers, number_of_warnings, number_of_informational_results].hash
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