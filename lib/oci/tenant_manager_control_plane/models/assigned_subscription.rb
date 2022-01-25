# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Assigned subscription information.
  class TenantManagerControlPlane::Models::AssignedSubscription
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** OCID of the subscription.
    # @return [String]
    attr_accessor :id

    # **[Required]** OCID of the compartment. Always a tenancy OCID.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** Subscription id.
    # @return [String]
    attr_accessor :classic_subscription_id

    # **[Required]** The type of subscription, such as 'CLOUDCM', 'SAAS', 'ERP', or 'CRM'.
    # @return [String]
    attr_accessor :service_name

    # Denotes if the subscription is legacy or not.
    # @return [BOOLEAN]
    attr_accessor :is_classic_subscription

    # Region for the subscription.
    # @return [String]
    attr_accessor :region_assignment

    # Lifecycle state of the subscription.
    # @return [String]
    attr_reader :lifecycle_state

    # List of sku linked to the subscription.
    # @return [Array<OCI::TenantManagerControlPlane::Models::SubscriptionSku>]
    attr_accessor :skus

    # List of subscription order OCIDs that contributed to this subscription.
    # @return [Array<String>]
    attr_accessor :order_ids

    # Subscription start time.
    # @return [DateTime]
    attr_accessor :start_date

    # Subscription end time.
    # @return [DateTime]
    attr_accessor :end_date

    # Date-time when subscription is updated.
    # @return [DateTime]
    attr_accessor :time_updated

    # Date-time when subscription is created.
    # @return [DateTime]
    attr_accessor :time_created

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'compartment_id': :'compartmentId',
        'classic_subscription_id': :'classicSubscriptionId',
        'service_name': :'serviceName',
        'is_classic_subscription': :'isClassicSubscription',
        'region_assignment': :'regionAssignment',
        'lifecycle_state': :'lifecycleState',
        'skus': :'skus',
        'order_ids': :'orderIds',
        'start_date': :'startDate',
        'end_date': :'endDate',
        'time_updated': :'timeUpdated',
        'time_created': :'timeCreated'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'compartment_id': :'String',
        'classic_subscription_id': :'String',
        'service_name': :'String',
        'is_classic_subscription': :'BOOLEAN',
        'region_assignment': :'String',
        'lifecycle_state': :'String',
        'skus': :'Array<OCI::TenantManagerControlPlane::Models::SubscriptionSku>',
        'order_ids': :'Array<String>',
        'start_date': :'DateTime',
        'end_date': :'DateTime',
        'time_updated': :'DateTime',
        'time_created': :'DateTime'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :classic_subscription_id The value to assign to the {#classic_subscription_id} property
    # @option attributes [String] :service_name The value to assign to the {#service_name} property
    # @option attributes [BOOLEAN] :is_classic_subscription The value to assign to the {#is_classic_subscription} property
    # @option attributes [String] :region_assignment The value to assign to the {#region_assignment} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [Array<OCI::TenantManagerControlPlane::Models::SubscriptionSku>] :skus The value to assign to the {#skus} property
    # @option attributes [Array<String>] :order_ids The value to assign to the {#order_ids} property
    # @option attributes [DateTime] :start_date The value to assign to the {#start_date} property
    # @option attributes [DateTime] :end_date The value to assign to the {#end_date} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.classic_subscription_id = attributes[:'classicSubscriptionId'] if attributes[:'classicSubscriptionId']

      raise 'You cannot provide both :classicSubscriptionId and :classic_subscription_id' if attributes.key?(:'classicSubscriptionId') && attributes.key?(:'classic_subscription_id')

      self.classic_subscription_id = attributes[:'classic_subscription_id'] if attributes[:'classic_subscription_id']

      self.service_name = attributes[:'serviceName'] if attributes[:'serviceName']

      raise 'You cannot provide both :serviceName and :service_name' if attributes.key?(:'serviceName') && attributes.key?(:'service_name')

      self.service_name = attributes[:'service_name'] if attributes[:'service_name']

      self.is_classic_subscription = attributes[:'isClassicSubscription'] unless attributes[:'isClassicSubscription'].nil?
      self.is_classic_subscription = false if is_classic_subscription.nil? && !attributes.key?(:'isClassicSubscription') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isClassicSubscription and :is_classic_subscription' if attributes.key?(:'isClassicSubscription') && attributes.key?(:'is_classic_subscription')

      self.is_classic_subscription = attributes[:'is_classic_subscription'] unless attributes[:'is_classic_subscription'].nil?
      self.is_classic_subscription = false if is_classic_subscription.nil? && !attributes.key?(:'isClassicSubscription') && !attributes.key?(:'is_classic_subscription') # rubocop:disable Style/StringLiterals

      self.region_assignment = attributes[:'regionAssignment'] if attributes[:'regionAssignment']

      raise 'You cannot provide both :regionAssignment and :region_assignment' if attributes.key?(:'regionAssignment') && attributes.key?(:'region_assignment')

      self.region_assignment = attributes[:'region_assignment'] if attributes[:'region_assignment']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.skus = attributes[:'skus'] if attributes[:'skus']

      self.order_ids = attributes[:'orderIds'] if attributes[:'orderIds']

      raise 'You cannot provide both :orderIds and :order_ids' if attributes.key?(:'orderIds') && attributes.key?(:'order_ids')

      self.order_ids = attributes[:'order_ids'] if attributes[:'order_ids']

      self.start_date = attributes[:'startDate'] if attributes[:'startDate']

      raise 'You cannot provide both :startDate and :start_date' if attributes.key?(:'startDate') && attributes.key?(:'start_date')

      self.start_date = attributes[:'start_date'] if attributes[:'start_date']

      self.end_date = attributes[:'endDate'] if attributes[:'endDate']

      raise 'You cannot provide both :endDate and :end_date' if attributes.key?(:'endDate') && attributes.key?(:'end_date')

      self.end_date = attributes[:'end_date'] if attributes[:'end_date']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
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
        compartment_id == other.compartment_id &&
        classic_subscription_id == other.classic_subscription_id &&
        service_name == other.service_name &&
        is_classic_subscription == other.is_classic_subscription &&
        region_assignment == other.region_assignment &&
        lifecycle_state == other.lifecycle_state &&
        skus == other.skus &&
        order_ids == other.order_ids &&
        start_date == other.start_date &&
        end_date == other.end_date &&
        time_updated == other.time_updated &&
        time_created == other.time_created
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
      [id, compartment_id, classic_subscription_id, service_name, is_classic_subscription, region_assignment, lifecycle_state, skus, order_ids, start_date, end_date, time_updated, time_created].hash
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
