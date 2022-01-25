# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Specific info about a Hadoop cluster
  class Bds::Models::ClusterDetails
    # BDA version installed in the cluster
    # @return [String]
    attr_accessor :bda_version

    # Big Data Manager version installed in the cluster.
    # @return [String]
    attr_accessor :bdm_version

    # Big Data Service version installed in the cluster.
    # @return [String]
    attr_accessor :bds_version

    # Oracle Linux version installed in the cluster.
    # @return [String]
    attr_accessor :os_version

    # Cloud SQL query server database version.
    # @return [String]
    attr_accessor :db_version

    # Cloud SQL cell version.
    # @return [String]
    attr_accessor :bd_cell_version

    # Big Data SQL version.
    # @return [String]
    attr_accessor :csql_cell_version

    # **[Required]** The time the cluster was created, shown as an RFC 3339 formatted datetime string.
    # @return [DateTime]
    attr_accessor :time_created

    # The time the cluster was automatically or manually refreshed, shown as an RFC 3339 formatted datetime string.
    #
    # @return [DateTime]
    attr_accessor :time_refreshed

    # The URL of Cloudera Manager
    # @return [String]
    attr_accessor :cloudera_manager_url

    # The URL of Ambari
    # @return [String]
    attr_accessor :ambari_url

    # The URL of Big Data Manager.
    # @return [String]
    attr_accessor :big_data_manager_url

    # The URL of the Hue server.
    # @return [String]
    attr_accessor :hue_server_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'bda_version': :'bdaVersion',
        'bdm_version': :'bdmVersion',
        'bds_version': :'bdsVersion',
        'os_version': :'osVersion',
        'db_version': :'dbVersion',
        'bd_cell_version': :'bdCellVersion',
        'csql_cell_version': :'csqlCellVersion',
        'time_created': :'timeCreated',
        'time_refreshed': :'timeRefreshed',
        'cloudera_manager_url': :'clouderaManagerUrl',
        'ambari_url': :'ambariUrl',
        'big_data_manager_url': :'bigDataManagerUrl',
        'hue_server_url': :'hueServerUrl'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'bda_version': :'String',
        'bdm_version': :'String',
        'bds_version': :'String',
        'os_version': :'String',
        'db_version': :'String',
        'bd_cell_version': :'String',
        'csql_cell_version': :'String',
        'time_created': :'DateTime',
        'time_refreshed': :'DateTime',
        'cloudera_manager_url': :'String',
        'ambari_url': :'String',
        'big_data_manager_url': :'String',
        'hue_server_url': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :bda_version The value to assign to the {#bda_version} property
    # @option attributes [String] :bdm_version The value to assign to the {#bdm_version} property
    # @option attributes [String] :bds_version The value to assign to the {#bds_version} property
    # @option attributes [String] :os_version The value to assign to the {#os_version} property
    # @option attributes [String] :db_version The value to assign to the {#db_version} property
    # @option attributes [String] :bd_cell_version The value to assign to the {#bd_cell_version} property
    # @option attributes [String] :csql_cell_version The value to assign to the {#csql_cell_version} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_refreshed The value to assign to the {#time_refreshed} property
    # @option attributes [String] :cloudera_manager_url The value to assign to the {#cloudera_manager_url} property
    # @option attributes [String] :ambari_url The value to assign to the {#ambari_url} property
    # @option attributes [String] :big_data_manager_url The value to assign to the {#big_data_manager_url} property
    # @option attributes [String] :hue_server_url The value to assign to the {#hue_server_url} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.bda_version = attributes[:'bdaVersion'] if attributes[:'bdaVersion']

      raise 'You cannot provide both :bdaVersion and :bda_version' if attributes.key?(:'bdaVersion') && attributes.key?(:'bda_version')

      self.bda_version = attributes[:'bda_version'] if attributes[:'bda_version']

      self.bdm_version = attributes[:'bdmVersion'] if attributes[:'bdmVersion']

      raise 'You cannot provide both :bdmVersion and :bdm_version' if attributes.key?(:'bdmVersion') && attributes.key?(:'bdm_version')

      self.bdm_version = attributes[:'bdm_version'] if attributes[:'bdm_version']

      self.bds_version = attributes[:'bdsVersion'] if attributes[:'bdsVersion']

      raise 'You cannot provide both :bdsVersion and :bds_version' if attributes.key?(:'bdsVersion') && attributes.key?(:'bds_version')

      self.bds_version = attributes[:'bds_version'] if attributes[:'bds_version']

      self.os_version = attributes[:'osVersion'] if attributes[:'osVersion']

      raise 'You cannot provide both :osVersion and :os_version' if attributes.key?(:'osVersion') && attributes.key?(:'os_version')

      self.os_version = attributes[:'os_version'] if attributes[:'os_version']

      self.db_version = attributes[:'dbVersion'] if attributes[:'dbVersion']

      raise 'You cannot provide both :dbVersion and :db_version' if attributes.key?(:'dbVersion') && attributes.key?(:'db_version')

      self.db_version = attributes[:'db_version'] if attributes[:'db_version']

      self.bd_cell_version = attributes[:'bdCellVersion'] if attributes[:'bdCellVersion']

      raise 'You cannot provide both :bdCellVersion and :bd_cell_version' if attributes.key?(:'bdCellVersion') && attributes.key?(:'bd_cell_version')

      self.bd_cell_version = attributes[:'bd_cell_version'] if attributes[:'bd_cell_version']

      self.csql_cell_version = attributes[:'csqlCellVersion'] if attributes[:'csqlCellVersion']

      raise 'You cannot provide both :csqlCellVersion and :csql_cell_version' if attributes.key?(:'csqlCellVersion') && attributes.key?(:'csql_cell_version')

      self.csql_cell_version = attributes[:'csql_cell_version'] if attributes[:'csql_cell_version']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_refreshed = attributes[:'timeRefreshed'] if attributes[:'timeRefreshed']

      raise 'You cannot provide both :timeRefreshed and :time_refreshed' if attributes.key?(:'timeRefreshed') && attributes.key?(:'time_refreshed')

      self.time_refreshed = attributes[:'time_refreshed'] if attributes[:'time_refreshed']

      self.cloudera_manager_url = attributes[:'clouderaManagerUrl'] if attributes[:'clouderaManagerUrl']

      raise 'You cannot provide both :clouderaManagerUrl and :cloudera_manager_url' if attributes.key?(:'clouderaManagerUrl') && attributes.key?(:'cloudera_manager_url')

      self.cloudera_manager_url = attributes[:'cloudera_manager_url'] if attributes[:'cloudera_manager_url']

      self.ambari_url = attributes[:'ambariUrl'] if attributes[:'ambariUrl']

      raise 'You cannot provide both :ambariUrl and :ambari_url' if attributes.key?(:'ambariUrl') && attributes.key?(:'ambari_url')

      self.ambari_url = attributes[:'ambari_url'] if attributes[:'ambari_url']

      self.big_data_manager_url = attributes[:'bigDataManagerUrl'] if attributes[:'bigDataManagerUrl']

      raise 'You cannot provide both :bigDataManagerUrl and :big_data_manager_url' if attributes.key?(:'bigDataManagerUrl') && attributes.key?(:'big_data_manager_url')

      self.big_data_manager_url = attributes[:'big_data_manager_url'] if attributes[:'big_data_manager_url']

      self.hue_server_url = attributes[:'hueServerUrl'] if attributes[:'hueServerUrl']

      raise 'You cannot provide both :hueServerUrl and :hue_server_url' if attributes.key?(:'hueServerUrl') && attributes.key?(:'hue_server_url')

      self.hue_server_url = attributes[:'hue_server_url'] if attributes[:'hue_server_url']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        bda_version == other.bda_version &&
        bdm_version == other.bdm_version &&
        bds_version == other.bds_version &&
        os_version == other.os_version &&
        db_version == other.db_version &&
        bd_cell_version == other.bd_cell_version &&
        csql_cell_version == other.csql_cell_version &&
        time_created == other.time_created &&
        time_refreshed == other.time_refreshed &&
        cloudera_manager_url == other.cloudera_manager_url &&
        ambari_url == other.ambari_url &&
        big_data_manager_url == other.big_data_manager_url &&
        hue_server_url == other.hue_server_url
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
      [bda_version, bdm_version, bds_version, os_version, db_version, bd_cell_version, csql_cell_version, time_created, time_refreshed, cloudera_manager_url, ambari_url, big_data_manager_url, hue_server_url].hash
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
