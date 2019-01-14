# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective
module OCI
  # CompleteExternalBackupJobDetails model.
  class Database::Models::CompleteExternalBackupJobDetails # rubocop:disable Metrics/LineLength
    # If the database being backed up is TDE enabled, this will be the path to the associated TDE wallet in Object Storage.
    # @return [String]
    attr_accessor :tde_wallet_path

    # The handle of the control file backup.
    # @return [String]
    attr_accessor :cf_backup_handle

    # The handle of the spfile backup.
    # @return [String]
    attr_accessor :spf_backup_handle

    # The list of SQL patches that need to be applied to the backup during the restore.
    # @return [Array<String>]
    attr_accessor :sql_patches

    # The size of the data in the database, in megabytes.
    # @return [Integer]
    attr_accessor :data_size

    # The size of the redo in the database, in megabytes.
    # @return [Integer]
    attr_accessor :redo_size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'tde_wallet_path': :'tdeWalletPath',
        'cf_backup_handle': :'cfBackupHandle',
        'spf_backup_handle': :'spfBackupHandle',
        'sql_patches': :'sqlPatches',
        'data_size': :'dataSize',
        'redo_size': :'redoSize'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'tde_wallet_path': :'String',
        'cf_backup_handle': :'String',
        'spf_backup_handle': :'String',
        'sql_patches': :'Array<String>',
        'data_size': :'Integer',
        'redo_size': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :tde_wallet_path The value to assign to the {#tde_wallet_path} property
    # @option attributes [String] :cf_backup_handle The value to assign to the {#cf_backup_handle} property
    # @option attributes [String] :spf_backup_handle The value to assign to the {#spf_backup_handle} property
    # @option attributes [Array<String>] :sql_patches The value to assign to the {#sql_patches} property
    # @option attributes [Integer] :data_size The value to assign to the {#data_size} property
    # @option attributes [Integer] :redo_size The value to assign to the {#redo_size} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.tde_wallet_path = attributes[:'tdeWalletPath'] if attributes[:'tdeWalletPath']

      raise 'You cannot provide both :tdeWalletPath and :tde_wallet_path' if attributes.key?(:'tdeWalletPath') && attributes.key?(:'tde_wallet_path')

      self.tde_wallet_path = attributes[:'tde_wallet_path'] if attributes[:'tde_wallet_path']

      self.cf_backup_handle = attributes[:'cfBackupHandle'] if attributes[:'cfBackupHandle']

      raise 'You cannot provide both :cfBackupHandle and :cf_backup_handle' if attributes.key?(:'cfBackupHandle') && attributes.key?(:'cf_backup_handle')

      self.cf_backup_handle = attributes[:'cf_backup_handle'] if attributes[:'cf_backup_handle']

      self.spf_backup_handle = attributes[:'spfBackupHandle'] if attributes[:'spfBackupHandle']

      raise 'You cannot provide both :spfBackupHandle and :spf_backup_handle' if attributes.key?(:'spfBackupHandle') && attributes.key?(:'spf_backup_handle')

      self.spf_backup_handle = attributes[:'spf_backup_handle'] if attributes[:'spf_backup_handle']

      self.sql_patches = attributes[:'sqlPatches'] if attributes[:'sqlPatches']

      raise 'You cannot provide both :sqlPatches and :sql_patches' if attributes.key?(:'sqlPatches') && attributes.key?(:'sql_patches')

      self.sql_patches = attributes[:'sql_patches'] if attributes[:'sql_patches']

      self.data_size = attributes[:'dataSize'] if attributes[:'dataSize']

      raise 'You cannot provide both :dataSize and :data_size' if attributes.key?(:'dataSize') && attributes.key?(:'data_size')

      self.data_size = attributes[:'data_size'] if attributes[:'data_size']

      self.redo_size = attributes[:'redoSize'] if attributes[:'redoSize']

      raise 'You cannot provide both :redoSize and :redo_size' if attributes.key?(:'redoSize') && attributes.key?(:'redo_size')

      self.redo_size = attributes[:'redo_size'] if attributes[:'redo_size']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        tde_wallet_path == other.tde_wallet_path &&
        cf_backup_handle == other.cf_backup_handle &&
        spf_backup_handle == other.spf_backup_handle &&
        sql_patches == other.sql_patches &&
        data_size == other.data_size &&
        redo_size == other.redo_size
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [tde_wallet_path, cf_backup_handle, spf_backup_handle, sql_patches, data_size, redo_size].hash
    end
    # rubocop:enable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines

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
# rubocop:enable Lint/UnneededCopDisableDirective
