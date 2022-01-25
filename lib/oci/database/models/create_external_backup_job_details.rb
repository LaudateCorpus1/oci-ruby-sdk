# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # CreateExternalBackupJobDetails model.
  class Database::Models::CreateExternalBackupJobDetails
    DATABASE_MODE_ENUM = [
      DATABASE_MODE_SI = 'SI'.freeze,
      DATABASE_MODE_RAC = 'RAC'.freeze
    ].freeze

    DATABASE_EDITION_ENUM = [
      DATABASE_EDITION_STANDARD_EDITION = 'STANDARD_EDITION'.freeze,
      DATABASE_EDITION_ENTERPRISE_EDITION = 'ENTERPRISE_EDITION'.freeze,
      DATABASE_EDITION_ENTERPRISE_EDITION_HIGH_PERFORMANCE = 'ENTERPRISE_EDITION_HIGH_PERFORMANCE'.freeze,
      DATABASE_EDITION_ENTERPRISE_EDITION_EXTREME_PERFORMANCE = 'ENTERPRISE_EDITION_EXTREME_PERFORMANCE'.freeze
    ].freeze

    # **[Required]** The targeted availability domain for the backup.
    # @return [String]
    attr_accessor :availability_domain

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment where this backup should be created.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** A user-friendly name for the backup. This name does not have to be unique.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** A valid Oracle Database version.
    # @return [String]
    attr_accessor :db_version

    # **[Required]** The name of the database from which the backup is being taken.
    # @return [String]
    attr_accessor :db_name

    # The `DB_UNIQUE_NAME` of the Oracle Database being backed up.
    # @return [String]
    attr_accessor :db_unique_name

    # The pluggable database name.
    # @return [String]
    attr_accessor :pdb_name

    # **[Required]** The `DBID` of the Oracle Database being backed up.
    # @return [Integer]
    attr_accessor :external_database_identifier

    # **[Required]** The character set for the database.
    # @return [String]
    attr_accessor :character_set

    # **[Required]** The national character set for the database.
    # @return [String]
    attr_accessor :ncharacter_set

    # **[Required]** The mode (single instance or RAC) of the database being backed up.
    # @return [String]
    attr_reader :database_mode

    # **[Required]** The Oracle Database edition to use for creating a database from this standalone backup.
    # Note that 2-node RAC DB systems require Enterprise Edition - Extreme Performance.
    #
    # @return [String]
    attr_reader :database_edition

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'availability_domain': :'availabilityDomain',
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'db_version': :'dbVersion',
        'db_name': :'dbName',
        'db_unique_name': :'dbUniqueName',
        'pdb_name': :'pdbName',
        'external_database_identifier': :'externalDatabaseIdentifier',
        'character_set': :'characterSet',
        'ncharacter_set': :'ncharacterSet',
        'database_mode': :'databaseMode',
        'database_edition': :'databaseEdition'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'availability_domain': :'String',
        'compartment_id': :'String',
        'display_name': :'String',
        'db_version': :'String',
        'db_name': :'String',
        'db_unique_name': :'String',
        'pdb_name': :'String',
        'external_database_identifier': :'Integer',
        'character_set': :'String',
        'ncharacter_set': :'String',
        'database_mode': :'String',
        'database_edition': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :db_version The value to assign to the {#db_version} property
    # @option attributes [String] :db_name The value to assign to the {#db_name} property
    # @option attributes [String] :db_unique_name The value to assign to the {#db_unique_name} property
    # @option attributes [String] :pdb_name The value to assign to the {#pdb_name} property
    # @option attributes [Integer] :external_database_identifier The value to assign to the {#external_database_identifier} property
    # @option attributes [String] :character_set The value to assign to the {#character_set} property
    # @option attributes [String] :ncharacter_set The value to assign to the {#ncharacter_set} property
    # @option attributes [String] :database_mode The value to assign to the {#database_mode} property
    # @option attributes [String] :database_edition The value to assign to the {#database_edition} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.db_version = attributes[:'dbVersion'] if attributes[:'dbVersion']

      raise 'You cannot provide both :dbVersion and :db_version' if attributes.key?(:'dbVersion') && attributes.key?(:'db_version')

      self.db_version = attributes[:'db_version'] if attributes[:'db_version']

      self.db_name = attributes[:'dbName'] if attributes[:'dbName']

      raise 'You cannot provide both :dbName and :db_name' if attributes.key?(:'dbName') && attributes.key?(:'db_name')

      self.db_name = attributes[:'db_name'] if attributes[:'db_name']

      self.db_unique_name = attributes[:'dbUniqueName'] if attributes[:'dbUniqueName']

      raise 'You cannot provide both :dbUniqueName and :db_unique_name' if attributes.key?(:'dbUniqueName') && attributes.key?(:'db_unique_name')

      self.db_unique_name = attributes[:'db_unique_name'] if attributes[:'db_unique_name']

      self.pdb_name = attributes[:'pdbName'] if attributes[:'pdbName']

      raise 'You cannot provide both :pdbName and :pdb_name' if attributes.key?(:'pdbName') && attributes.key?(:'pdb_name')

      self.pdb_name = attributes[:'pdb_name'] if attributes[:'pdb_name']

      self.external_database_identifier = attributes[:'externalDatabaseIdentifier'] if attributes[:'externalDatabaseIdentifier']

      raise 'You cannot provide both :externalDatabaseIdentifier and :external_database_identifier' if attributes.key?(:'externalDatabaseIdentifier') && attributes.key?(:'external_database_identifier')

      self.external_database_identifier = attributes[:'external_database_identifier'] if attributes[:'external_database_identifier']

      self.character_set = attributes[:'characterSet'] if attributes[:'characterSet']

      raise 'You cannot provide both :characterSet and :character_set' if attributes.key?(:'characterSet') && attributes.key?(:'character_set')

      self.character_set = attributes[:'character_set'] if attributes[:'character_set']

      self.ncharacter_set = attributes[:'ncharacterSet'] if attributes[:'ncharacterSet']

      raise 'You cannot provide both :ncharacterSet and :ncharacter_set' if attributes.key?(:'ncharacterSet') && attributes.key?(:'ncharacter_set')

      self.ncharacter_set = attributes[:'ncharacter_set'] if attributes[:'ncharacter_set']

      self.database_mode = attributes[:'databaseMode'] if attributes[:'databaseMode']

      raise 'You cannot provide both :databaseMode and :database_mode' if attributes.key?(:'databaseMode') && attributes.key?(:'database_mode')

      self.database_mode = attributes[:'database_mode'] if attributes[:'database_mode']

      self.database_edition = attributes[:'databaseEdition'] if attributes[:'databaseEdition']

      raise 'You cannot provide both :databaseEdition and :database_edition' if attributes.key?(:'databaseEdition') && attributes.key?(:'database_edition')

      self.database_edition = attributes[:'database_edition'] if attributes[:'database_edition']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] database_mode Object to be assigned
    def database_mode=(database_mode)
      raise "Invalid value for 'database_mode': this must be one of the values in DATABASE_MODE_ENUM." if database_mode && !DATABASE_MODE_ENUM.include?(database_mode)

      @database_mode = database_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] database_edition Object to be assigned
    def database_edition=(database_edition)
      raise "Invalid value for 'database_edition': this must be one of the values in DATABASE_EDITION_ENUM." if database_edition && !DATABASE_EDITION_ENUM.include?(database_edition)

      @database_edition = database_edition
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        availability_domain == other.availability_domain &&
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        db_version == other.db_version &&
        db_name == other.db_name &&
        db_unique_name == other.db_unique_name &&
        pdb_name == other.pdb_name &&
        external_database_identifier == other.external_database_identifier &&
        character_set == other.character_set &&
        ncharacter_set == other.ncharacter_set &&
        database_mode == other.database_mode &&
        database_edition == other.database_edition
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
      [availability_domain, compartment_id, display_name, db_version, db_name, db_unique_name, pdb_name, external_database_identifier, character_set, ncharacter_set, database_mode, database_edition].hash
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
