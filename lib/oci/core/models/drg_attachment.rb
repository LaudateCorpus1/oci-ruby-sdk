# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A DRG attachment serves as a link between a DRG and a network resource. A DRG can be attached to a VCN,
  # IPSec tunnel, remote peering connection, or virtual circuit.
  #
  # For more information, see [Overview of the Networking Service](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/overview.htm).
  #
  class Core::Models::DrgAttachment
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_ATTACHING = 'ATTACHING'.freeze,
      LIFECYCLE_STATE_ATTACHED = 'ATTACHED'.freeze,
      LIFECYCLE_STATE_DETACHING = 'DETACHING'.freeze,
      LIFECYCLE_STATE_DETACHED = 'DETACHED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment containing the DRG attachment.
    # @return [String]
    attr_accessor :compartment_id

    # A user-friendly name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the DRG.
    # @return [String]
    attr_accessor :drg_id

    # **[Required]** The DRG attachment's Oracle ID ([OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm)).
    # @return [String]
    attr_accessor :id

    # **[Required]** The DRG attachment's current state.
    # @return [String]
    attr_reader :lifecycle_state

    # The date and time the DRG attachment was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG route table that is assigned to this attachment.
    #
    # The DRG route table manages traffic inside the DRG.
    #
    # @return [String]
    attr_accessor :drg_route_table_id

    # @return [OCI::Core::Models::DrgAttachmentNetworkDetails]
    attr_accessor :network_details

    # Defined tags for this resource. Each key is predefined and scoped to a
    # namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Free-form tags for this resource. Each tag is a simple key-value pair with no
    # predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the DRG attachment is using.
    #
    # For information about why you would associate a route table with a DRG attachment, see:
    #
    #   * [Transit Routing: Access to Multiple VCNs in Same Region](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/transitrouting.htm)
    #   * [Transit Routing: Private Access to Oracle Services](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/transitroutingoracleservices.htm)
    #
    # This field is deprecated. Instead, use the `networkDetails` field to view the [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the attached resource.
    #
    # @return [String]
    attr_accessor :route_table_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the VCN.
    # This field is deprecated. Instead, use the `networkDetails` field to view the [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the attached resource.
    #
    # @return [String]
    attr_accessor :vcn_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the export route distribution used to specify how routes in the assigned DRG route table
    # are advertised to the attachment.
    # If this value is null, no routes are advertised through this attachment.
    #
    # @return [String]
    attr_accessor :export_drg_route_distribution_id

    # Indicates whether the DRG attachment and attached network live in a different tenancy than the DRG.
    #
    # Example: `false`
    #
    # @return [BOOLEAN]
    attr_accessor :is_cross_tenancy

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'drg_id': :'drgId',
        'id': :'id',
        'lifecycle_state': :'lifecycleState',
        'time_created': :'timeCreated',
        'drg_route_table_id': :'drgRouteTableId',
        'network_details': :'networkDetails',
        'defined_tags': :'definedTags',
        'freeform_tags': :'freeformTags',
        'route_table_id': :'routeTableId',
        'vcn_id': :'vcnId',
        'export_drg_route_distribution_id': :'exportDrgRouteDistributionId',
        'is_cross_tenancy': :'isCrossTenancy'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'display_name': :'String',
        'drg_id': :'String',
        'id': :'String',
        'lifecycle_state': :'String',
        'time_created': :'DateTime',
        'drg_route_table_id': :'String',
        'network_details': :'OCI::Core::Models::DrgAttachmentNetworkDetails',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'freeform_tags': :'Hash<String, String>',
        'route_table_id': :'String',
        'vcn_id': :'String',
        'export_drg_route_distribution_id': :'String',
        'is_cross_tenancy': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :drg_id The value to assign to the {#drg_id} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :drg_route_table_id The value to assign to the {#drg_route_table_id} property
    # @option attributes [OCI::Core::Models::DrgAttachmentNetworkDetails] :network_details The value to assign to the {#network_details} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [String] :route_table_id The value to assign to the {#route_table_id} property
    # @option attributes [String] :vcn_id The value to assign to the {#vcn_id} property
    # @option attributes [String] :export_drg_route_distribution_id The value to assign to the {#export_drg_route_distribution_id} property
    # @option attributes [BOOLEAN] :is_cross_tenancy The value to assign to the {#is_cross_tenancy} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.drg_id = attributes[:'drgId'] if attributes[:'drgId']

      raise 'You cannot provide both :drgId and :drg_id' if attributes.key?(:'drgId') && attributes.key?(:'drg_id')

      self.drg_id = attributes[:'drg_id'] if attributes[:'drg_id']

      self.id = attributes[:'id'] if attributes[:'id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.drg_route_table_id = attributes[:'drgRouteTableId'] if attributes[:'drgRouteTableId']

      raise 'You cannot provide both :drgRouteTableId and :drg_route_table_id' if attributes.key?(:'drgRouteTableId') && attributes.key?(:'drg_route_table_id')

      self.drg_route_table_id = attributes[:'drg_route_table_id'] if attributes[:'drg_route_table_id']

      self.network_details = attributes[:'networkDetails'] if attributes[:'networkDetails']

      raise 'You cannot provide both :networkDetails and :network_details' if attributes.key?(:'networkDetails') && attributes.key?(:'network_details')

      self.network_details = attributes[:'network_details'] if attributes[:'network_details']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.route_table_id = attributes[:'routeTableId'] if attributes[:'routeTableId']

      raise 'You cannot provide both :routeTableId and :route_table_id' if attributes.key?(:'routeTableId') && attributes.key?(:'route_table_id')

      self.route_table_id = attributes[:'route_table_id'] if attributes[:'route_table_id']

      self.vcn_id = attributes[:'vcnId'] if attributes[:'vcnId']

      raise 'You cannot provide both :vcnId and :vcn_id' if attributes.key?(:'vcnId') && attributes.key?(:'vcn_id')

      self.vcn_id = attributes[:'vcn_id'] if attributes[:'vcn_id']

      self.export_drg_route_distribution_id = attributes[:'exportDrgRouteDistributionId'] if attributes[:'exportDrgRouteDistributionId']

      raise 'You cannot provide both :exportDrgRouteDistributionId and :export_drg_route_distribution_id' if attributes.key?(:'exportDrgRouteDistributionId') && attributes.key?(:'export_drg_route_distribution_id')

      self.export_drg_route_distribution_id = attributes[:'export_drg_route_distribution_id'] if attributes[:'export_drg_route_distribution_id']

      self.is_cross_tenancy = attributes[:'isCrossTenancy'] unless attributes[:'isCrossTenancy'].nil?

      raise 'You cannot provide both :isCrossTenancy and :is_cross_tenancy' if attributes.key?(:'isCrossTenancy') && attributes.key?(:'is_cross_tenancy')

      self.is_cross_tenancy = attributes[:'is_cross_tenancy'] unless attributes[:'is_cross_tenancy'].nil?
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
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        drg_id == other.drg_id &&
        id == other.id &&
        lifecycle_state == other.lifecycle_state &&
        time_created == other.time_created &&
        drg_route_table_id == other.drg_route_table_id &&
        network_details == other.network_details &&
        defined_tags == other.defined_tags &&
        freeform_tags == other.freeform_tags &&
        route_table_id == other.route_table_id &&
        vcn_id == other.vcn_id &&
        export_drg_route_distribution_id == other.export_drg_route_distribution_id &&
        is_cross_tenancy == other.is_cross_tenancy
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
      [compartment_id, display_name, drg_id, id, lifecycle_state, time_created, drg_route_table_id, network_details, defined_tags, freeform_tags, route_table_id, vcn_id, export_drg_route_distribution_id, is_cross_tenancy].hash
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
