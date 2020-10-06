# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Blockchain Platform Instance Description.
  class Blockchain::Models::BlockchainPlatform
    PLATFORM_ROLE_ENUM = [
      PLATFORM_ROLE_FOUNDER = 'FOUNDER'.freeze,
      PLATFORM_ROLE_PARTICIPANT = 'PARTICIPANT'.freeze,
      PLATFORM_ROLE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    COMPUTE_SHAPE_ENUM = [
      COMPUTE_SHAPE_STANDARD = 'STANDARD'.freeze,
      COMPUTE_SHAPE_ENTERPRISE_SMALL = 'ENTERPRISE_SMALL'.freeze,
      COMPUTE_SHAPE_ENTERPRISE_MEDIUM = 'ENTERPRISE_MEDIUM'.freeze,
      COMPUTE_SHAPE_ENTERPRISE_LARGE = 'ENTERPRISE_LARGE'.freeze,
      COMPUTE_SHAPE_ENTERPRISE_EXTRA_LARGE = 'ENTERPRISE_EXTRA_LARGE'.freeze,
      COMPUTE_SHAPE_ENTERPRISE_CUSTOM = 'ENTERPRISE_CUSTOM'.freeze,
      COMPUTE_SHAPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_SCALING = 'SCALING'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** unique identifier that is immutable on creation
    # @return [String]
    attr_accessor :id

    # **[Required]** Platform Instance Display name, can be renamed
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Compartment Identifier
    # @return [String]
    attr_accessor :compartment_id

    # Platform Instance Description
    # @return [String]
    attr_accessor :description

    # Bring your own license
    # @return [BOOLEAN]
    attr_accessor :is_byol

    # The time the the Platform Instance was created. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_created

    # The time the Platform Instance was updated. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_updated

    # The version of the Platform Instance.
    # @return [String]
    attr_accessor :service_version

    # **[Required]** Role of platform - founder or participant
    # @return [String]
    attr_reader :platform_role

    # **[Required]** Type of compute shape - one of Standard, (Enterprise) Small, Medium, Large or Extra Large
    # @return [String]
    attr_reader :compute_shape

    # Service endpoint URL, valid post-provisioning
    # @return [String]
    attr_accessor :service_endpoint

    # The current state of the Platform Instance.
    # @return [String]
    attr_reader :lifecycle_state

    # An message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state.
    # @return [String]
    attr_accessor :lifecycle_details

    # Storage size in TBs
    # @return [Float]
    attr_accessor :storage_size_in_tbs

    # Storage used in TBs
    # @return [Float]
    attr_accessor :storage_used_in_tbs

    # True for multi-AD blockchain plaforms, false for single-AD
    # @return [BOOLEAN]
    attr_accessor :is_multi_ad

    # Number of total OCPUs allocated to the platform cluster
    # @return [Integer]
    attr_accessor :total_ocpu_capacity

    # @return [OCI::Blockchain::Models::BlockchainPlatformComponentDetails]
    attr_accessor :component_details

    # @return [OCI::Blockchain::Models::ReplicaDetails]
    attr_accessor :replicas

    # List of OcpuUtilization for all hosts
    # @return [Array<OCI::Blockchain::Models::OcpuUtilizationInfo>]
    attr_accessor :host_ocpu_utilization_info

    # Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'display_name': :'displayName',
        'compartment_id': :'compartmentId',
        'description': :'description',
        'is_byol': :'isByol',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'service_version': :'serviceVersion',
        'platform_role': :'platformRole',
        'compute_shape': :'computeShape',
        'service_endpoint': :'serviceEndpoint',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails',
        'storage_size_in_tbs': :'storageSizeInTBs',
        'storage_used_in_tbs': :'storageUsedInTBs',
        'is_multi_ad': :'isMultiAD',
        'total_ocpu_capacity': :'totalOcpuCapacity',
        'component_details': :'componentDetails',
        'replicas': :'replicas',
        'host_ocpu_utilization_info': :'hostOcpuUtilizationInfo',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'display_name': :'String',
        'compartment_id': :'String',
        'description': :'String',
        'is_byol': :'BOOLEAN',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'service_version': :'String',
        'platform_role': :'String',
        'compute_shape': :'String',
        'service_endpoint': :'String',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String',
        'storage_size_in_tbs': :'Float',
        'storage_used_in_tbs': :'Float',
        'is_multi_ad': :'BOOLEAN',
        'total_ocpu_capacity': :'Integer',
        'component_details': :'OCI::Blockchain::Models::BlockchainPlatformComponentDetails',
        'replicas': :'OCI::Blockchain::Models::ReplicaDetails',
        'host_ocpu_utilization_info': :'Array<OCI::Blockchain::Models::OcpuUtilizationInfo>',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [BOOLEAN] :is_byol The value to assign to the {#is_byol} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :service_version The value to assign to the {#service_version} property
    # @option attributes [String] :platform_role The value to assign to the {#platform_role} property
    # @option attributes [String] :compute_shape The value to assign to the {#compute_shape} property
    # @option attributes [String] :service_endpoint The value to assign to the {#service_endpoint} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [Float] :storage_size_in_tbs The value to assign to the {#storage_size_in_tbs} property
    # @option attributes [Float] :storage_used_in_tbs The value to assign to the {#storage_used_in_tbs} property
    # @option attributes [BOOLEAN] :is_multi_ad The value to assign to the {#is_multi_ad} property
    # @option attributes [Integer] :total_ocpu_capacity The value to assign to the {#total_ocpu_capacity} property
    # @option attributes [OCI::Blockchain::Models::BlockchainPlatformComponentDetails] :component_details The value to assign to the {#component_details} property
    # @option attributes [OCI::Blockchain::Models::ReplicaDetails] :replicas The value to assign to the {#replicas} property
    # @option attributes [Array<OCI::Blockchain::Models::OcpuUtilizationInfo>] :host_ocpu_utilization_info The value to assign to the {#host_ocpu_utilization_info} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.description = attributes[:'description'] if attributes[:'description']

      self.is_byol = attributes[:'isByol'] unless attributes[:'isByol'].nil?

      raise 'You cannot provide both :isByol and :is_byol' if attributes.key?(:'isByol') && attributes.key?(:'is_byol')

      self.is_byol = attributes[:'is_byol'] unless attributes[:'is_byol'].nil?

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.service_version = attributes[:'serviceVersion'] if attributes[:'serviceVersion']

      raise 'You cannot provide both :serviceVersion and :service_version' if attributes.key?(:'serviceVersion') && attributes.key?(:'service_version')

      self.service_version = attributes[:'service_version'] if attributes[:'service_version']

      self.platform_role = attributes[:'platformRole'] if attributes[:'platformRole']

      raise 'You cannot provide both :platformRole and :platform_role' if attributes.key?(:'platformRole') && attributes.key?(:'platform_role')

      self.platform_role = attributes[:'platform_role'] if attributes[:'platform_role']

      self.compute_shape = attributes[:'computeShape'] if attributes[:'computeShape']

      raise 'You cannot provide both :computeShape and :compute_shape' if attributes.key?(:'computeShape') && attributes.key?(:'compute_shape')

      self.compute_shape = attributes[:'compute_shape'] if attributes[:'compute_shape']

      self.service_endpoint = attributes[:'serviceEndpoint'] if attributes[:'serviceEndpoint']

      raise 'You cannot provide both :serviceEndpoint and :service_endpoint' if attributes.key?(:'serviceEndpoint') && attributes.key?(:'service_endpoint')

      self.service_endpoint = attributes[:'service_endpoint'] if attributes[:'service_endpoint']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.storage_size_in_tbs = attributes[:'storageSizeInTBs'] if attributes[:'storageSizeInTBs']

      raise 'You cannot provide both :storageSizeInTBs and :storage_size_in_tbs' if attributes.key?(:'storageSizeInTBs') && attributes.key?(:'storage_size_in_tbs')

      self.storage_size_in_tbs = attributes[:'storage_size_in_tbs'] if attributes[:'storage_size_in_tbs']

      self.storage_used_in_tbs = attributes[:'storageUsedInTBs'] if attributes[:'storageUsedInTBs']

      raise 'You cannot provide both :storageUsedInTBs and :storage_used_in_tbs' if attributes.key?(:'storageUsedInTBs') && attributes.key?(:'storage_used_in_tbs')

      self.storage_used_in_tbs = attributes[:'storage_used_in_tbs'] if attributes[:'storage_used_in_tbs']

      self.is_multi_ad = attributes[:'isMultiAD'] unless attributes[:'isMultiAD'].nil?

      raise 'You cannot provide both :isMultiAD and :is_multi_ad' if attributes.key?(:'isMultiAD') && attributes.key?(:'is_multi_ad')

      self.is_multi_ad = attributes[:'is_multi_ad'] unless attributes[:'is_multi_ad'].nil?

      self.total_ocpu_capacity = attributes[:'totalOcpuCapacity'] if attributes[:'totalOcpuCapacity']

      raise 'You cannot provide both :totalOcpuCapacity and :total_ocpu_capacity' if attributes.key?(:'totalOcpuCapacity') && attributes.key?(:'total_ocpu_capacity')

      self.total_ocpu_capacity = attributes[:'total_ocpu_capacity'] if attributes[:'total_ocpu_capacity']

      self.component_details = attributes[:'componentDetails'] if attributes[:'componentDetails']

      raise 'You cannot provide both :componentDetails and :component_details' if attributes.key?(:'componentDetails') && attributes.key?(:'component_details')

      self.component_details = attributes[:'component_details'] if attributes[:'component_details']

      self.replicas = attributes[:'replicas'] if attributes[:'replicas']

      self.host_ocpu_utilization_info = attributes[:'hostOcpuUtilizationInfo'] if attributes[:'hostOcpuUtilizationInfo']

      raise 'You cannot provide both :hostOcpuUtilizationInfo and :host_ocpu_utilization_info' if attributes.key?(:'hostOcpuUtilizationInfo') && attributes.key?(:'host_ocpu_utilization_info')

      self.host_ocpu_utilization_info = attributes[:'host_ocpu_utilization_info'] if attributes[:'host_ocpu_utilization_info']

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
    # @param [Object] platform_role Object to be assigned
    def platform_role=(platform_role)
      # rubocop:disable Style/ConditionalAssignment
      if platform_role && !PLATFORM_ROLE_ENUM.include?(platform_role)
        OCI.logger.debug("Unknown value for 'platform_role' [" + platform_role + "]. Mapping to 'PLATFORM_ROLE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @platform_role = PLATFORM_ROLE_UNKNOWN_ENUM_VALUE
      else
        @platform_role = platform_role
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compute_shape Object to be assigned
    def compute_shape=(compute_shape)
      # rubocop:disable Style/ConditionalAssignment
      if compute_shape && !COMPUTE_SHAPE_ENUM.include?(compute_shape)
        OCI.logger.debug("Unknown value for 'compute_shape' [" + compute_shape + "]. Mapping to 'COMPUTE_SHAPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @compute_shape = COMPUTE_SHAPE_UNKNOWN_ENUM_VALUE
      else
        @compute_shape = compute_shape
      end
      # rubocop:enable Style/ConditionalAssignment
    end

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
        display_name == other.display_name &&
        compartment_id == other.compartment_id &&
        description == other.description &&
        is_byol == other.is_byol &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        service_version == other.service_version &&
        platform_role == other.platform_role &&
        compute_shape == other.compute_shape &&
        service_endpoint == other.service_endpoint &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details &&
        storage_size_in_tbs == other.storage_size_in_tbs &&
        storage_used_in_tbs == other.storage_used_in_tbs &&
        is_multi_ad == other.is_multi_ad &&
        total_ocpu_capacity == other.total_ocpu_capacity &&
        component_details == other.component_details &&
        replicas == other.replicas &&
        host_ocpu_utilization_info == other.host_ocpu_utilization_info &&
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
      [id, display_name, compartment_id, description, is_byol, time_created, time_updated, service_version, platform_role, compute_shape, service_endpoint, lifecycle_state, lifecycle_details, storage_size_in_tbs, storage_used_in_tbs, is_multi_ad, total_ocpu_capacity, component_details, replicas, host_ocpu_utilization_info, freeform_tags, defined_tags].hash
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
