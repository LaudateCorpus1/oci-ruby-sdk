# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # UpdateVnicDetails model.
  class Core::Models::UpdateVnicDetails
    # Defined tags for this resource. Each key is predefined and scoped to a
    # namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # A user-friendly name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Free-form tags for this resource. Each tag is a simple key-value pair with no
    # predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # The hostname for the VNIC's primary private IP. Used for DNS. The value is the hostname
    # portion of the primary private IP's fully qualified domain name (FQDN)
    # (for example, `bminstance-1` in FQDN `bminstance-1.subnet123.vcn1.oraclevcn.com`).
    # Must be unique across all VNICs in the subnet and comply with
    # [RFC 952](https://tools.ietf.org/html/rfc952) and
    # [RFC 1123](https://tools.ietf.org/html/rfc1123).
    # The value appears in the {Vnic} object and also the
    # {PrivateIp} object returned by
    # {#list_private_ips list_private_ips} and
    # {#get_private_ip get_private_ip}.
    #
    # For more information, see
    # [DNS in Your Virtual Cloud Network](https://docs.cloud.oracle.com/Content/Network/Concepts/dns.htm).
    #
    # @return [String]
    attr_accessor :hostname_label

    # A list of the OCIDs of the network security groups (NSGs) to add the VNIC to. Setting this as
    # an empty array removes the VNIC from all network security groups.
    #
    # If the VNIC belongs to a VLAN as part of the Oracle Cloud VMware Solution (instead of
    # belonging to a subnet), the value of the `nsgIds` attribute is ignored. Instead, the
    # VNIC belongs to the NSGs that are associated with the VLAN itself. See {Vlan}.
    #
    # For more information about NSGs, see
    # {NetworkSecurityGroup}.
    #
    # @return [Array<String>]
    attr_accessor :nsg_ids

    # Whether the source/destination check is disabled on the VNIC.
    # Defaults to `false`, which means the check is performed. For information about why you would
    # skip the source/destination check, see
    # [Using a Private IP as a Route Target](https://docs.cloud.oracle.com/Content/Network/Tasks/managingroutetables.htm#privateip).
    #
    # If the VNIC belongs to a VLAN as part of the Oracle Cloud VMware Solution (instead of
    # belonging to a subnet), the value of the `skipSourceDestCheck` attribute is ignored.
    # This is because the source/destination check is always disabled for VNICs in a VLAN.
    # Example: `true`
    #
    # @return [BOOLEAN]
    attr_accessor :skip_source_dest_check

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'defined_tags': :'definedTags',
        'display_name': :'displayName',
        'freeform_tags': :'freeformTags',
        'hostname_label': :'hostnameLabel',
        'nsg_ids': :'nsgIds',
        'skip_source_dest_check': :'skipSourceDestCheck'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'display_name': :'String',
        'freeform_tags': :'Hash<String, String>',
        'hostname_label': :'String',
        'nsg_ids': :'Array<String>',
        'skip_source_dest_check': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [String] :hostname_label The value to assign to the {#hostname_label} property
    # @option attributes [Array<String>] :nsg_ids The value to assign to the {#nsg_ids} property
    # @option attributes [BOOLEAN] :skip_source_dest_check The value to assign to the {#skip_source_dest_check} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.hostname_label = attributes[:'hostnameLabel'] if attributes[:'hostnameLabel']

      raise 'You cannot provide both :hostnameLabel and :hostname_label' if attributes.key?(:'hostnameLabel') && attributes.key?(:'hostname_label')

      self.hostname_label = attributes[:'hostname_label'] if attributes[:'hostname_label']

      self.nsg_ids = attributes[:'nsgIds'] if attributes[:'nsgIds']

      raise 'You cannot provide both :nsgIds and :nsg_ids' if attributes.key?(:'nsgIds') && attributes.key?(:'nsg_ids')

      self.nsg_ids = attributes[:'nsg_ids'] if attributes[:'nsg_ids']

      self.skip_source_dest_check = attributes[:'skipSourceDestCheck'] unless attributes[:'skipSourceDestCheck'].nil?

      raise 'You cannot provide both :skipSourceDestCheck and :skip_source_dest_check' if attributes.key?(:'skipSourceDestCheck') && attributes.key?(:'skip_source_dest_check')

      self.skip_source_dest_check = attributes[:'skip_source_dest_check'] unless attributes[:'skip_source_dest_check'].nil?
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        defined_tags == other.defined_tags &&
        display_name == other.display_name &&
        freeform_tags == other.freeform_tags &&
        hostname_label == other.hostname_label &&
        nsg_ids == other.nsg_ids &&
        skip_source_dest_check == other.skip_source_dest_check
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
      [defined_tags, display_name, freeform_tags, hostname_label, nsg_ids, skip_source_dest_check].hash
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
