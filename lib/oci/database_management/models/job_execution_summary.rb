# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A summary of a job execution on a Managed Database.
  class DatabaseManagement::Models::JobExecutionSummary
    DATABASE_TYPE_ENUM = [
      DATABASE_TYPE_EXTERNAL_SIDB = 'EXTERNAL_SIDB'.freeze,
      DATABASE_TYPE_EXTERNAL_RAC = 'EXTERNAL_RAC'.freeze,
      DATABASE_TYPE_CLOUD_SIDB = 'CLOUD_SIDB'.freeze,
      DATABASE_TYPE_CLOUD_RAC = 'CLOUD_RAC'.freeze,
      DATABASE_TYPE_SHARED = 'SHARED'.freeze,
      DATABASE_TYPE_DEDICATED = 'DEDICATED'.freeze,
      DATABASE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    DATABASE_SUB_TYPE_ENUM = [
      DATABASE_SUB_TYPE_CDB = 'CDB'.freeze,
      DATABASE_SUB_TYPE_PDB = 'PDB'.freeze,
      DATABASE_SUB_TYPE_NON_CDB = 'NON_CDB'.freeze,
      DATABASE_SUB_TYPE_ACD = 'ACD'.freeze,
      DATABASE_SUB_TYPE_ADB = 'ADB'.freeze,
      DATABASE_SUB_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    DEPLOYMENT_TYPE_ENUM = [
      DEPLOYMENT_TYPE_ONPREMISE = 'ONPREMISE'.freeze,
      DEPLOYMENT_TYPE_BM = 'BM'.freeze,
      DEPLOYMENT_TYPE_VM = 'VM'.freeze,
      DEPLOYMENT_TYPE_EXADATA = 'EXADATA'.freeze,
      DEPLOYMENT_TYPE_EXADATA_CC = 'EXADATA_CC'.freeze,
      DEPLOYMENT_TYPE_AUTONOMOUS = 'AUTONOMOUS'.freeze,
      DEPLOYMENT_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    WORKLOAD_TYPE_ENUM = [
      WORKLOAD_TYPE_OLTP = 'OLTP'.freeze,
      WORKLOAD_TYPE_DW = 'DW'.freeze,
      WORKLOAD_TYPE_AJD = 'AJD'.freeze,
      WORKLOAD_TYPE_APEX = 'APEX'.freeze,
      WORKLOAD_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The identifier of the job execution.
    # @return [String]
    attr_accessor :id

    # **[Required]** The name of the job execution.
    # @return [String]
    attr_accessor :name

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment in which the parent job resides.
    # @return [String]
    attr_accessor :compartment_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the Managed Database Group where the parent job has to be executed.
    # @return [String]
    attr_accessor :managed_database_group_id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of Managed Database associated with the job execution.
    # @return [String]
    attr_accessor :managed_database_id

    # **[Required]** The name of the Managed Database associated with the job execution.
    # @return [String]
    attr_accessor :managed_database_name

    # The type of Oracle Database installation.
    # @return [String]
    attr_reader :database_type

    # The subtype of the Oracle Database. Indicates whether the database is a Container Database, Pluggable Database, or a Non-container Database.
    # @return [String]
    attr_reader :database_sub_type

    # A list of the supported infrastructure that can be used to deploy the database.
    # @return [String]
    attr_reader :deployment_type

    # Indicates whether the Oracle Database is part of a cluster.
    # @return [BOOLEAN]
    attr_accessor :is_cluster

    # The workload type of the Autonomous Database.
    # @return [String]
    attr_reader :workload_type

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the parent job.
    # @return [String]
    attr_accessor :job_id

    # **[Required]** The name of the parent job.
    # @return [String]
    attr_accessor :job_name

    # **[Required]** The status of the job execution.
    # @return [String]
    attr_accessor :status

    # **[Required]** The date and time when the job execution was created.
    # @return [DateTime]
    attr_accessor :time_created

    # The date and time when the job execution was completed.
    # @return [DateTime]
    attr_accessor :time_completed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'name': :'name',
        'compartment_id': :'compartmentId',
        'managed_database_group_id': :'managedDatabaseGroupId',
        'managed_database_id': :'managedDatabaseId',
        'managed_database_name': :'managedDatabaseName',
        'database_type': :'databaseType',
        'database_sub_type': :'databaseSubType',
        'deployment_type': :'deploymentType',
        'is_cluster': :'isCluster',
        'workload_type': :'workloadType',
        'job_id': :'jobId',
        'job_name': :'jobName',
        'status': :'status',
        'time_created': :'timeCreated',
        'time_completed': :'timeCompleted'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'name': :'String',
        'compartment_id': :'String',
        'managed_database_group_id': :'String',
        'managed_database_id': :'String',
        'managed_database_name': :'String',
        'database_type': :'String',
        'database_sub_type': :'String',
        'deployment_type': :'String',
        'is_cluster': :'BOOLEAN',
        'workload_type': :'String',
        'job_id': :'String',
        'job_name': :'String',
        'status': :'String',
        'time_created': :'DateTime',
        'time_completed': :'DateTime'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :managed_database_group_id The value to assign to the {#managed_database_group_id} property
    # @option attributes [String] :managed_database_id The value to assign to the {#managed_database_id} property
    # @option attributes [String] :managed_database_name The value to assign to the {#managed_database_name} property
    # @option attributes [String] :database_type The value to assign to the {#database_type} property
    # @option attributes [String] :database_sub_type The value to assign to the {#database_sub_type} property
    # @option attributes [String] :deployment_type The value to assign to the {#deployment_type} property
    # @option attributes [BOOLEAN] :is_cluster The value to assign to the {#is_cluster} property
    # @option attributes [String] :workload_type The value to assign to the {#workload_type} property
    # @option attributes [String] :job_id The value to assign to the {#job_id} property
    # @option attributes [String] :job_name The value to assign to the {#job_name} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_completed The value to assign to the {#time_completed} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.name = attributes[:'name'] if attributes[:'name']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.managed_database_group_id = attributes[:'managedDatabaseGroupId'] if attributes[:'managedDatabaseGroupId']

      raise 'You cannot provide both :managedDatabaseGroupId and :managed_database_group_id' if attributes.key?(:'managedDatabaseGroupId') && attributes.key?(:'managed_database_group_id')

      self.managed_database_group_id = attributes[:'managed_database_group_id'] if attributes[:'managed_database_group_id']

      self.managed_database_id = attributes[:'managedDatabaseId'] if attributes[:'managedDatabaseId']

      raise 'You cannot provide both :managedDatabaseId and :managed_database_id' if attributes.key?(:'managedDatabaseId') && attributes.key?(:'managed_database_id')

      self.managed_database_id = attributes[:'managed_database_id'] if attributes[:'managed_database_id']

      self.managed_database_name = attributes[:'managedDatabaseName'] if attributes[:'managedDatabaseName']

      raise 'You cannot provide both :managedDatabaseName and :managed_database_name' if attributes.key?(:'managedDatabaseName') && attributes.key?(:'managed_database_name')

      self.managed_database_name = attributes[:'managed_database_name'] if attributes[:'managed_database_name']

      self.database_type = attributes[:'databaseType'] if attributes[:'databaseType']

      raise 'You cannot provide both :databaseType and :database_type' if attributes.key?(:'databaseType') && attributes.key?(:'database_type')

      self.database_type = attributes[:'database_type'] if attributes[:'database_type']

      self.database_sub_type = attributes[:'databaseSubType'] if attributes[:'databaseSubType']

      raise 'You cannot provide both :databaseSubType and :database_sub_type' if attributes.key?(:'databaseSubType') && attributes.key?(:'database_sub_type')

      self.database_sub_type = attributes[:'database_sub_type'] if attributes[:'database_sub_type']

      self.deployment_type = attributes[:'deploymentType'] if attributes[:'deploymentType']

      raise 'You cannot provide both :deploymentType and :deployment_type' if attributes.key?(:'deploymentType') && attributes.key?(:'deployment_type')

      self.deployment_type = attributes[:'deployment_type'] if attributes[:'deployment_type']

      self.is_cluster = attributes[:'isCluster'] unless attributes[:'isCluster'].nil?

      raise 'You cannot provide both :isCluster and :is_cluster' if attributes.key?(:'isCluster') && attributes.key?(:'is_cluster')

      self.is_cluster = attributes[:'is_cluster'] unless attributes[:'is_cluster'].nil?

      self.workload_type = attributes[:'workloadType'] if attributes[:'workloadType']

      raise 'You cannot provide both :workloadType and :workload_type' if attributes.key?(:'workloadType') && attributes.key?(:'workload_type')

      self.workload_type = attributes[:'workload_type'] if attributes[:'workload_type']

      self.job_id = attributes[:'jobId'] if attributes[:'jobId']

      raise 'You cannot provide both :jobId and :job_id' if attributes.key?(:'jobId') && attributes.key?(:'job_id')

      self.job_id = attributes[:'job_id'] if attributes[:'job_id']

      self.job_name = attributes[:'jobName'] if attributes[:'jobName']

      raise 'You cannot provide both :jobName and :job_name' if attributes.key?(:'jobName') && attributes.key?(:'job_name')

      self.job_name = attributes[:'job_name'] if attributes[:'job_name']

      self.status = attributes[:'status'] if attributes[:'status']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_completed = attributes[:'timeCompleted'] if attributes[:'timeCompleted']

      raise 'You cannot provide both :timeCompleted and :time_completed' if attributes.key?(:'timeCompleted') && attributes.key?(:'time_completed')

      self.time_completed = attributes[:'time_completed'] if attributes[:'time_completed']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] database_type Object to be assigned
    def database_type=(database_type)
      # rubocop:disable Style/ConditionalAssignment
      if database_type && !DATABASE_TYPE_ENUM.include?(database_type)
        OCI.logger.debug("Unknown value for 'database_type' [" + database_type + "]. Mapping to 'DATABASE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @database_type = DATABASE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @database_type = database_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] database_sub_type Object to be assigned
    def database_sub_type=(database_sub_type)
      # rubocop:disable Style/ConditionalAssignment
      if database_sub_type && !DATABASE_SUB_TYPE_ENUM.include?(database_sub_type)
        OCI.logger.debug("Unknown value for 'database_sub_type' [" + database_sub_type + "]. Mapping to 'DATABASE_SUB_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @database_sub_type = DATABASE_SUB_TYPE_UNKNOWN_ENUM_VALUE
      else
        @database_sub_type = database_sub_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deployment_type Object to be assigned
    def deployment_type=(deployment_type)
      # rubocop:disable Style/ConditionalAssignment
      if deployment_type && !DEPLOYMENT_TYPE_ENUM.include?(deployment_type)
        OCI.logger.debug("Unknown value for 'deployment_type' [" + deployment_type + "]. Mapping to 'DEPLOYMENT_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @deployment_type = DEPLOYMENT_TYPE_UNKNOWN_ENUM_VALUE
      else
        @deployment_type = deployment_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] workload_type Object to be assigned
    def workload_type=(workload_type)
      # rubocop:disable Style/ConditionalAssignment
      if workload_type && !WORKLOAD_TYPE_ENUM.include?(workload_type)
        OCI.logger.debug("Unknown value for 'workload_type' [" + workload_type + "]. Mapping to 'WORKLOAD_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @workload_type = WORKLOAD_TYPE_UNKNOWN_ENUM_VALUE
      else
        @workload_type = workload_type
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
        name == other.name &&
        compartment_id == other.compartment_id &&
        managed_database_group_id == other.managed_database_group_id &&
        managed_database_id == other.managed_database_id &&
        managed_database_name == other.managed_database_name &&
        database_type == other.database_type &&
        database_sub_type == other.database_sub_type &&
        deployment_type == other.deployment_type &&
        is_cluster == other.is_cluster &&
        workload_type == other.workload_type &&
        job_id == other.job_id &&
        job_name == other.job_name &&
        status == other.status &&
        time_created == other.time_created &&
        time_completed == other.time_completed
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
      [id, name, compartment_id, managed_database_group_id, managed_database_id, managed_database_name, database_type, database_sub_type, deployment_type, is_cluster, workload_type, job_id, job_name, status, time_created, time_completed].hash
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
