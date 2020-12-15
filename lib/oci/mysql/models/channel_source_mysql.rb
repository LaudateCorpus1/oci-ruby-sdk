# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'
require_relative 'channel_source'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Core properties of a Mysql Channel source.
  class Mysql::Models::ChannelSourceMysql < Mysql::Models::ChannelSource
    SSL_MODE_ENUM = [
      SSL_MODE_VERIFY_IDENTITY = 'VERIFY_IDENTITY'.freeze,
      SSL_MODE_VERIFY_CA = 'VERIFY_CA'.freeze,
      SSL_MODE_REQUIRED = 'REQUIRED'.freeze,
      SSL_MODE_DISABLED = 'DISABLED'.freeze,
      SSL_MODE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The network address of the MySQL instance.
    # @return [String]
    attr_accessor :hostname

    # **[Required]** The port the source MySQL instance listens on.
    # @return [Integer]
    attr_accessor :port

    # **[Required]** The name of the replication user on the source MySQL instance.
    # The username has a maximum length of 96 characters. For more information,
    # please see the [MySQL documentation](https://dev.mysql.com/doc/refman/8.0/en/change-master-to.html)
    #
    # @return [String]
    attr_accessor :username

    # **[Required]** The SSL mode of the Channel.
    # @return [String]
    attr_reader :ssl_mode

    # @return [OCI::Mysql::Models::CaCertificate]
    attr_accessor :ssl_ca_certificate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'source_type': :'sourceType',
        'hostname': :'hostname',
        'port': :'port',
        'username': :'username',
        'ssl_mode': :'sslMode',
        'ssl_ca_certificate': :'sslCaCertificate'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'source_type': :'String',
        'hostname': :'String',
        'port': :'Integer',
        'username': :'String',
        'ssl_mode': :'String',
        'ssl_ca_certificate': :'OCI::Mysql::Models::CaCertificate'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :hostname The value to assign to the {#hostname} property
    # @option attributes [Integer] :port The value to assign to the {#port} property
    # @option attributes [String] :username The value to assign to the {#username} property
    # @option attributes [String] :ssl_mode The value to assign to the {#ssl_mode} property
    # @option attributes [OCI::Mysql::Models::CaCertificate] :ssl_ca_certificate The value to assign to the {#ssl_ca_certificate} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['sourceType'] = 'MYSQL'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.hostname = attributes[:'hostname'] if attributes[:'hostname']

      self.port = attributes[:'port'] if attributes[:'port']

      self.username = attributes[:'username'] if attributes[:'username']

      self.ssl_mode = attributes[:'sslMode'] if attributes[:'sslMode']

      raise 'You cannot provide both :sslMode and :ssl_mode' if attributes.key?(:'sslMode') && attributes.key?(:'ssl_mode')

      self.ssl_mode = attributes[:'ssl_mode'] if attributes[:'ssl_mode']

      self.ssl_ca_certificate = attributes[:'sslCaCertificate'] if attributes[:'sslCaCertificate']

      raise 'You cannot provide both :sslCaCertificate and :ssl_ca_certificate' if attributes.key?(:'sslCaCertificate') && attributes.key?(:'ssl_ca_certificate')

      self.ssl_ca_certificate = attributes[:'ssl_ca_certificate'] if attributes[:'ssl_ca_certificate']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ssl_mode Object to be assigned
    def ssl_mode=(ssl_mode)
      # rubocop:disable Style/ConditionalAssignment
      if ssl_mode && !SSL_MODE_ENUM.include?(ssl_mode)
        OCI.logger.debug("Unknown value for 'ssl_mode' [" + ssl_mode + "]. Mapping to 'SSL_MODE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @ssl_mode = SSL_MODE_UNKNOWN_ENUM_VALUE
      else
        @ssl_mode = ssl_mode
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        source_type == other.source_type &&
        hostname == other.hostname &&
        port == other.port &&
        username == other.username &&
        ssl_mode == other.ssl_mode &&
        ssl_ca_certificate == other.ssl_ca_certificate
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
      [source_type, hostname, port, username, ssl_mode, ssl_ca_certificate].hash
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