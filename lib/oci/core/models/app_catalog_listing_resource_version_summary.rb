# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Listing Resource Version summary
  class Core::Models::AppCatalogListingResourceVersionSummary
    # The OCID of the listing this resource version belongs to.
    # @return [String]
    attr_accessor :listing_id

    # Date and time the listing resource version was published, in RFC3339 format.
    # Example: `2018-03-20T12:32:53.532Z`
    #
    # @return [DateTime]
    attr_accessor :time_published

    # OCID of the listing resource.
    # @return [String]
    attr_accessor :listing_resource_id

    # Resource Version.
    # @return [String]
    attr_accessor :listing_resource_version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'listing_id': :'listingId',
        'time_published': :'timePublished',
        'listing_resource_id': :'listingResourceId',
        'listing_resource_version': :'listingResourceVersion'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'listing_id': :'String',
        'time_published': :'DateTime',
        'listing_resource_id': :'String',
        'listing_resource_version': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :listing_id The value to assign to the {#listing_id} property
    # @option attributes [DateTime] :time_published The value to assign to the {#time_published} property
    # @option attributes [String] :listing_resource_id The value to assign to the {#listing_resource_id} property
    # @option attributes [String] :listing_resource_version The value to assign to the {#listing_resource_version} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.listing_id = attributes[:'listingId'] if attributes[:'listingId']

      raise 'You cannot provide both :listingId and :listing_id' if attributes.key?(:'listingId') && attributes.key?(:'listing_id')

      self.listing_id = attributes[:'listing_id'] if attributes[:'listing_id']

      self.time_published = attributes[:'timePublished'] if attributes[:'timePublished']

      raise 'You cannot provide both :timePublished and :time_published' if attributes.key?(:'timePublished') && attributes.key?(:'time_published')

      self.time_published = attributes[:'time_published'] if attributes[:'time_published']

      self.listing_resource_id = attributes[:'listingResourceId'] if attributes[:'listingResourceId']

      raise 'You cannot provide both :listingResourceId and :listing_resource_id' if attributes.key?(:'listingResourceId') && attributes.key?(:'listing_resource_id')

      self.listing_resource_id = attributes[:'listing_resource_id'] if attributes[:'listing_resource_id']

      self.listing_resource_version = attributes[:'listingResourceVersion'] if attributes[:'listingResourceVersion']

      raise 'You cannot provide both :listingResourceVersion and :listing_resource_version' if attributes.key?(:'listingResourceVersion') && attributes.key?(:'listing_resource_version')

      self.listing_resource_version = attributes[:'listing_resource_version'] if attributes[:'listing_resource_version']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        listing_id == other.listing_id &&
        time_published == other.time_published &&
        listing_resource_id == other.listing_resource_id &&
        listing_resource_version == other.listing_resource_version
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
      [listing_id, time_published, listing_resource_id, listing_resource_version].hash
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
