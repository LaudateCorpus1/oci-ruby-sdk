# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Detailed Tunnel SA
  class Core::Models::TunnelSecurityAssociationSummary
    TUNNEL_SA_STATUS_ENUM = [
      TUNNEL_SA_STATUS_INITIATING = 'INITIATING'.freeze,
      TUNNEL_SA_STATUS_LISTENING = 'LISTENING'.freeze,
      TUNNEL_SA_STATUS_UP = 'UP'.freeze,
      TUNNEL_SA_STATUS_DOWN = 'DOWN'.freeze,
      TUNNEL_SA_STATUS_ERROR = 'ERROR'.freeze,
      TUNNEL_SA_STATUS_UNKNOWN = 'UNKNOWN'.freeze,
      TUNNEL_SA_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # IP and mask of the Partner Subnet for Policy Based VPNs or Static Routes
    # @return [String]
    attr_accessor :cpe_subnet

    # IP and mask of the Local Subnet for Policy Based VPNs or Static Routes
    # @return [String]
    attr_accessor :oracle_subnet

    # Phase 1 Status of the Tunnel
    # @return [String]
    attr_reader :tunnel_sa_status

    # Current state if status is not up, including phase1/phase2 and possible reason for tunnel not up
    # @return [String]
    attr_accessor :tunnel_sa_error_info

    # Seconds in current state
    # @return [String]
    attr_accessor :time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'cpe_subnet': :'cpeSubnet',
        'oracle_subnet': :'oracleSubnet',
        'tunnel_sa_status': :'tunnelSaStatus',
        'tunnel_sa_error_info': :'tunnelSaErrorInfo',
        'time': :'time'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'cpe_subnet': :'String',
        'oracle_subnet': :'String',
        'tunnel_sa_status': :'String',
        'tunnel_sa_error_info': :'String',
        'time': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :cpe_subnet The value to assign to the {#cpe_subnet} property
    # @option attributes [String] :oracle_subnet The value to assign to the {#oracle_subnet} property
    # @option attributes [String] :tunnel_sa_status The value to assign to the {#tunnel_sa_status} property
    # @option attributes [String] :tunnel_sa_error_info The value to assign to the {#tunnel_sa_error_info} property
    # @option attributes [String] :time The value to assign to the {#time} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.cpe_subnet = attributes[:'cpeSubnet'] if attributes[:'cpeSubnet']

      raise 'You cannot provide both :cpeSubnet and :cpe_subnet' if attributes.key?(:'cpeSubnet') && attributes.key?(:'cpe_subnet')

      self.cpe_subnet = attributes[:'cpe_subnet'] if attributes[:'cpe_subnet']

      self.oracle_subnet = attributes[:'oracleSubnet'] if attributes[:'oracleSubnet']

      raise 'You cannot provide both :oracleSubnet and :oracle_subnet' if attributes.key?(:'oracleSubnet') && attributes.key?(:'oracle_subnet')

      self.oracle_subnet = attributes[:'oracle_subnet'] if attributes[:'oracle_subnet']

      self.tunnel_sa_status = attributes[:'tunnelSaStatus'] if attributes[:'tunnelSaStatus']

      raise 'You cannot provide both :tunnelSaStatus and :tunnel_sa_status' if attributes.key?(:'tunnelSaStatus') && attributes.key?(:'tunnel_sa_status')

      self.tunnel_sa_status = attributes[:'tunnel_sa_status'] if attributes[:'tunnel_sa_status']

      self.tunnel_sa_error_info = attributes[:'tunnelSaErrorInfo'] if attributes[:'tunnelSaErrorInfo']

      raise 'You cannot provide both :tunnelSaErrorInfo and :tunnel_sa_error_info' if attributes.key?(:'tunnelSaErrorInfo') && attributes.key?(:'tunnel_sa_error_info')

      self.tunnel_sa_error_info = attributes[:'tunnel_sa_error_info'] if attributes[:'tunnel_sa_error_info']

      self.time = attributes[:'time'] if attributes[:'time']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tunnel_sa_status Object to be assigned
    def tunnel_sa_status=(tunnel_sa_status)
      # rubocop:disable Style/ConditionalAssignment
      if tunnel_sa_status && !TUNNEL_SA_STATUS_ENUM.include?(tunnel_sa_status)
        OCI.logger.debug("Unknown value for 'tunnel_sa_status' [" + tunnel_sa_status + "]. Mapping to 'TUNNEL_SA_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @tunnel_sa_status = TUNNEL_SA_STATUS_UNKNOWN_ENUM_VALUE
      else
        @tunnel_sa_status = tunnel_sa_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        cpe_subnet == other.cpe_subnet &&
        oracle_subnet == other.oracle_subnet &&
        tunnel_sa_status == other.tunnel_sa_status &&
        tunnel_sa_error_info == other.tunnel_sa_error_info &&
        time == other.time
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
      [cpe_subnet, oracle_subnet, tunnel_sa_status, tunnel_sa_error_info, time].hash
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