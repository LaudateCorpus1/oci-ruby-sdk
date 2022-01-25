# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The configuration of the listener.
  # For more information about backend set configuration, see
  # [Managing Network Load Balancer Listeners](https://docs.cloud.oracle.com/Content/Balance/Tasks/managinglisteners.htm).
  #
  class NetworkLoadBalancer::Models::UpdateListenerDetails
    PROTOCOL_ENUM = [
      PROTOCOL_ANY = 'ANY'.freeze,
      PROTOCOL_TCP = 'TCP'.freeze,
      PROTOCOL_UDP = 'UDP'.freeze,
      PROTOCOL_TCP_AND_UDP = 'TCP_AND_UDP'.freeze
    ].freeze

    IP_VERSION_ENUM = [
      IP_VERSION_IPV4 = 'IPV4'.freeze,
      IP_VERSION_IPV6 = 'IPV6'.freeze
    ].freeze

    # The name of the associated backend set.
    #
    # Example: `example_backend_set`
    #
    # @return [String]
    attr_accessor :default_backend_set_name

    # The communication port for the listener.
    #
    # Example: `80`
    #
    # @return [Integer]
    attr_accessor :port

    # The protocol on which the listener accepts connection requests.
    # For public network load balancers, ANY protocol refers to TCP/UDP.
    # For private network load balancers, ANY protocol refers to TCP/UDP/ICMP (note that ICMP requires isPreserveSourceDestination to be set to true).
    # To get a list of valid protocols, use the {#list_network_load_balancers_protocols list_network_load_balancers_protocols}
    # operation.
    #
    # Example: `TCP`
    #
    # @return [String]
    attr_reader :protocol

    # IP version associated with the listener.
    # @return [String]
    attr_reader :ip_version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'default_backend_set_name': :'defaultBackendSetName',
        'port': :'port',
        'protocol': :'protocol',
        'ip_version': :'ipVersion'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'default_backend_set_name': :'String',
        'port': :'Integer',
        'protocol': :'String',
        'ip_version': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :default_backend_set_name The value to assign to the {#default_backend_set_name} property
    # @option attributes [Integer] :port The value to assign to the {#port} property
    # @option attributes [String] :protocol The value to assign to the {#protocol} property
    # @option attributes [String] :ip_version The value to assign to the {#ip_version} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.default_backend_set_name = attributes[:'defaultBackendSetName'] if attributes[:'defaultBackendSetName']

      raise 'You cannot provide both :defaultBackendSetName and :default_backend_set_name' if attributes.key?(:'defaultBackendSetName') && attributes.key?(:'default_backend_set_name')

      self.default_backend_set_name = attributes[:'default_backend_set_name'] if attributes[:'default_backend_set_name']

      self.port = attributes[:'port'] if attributes[:'port']

      self.protocol = attributes[:'protocol'] if attributes[:'protocol']

      self.ip_version = attributes[:'ipVersion'] if attributes[:'ipVersion']
      self.ip_version = "IPV4" if ip_version.nil? && !attributes.key?(:'ipVersion') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :ipVersion and :ip_version' if attributes.key?(:'ipVersion') && attributes.key?(:'ip_version')

      self.ip_version = attributes[:'ip_version'] if attributes[:'ip_version']
      self.ip_version = "IPV4" if ip_version.nil? && !attributes.key?(:'ipVersion') && !attributes.key?(:'ip_version') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protocol Object to be assigned
    def protocol=(protocol)
      raise "Invalid value for 'protocol': this must be one of the values in PROTOCOL_ENUM." if protocol && !PROTOCOL_ENUM.include?(protocol)

      @protocol = protocol
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_version Object to be assigned
    def ip_version=(ip_version)
      raise "Invalid value for 'ip_version': this must be one of the values in IP_VERSION_ENUM." if ip_version && !IP_VERSION_ENUM.include?(ip_version)

      @ip_version = ip_version
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        default_backend_set_name == other.default_backend_set_name &&
        port == other.port &&
        protocol == other.protocol &&
        ip_version == other.ip_version
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
      [default_backend_set_name, port, protocol, ip_version].hash
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
