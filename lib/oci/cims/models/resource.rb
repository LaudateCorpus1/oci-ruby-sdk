# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details about the ticket item object.
  class Cims::Models::Resource
    REGION_ENUM = [
      REGION_DEV = 'DEV'.freeze,
      REGION_SEA = 'SEA'.freeze,
      REGION_INTEG_NEXT = 'INTEG_NEXT'.freeze,
      REGION_INTEG_STABLE = 'INTEG_STABLE'.freeze,
      REGION_PHX = 'PHX'.freeze,
      REGION_IAD = 'IAD'.freeze,
      REGION_FRA = 'FRA'.freeze,
      REGION_EU_FRANKFURT_1 = 'EU_FRANKFURT_1'.freeze,
      REGION_LHR = 'LHR'.freeze,
      REGION_YYZ = 'YYZ'.freeze,
      REGION_NRT = 'NRT'.freeze,
      REGION_ICN = 'ICN'.freeze,
      REGION_BOM = 'BOM'.freeze,
      REGION_GRU = 'GRU'.freeze,
      REGION_SYD = 'SYD'.freeze,
      REGION_ZRH = 'ZRH'.freeze,
      REGION_JED = 'JED'.freeze,
      REGION_AMS = 'AMS'.freeze,
      REGION_KIX = 'KIX'.freeze,
      REGION_MEL = 'MEL'.freeze,
      REGION_YUL = 'YUL'.freeze,
      REGION_HYD = 'HYD'.freeze,
      REGION_YNY = 'YNY'.freeze,
      REGION_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    AVAILABILITY_DOMAIN_ENUM = [
      AVAILABILITY_DOMAIN_DEV_1 = 'DEV_1'.freeze,
      AVAILABILITY_DOMAIN_DEV_2 = 'DEV_2'.freeze,
      AVAILABILITY_DOMAIN_DEV_3 = 'DEV_3'.freeze,
      AVAILABILITY_DOMAIN_INTEG_NEXT_1 = 'INTEG_NEXT_1'.freeze,
      AVAILABILITY_DOMAIN_INTEG_STABLE_1 = 'INTEG_STABLE_1'.freeze,
      AVAILABILITY_DOMAIN_SEA_AD_1 = 'SEA_AD_1'.freeze,
      AVAILABILITY_DOMAIN_SEA_AD_2 = 'SEA_AD_2'.freeze,
      AVAILABILITY_DOMAIN_SEA_AD_3 = 'SEA_AD_3'.freeze,
      AVAILABILITY_DOMAIN_PHX_AD_1 = 'PHX_AD_1'.freeze,
      AVAILABILITY_DOMAIN_PHX_AD_2 = 'PHX_AD_2'.freeze,
      AVAILABILITY_DOMAIN_PHX_AD_3 = 'PHX_AD_3'.freeze,
      AVAILABILITY_DOMAIN_US_ASHBURN_AD_1 = 'US_ASHBURN_AD_1'.freeze,
      AVAILABILITY_DOMAIN_US_ASHBURN_AD_2 = 'US_ASHBURN_AD_2'.freeze,
      AVAILABILITY_DOMAIN_US_ASHBURN_AD_3 = 'US_ASHBURN_AD_3'.freeze,
      AVAILABILITY_DOMAIN_US_ASHBURN_AD_4 = 'US_ASHBURN_AD_4'.freeze,
      AVAILABILITY_DOMAIN_EU_FRANKFURT_1_AD_1 = 'EU_FRANKFURT_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_EU_FRANKFURT_1_AD_2 = 'EU_FRANKFURT_1_AD_2'.freeze,
      AVAILABILITY_DOMAIN_EU_FRANKFURT_1_AD_3 = 'EU_FRANKFURT_1_AD_3'.freeze,
      AVAILABILITY_DOMAIN_UK_LONDON_1_AD_1 = 'UK_LONDON_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_UK_LONDON_1_AD_2 = 'UK_LONDON_1_AD_2'.freeze,
      AVAILABILITY_DOMAIN_UK_LONDON_1_AD_3 = 'UK_LONDON_1_AD_3'.freeze,
      AVAILABILITY_DOMAIN_CA_TORONTO_1_AD_1 = 'CA_TORONTO_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_TOKYO_1_AD_1 = 'AP_TOKYO_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_SEOUL_1_AD_1 = 'AP_SEOUL_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_MUMBAI_1_AD_1 = 'AP_MUMBAI_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_SA_SAOPAULO_1_AD_1 = 'SA_SAOPAULO_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_ME_JEDDAH_1_AD_1 = 'ME_JEDDAH_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_OSAKA_1_AD_1 = 'AP_OSAKA_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_SYDNEY_1_AD_1 = 'AP_SYDNEY_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_EU_ZURICH_1_AD_1 = 'EU_ZURICH_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_EU_AMSTERDAM_1_AD_1 = 'EU_AMSTERDAM_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_MELBOURNE_1_AD_1 = 'AP_MELBOURNE_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_CA_MONTREAL_1_AD_1 = 'CA_MONTREAL_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_HYDERABAD_1_AD_1 = 'AP_HYDERABAD_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_AP_CHUNCHEON_1_AD_1 = 'AP_CHUNCHEON_1_AD_1'.freeze,
      AVAILABILITY_DOMAIN_NO_AD = 'NO_AD'.freeze,
      AVAILABILITY_DOMAIN_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # @return [OCI::Cims::Models::Item]
    attr_accessor :item

    # The list of available Oracle Cloud Infrastructure regions.
    # @return [String]
    attr_reader :region

    # The list of available Oracle Cloud Infrastructure availability domains.
    # @return [String]
    attr_reader :availability_domain

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'item': :'item',
        'region': :'region',
        'availability_domain': :'availabilityDomain'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'item': :'OCI::Cims::Models::Item',
        'region': :'String',
        'availability_domain': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [OCI::Cims::Models::Item] :item The value to assign to the {#item} property
    # @option attributes [String] :region The value to assign to the {#region} property
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.item = attributes[:'item'] if attributes[:'item']

      self.region = attributes[:'region'] if attributes[:'region']

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(region)
      # rubocop:disable Style/ConditionalAssignment
      if region && !REGION_ENUM.include?(region)
        OCI.logger.debug("Unknown value for 'region' [" + region + "]. Mapping to 'REGION_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @region = REGION_UNKNOWN_ENUM_VALUE
      else
        @region = region
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability_domain Object to be assigned
    def availability_domain=(availability_domain)
      # rubocop:disable Style/ConditionalAssignment
      if availability_domain && !AVAILABILITY_DOMAIN_ENUM.include?(availability_domain)
        OCI.logger.debug("Unknown value for 'availability_domain' [" + availability_domain + "]. Mapping to 'AVAILABILITY_DOMAIN_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @availability_domain = AVAILABILITY_DOMAIN_UNKNOWN_ENUM_VALUE
      else
        @availability_domain = availability_domain
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        item == other.item &&
        region == other.region &&
        availability_domain == other.availability_domain
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
      [item, region, availability_domain].hash
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
