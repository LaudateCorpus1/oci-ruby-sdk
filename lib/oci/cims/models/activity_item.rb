# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'
require_relative 'item'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details about the ActivityItem object.
  class Cims::Models::ActivityItem < Cims::Models::Item
    ACTIVITY_TYPE_ENUM = [
      ACTIVITY_TYPE_NOTES = 'NOTES'.freeze,
      ACTIVITY_TYPE_PROBLEM_DESCRIPTION = 'PROBLEM_DESCRIPTION'.freeze,
      ACTIVITY_TYPE_UPDATE = 'UPDATE'.freeze,
      ACTIVITY_TYPE_CLOSE = 'CLOSE'.freeze,
      ACTIVITY_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    ACTIVITY_AUTHOR_ENUM = [
      ACTIVITY_AUTHOR_CUSTOMER = 'CUSTOMER'.freeze,
      ACTIVITY_AUTHOR_ORACLE = 'ORACLE'.freeze,
      ACTIVITY_AUTHOR_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # Comments added with the activity on the support ticket.
    # @return [String]
    attr_accessor :comments

    # The time when the activity was created, in milliseconds since epoch time.
    # @return [Integer]
    attr_accessor :time_created

    # The time when the activity was updated, in milliseconds since epoch time.
    # @return [Integer]
    attr_accessor :time_updated

    # The type of activity occuring on the support ticket.
    # @return [String]
    attr_reader :activity_type

    # The person who updates the activity on the support ticket.
    # @return [String]
    attr_reader :activity_author

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'item_key': :'itemKey',
        'name': :'name',
        'type': :'type',
        'category': :'category',
        'sub_category': :'subCategory',
        'issue_type': :'issueType',
        'comments': :'comments',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'activity_type': :'activityType',
        'activity_author': :'activityAuthor'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'item_key': :'String',
        'name': :'String',
        'type': :'String',
        'category': :'OCI::Cims::Models::Category',
        'sub_category': :'OCI::Cims::Models::SubCategory',
        'issue_type': :'OCI::Cims::Models::IssueType',
        'comments': :'String',
        'time_created': :'Integer',
        'time_updated': :'Integer',
        'activity_type': :'String',
        'activity_author': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :item_key The value to assign to the {OCI::Cims::Models::Item#item_key #item_key} proprety
    # @option attributes [String] :name The value to assign to the {OCI::Cims::Models::Item#name #name} proprety
    # @option attributes [OCI::Cims::Models::Category] :category The value to assign to the {OCI::Cims::Models::Item#category #category} proprety
    # @option attributes [OCI::Cims::Models::SubCategory] :sub_category The value to assign to the {OCI::Cims::Models::Item#sub_category #sub_category} proprety
    # @option attributes [OCI::Cims::Models::IssueType] :issue_type The value to assign to the {OCI::Cims::Models::Item#issue_type #issue_type} proprety
    # @option attributes [String] :comments The value to assign to the {#comments} property
    # @option attributes [Integer] :time_created The value to assign to the {#time_created} property
    # @option attributes [Integer] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :activity_type The value to assign to the {#activity_type} property
    # @option attributes [String] :activity_author The value to assign to the {#activity_author} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['type'] = 'activity'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.comments = attributes[:'comments'] if attributes[:'comments']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.activity_type = attributes[:'activityType'] if attributes[:'activityType']

      raise 'You cannot provide both :activityType and :activity_type' if attributes.key?(:'activityType') && attributes.key?(:'activity_type')

      self.activity_type = attributes[:'activity_type'] if attributes[:'activity_type']

      self.activity_author = attributes[:'activityAuthor'] if attributes[:'activityAuthor']

      raise 'You cannot provide both :activityAuthor and :activity_author' if attributes.key?(:'activityAuthor') && attributes.key?(:'activity_author')

      self.activity_author = attributes[:'activity_author'] if attributes[:'activity_author']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] activity_type Object to be assigned
    def activity_type=(activity_type)
      # rubocop:disable Style/ConditionalAssignment
      if activity_type && !ACTIVITY_TYPE_ENUM.include?(activity_type)
        OCI.logger.debug("Unknown value for 'activity_type' [" + activity_type + "]. Mapping to 'ACTIVITY_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @activity_type = ACTIVITY_TYPE_UNKNOWN_ENUM_VALUE
      else
        @activity_type = activity_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] activity_author Object to be assigned
    def activity_author=(activity_author)
      # rubocop:disable Style/ConditionalAssignment
      if activity_author && !ACTIVITY_AUTHOR_ENUM.include?(activity_author)
        OCI.logger.debug("Unknown value for 'activity_author' [" + activity_author + "]. Mapping to 'ACTIVITY_AUTHOR_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @activity_author = ACTIVITY_AUTHOR_UNKNOWN_ENUM_VALUE
      else
        @activity_author = activity_author
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        item_key == other.item_key &&
        name == other.name &&
        type == other.type &&
        category == other.category &&
        sub_category == other.sub_category &&
        issue_type == other.issue_type &&
        comments == other.comments &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        activity_type == other.activity_type &&
        activity_author == other.activity_author
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
      [item_key, name, type, category, sub_category, issue_type, comments, time_created, time_updated, activity_type, activity_author].hash
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
