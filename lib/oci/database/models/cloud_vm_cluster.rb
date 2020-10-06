# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details of the cloud VM cluster.
  #
  class Database::Models::CloudVmCluster
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PROVISIONING = 'PROVISIONING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_MAINTENANCE_IN_PROGRESS = 'MAINTENANCE_IN_PROGRESS'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LICENSE_MODEL_ENUM = [
      LICENSE_MODEL_LICENSE_INCLUDED = 'LICENSE_INCLUDED'.freeze,
      LICENSE_MODEL_BRING_YOUR_OWN_LICENSE = 'BRING_YOUR_OWN_LICENSE'.freeze,
      LICENSE_MODEL_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    DISK_REDUNDANCY_ENUM = [
      DISK_REDUNDANCY_HIGH = 'HIGH'.freeze,
      DISK_REDUNDANCY_NORMAL = 'NORMAL'.freeze,
      DISK_REDUNDANCY_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # @return [OCI::Database::Models::ExadataIormConfig]
    attr_accessor :iorm_config_cache

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the cloud VM cluster.
    # @return [String]
    attr_accessor :id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The name of the availability domain that the cloud Exadata infrastructure resource is located in.
    # @return [String]
    attr_accessor :availability_domain

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the subnet associated with the cloud VM cluster.
    #
    # **Subnet Restrictions:**
    # - For Exadata and virtual machine 2-node RAC systems, do not use a subnet that overlaps with 192.168.128.0/20.
    #
    # These subnets are used by the Oracle Clusterware private interconnect on the database instance.
    # Specifying an overlapping subnet will cause the private interconnect to malfunction.
    # This restriction applies to both the client subnet and backup subnet.
    #
    # @return [String]
    attr_accessor :subnet_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the backup network subnet associated with the cloud VM cluster.
    #
    # **Subnet Restriction:** See the subnet restrictions information for **subnetId**.
    #
    # @return [String]
    attr_accessor :backup_subnet_id

    # A list of the [OCIDs](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the network security groups (NSGs) that this resource belongs to. Setting this to an empty array after the list is created removes the resource from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/Content/Network/Concepts/securityrules.htm).
    # **NsgIds restrictions:**
    # - Autonomous Databases with private access require at least 1 Network Security Group (NSG). The nsgIds array cannot be empty.
    #
    # @return [Array<String>]
    attr_accessor :nsg_ids

    # A list of the [OCIDs](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the network security groups (NSGs) that the backup network of this DB system belongs to. Setting this to an empty array after the list is created removes the resource from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/Content/Network/Concepts/securityrules.htm). Applicable only to Exadata systems.
    #
    # @return [Array<String>]
    attr_accessor :backup_network_nsg_ids

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the last maintenance update history entry. This value is updated when a maintenance update starts.
    # @return [String]
    attr_accessor :last_update_history_entry_id

    # **[Required]** The model name of the Exadata hardware running the cloud VM cluster.
    #
    # @return [String]
    attr_accessor :shape

    # The port number configured for the listener on the cloud VM cluster.
    # @return [Integer]
    attr_accessor :listener_port

    # **[Required]** The current state of the cloud VM cluster.
    # @return [String]
    attr_reader :lifecycle_state

    # The number of nodes in the cloud VM cluster.
    #
    # @return [Integer]
    attr_accessor :node_count

    # The storage allocation for the disk group, in gigabytes (GB).
    # @return [Integer]
    attr_accessor :storage_size_in_gbs

    # **[Required]** The user-friendly name for the cloud VM cluster. The name does not need to be unique.
    # @return [String]
    attr_accessor :display_name

    # The date and time that the cloud VM cluster was created.
    # @return [DateTime]
    attr_accessor :time_created

    # Additional information about the current lifecycle state.
    # @return [String]
    attr_accessor :lifecycle_details

    # The time zone of the cloud VM cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.cloud.oracle.com/Content/Database/References/timezones.htm).
    # @return [String]
    attr_accessor :time_zone

    # **[Required]** The hostname for the cloud VM cluster.
    # @return [String]
    attr_accessor :hostname

    # **[Required]** The domain name for the cloud VM cluster.
    # @return [String]
    attr_accessor :domain

    # **[Required]** The number of CPU cores enabled on the cloud VM cluster.
    # @return [Integer]
    attr_accessor :cpu_core_count

    # The cluster name for cloud VM cluster. The cluster name must begin with an alphabetic character, and may contain hyphens (-). Underscores (_) are not permitted. The cluster name can be no longer than 11 characters and is not case sensitive.
    #
    # @return [String]
    attr_accessor :cluster_name

    # The percentage assigned to DATA storage (user data and database files).
    # The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are 35, 40, 60 and 80. The default is 80 percent assigned to DATA storage. See [Storage Configuration](https://docs.cloud.oracle.com/Content/Database/Concepts/exaoverview.htm#Exadata) in the Exadata documentation for details on the impact of the configuration settings on storage.
    #
    # @return [Integer]
    attr_accessor :data_storage_percentage

    # If true, database backup on local Exadata storage is configured for the cloud VM cluster. If false, database backup on local Exadata storage is not available in the cloud VM cluster.
    #
    # @return [BOOLEAN]
    attr_accessor :is_local_backup_enabled

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the cloud Exadata infrastructure.
    # @return [String]
    attr_accessor :cloud_exadata_infrastructure_id

    # If true, sparse disk group is configured for the cloud VM cluster. If false, sparse disk group is not created.
    #
    # @return [BOOLEAN]
    attr_accessor :is_sparse_diskgroup_enabled

    # A valid Oracle Grid Infrastructure (GI) software version.
    # @return [String]
    attr_accessor :gi_version

    # Operating system version of the image.
    # @return [String]
    attr_accessor :system_version

    # **[Required]** The public key portion of one or more key pairs used for SSH access to the cloud VM cluster.
    # @return [Array<String>]
    attr_accessor :ssh_public_keys

    # The Oracle license model that applies to the cloud VM cluster. The default is LICENSE_INCLUDED.
    #
    # @return [String]
    attr_reader :license_model

    # The type of redundancy configured for the cloud Vm cluster.
    # NORMAL is 2-way redundancy.
    # HIGH is 3-way redundancy.
    #
    # @return [String]
    attr_reader :disk_redundancy

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the Single Client Access Name (SCAN) IP addresses associated with the cloud VM cluster.
    # SCAN IP addresses are typically used for load balancing and are not assigned to any interface.
    # Oracle Clusterware directs the requests to the appropriate nodes in the cluster.
    #
    # **Note:** For a single-node DB system, this list is empty.
    #
    # @return [Array<String>]
    attr_accessor :scan_ip_ids

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the virtual IP (VIP) addresses associated with the cloud VM cluster.
    # The Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the Exadata Cloud Service instance to
    # enable failover. If one node fails, the VIP is reassigned to another active node in the cluster.
    #
    # **Note:** For a single-node DB system, this list is empty.
    #
    # @return [Array<String>]
    attr_accessor :vip_ids

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the DNS record for the SCAN IP addresses that are associated with the cloud VM cluster.
    #
    # @return [String]
    attr_accessor :scan_dns_record_id

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'iorm_config_cache': :'iormConfigCache',
        'id': :'id',
        'compartment_id': :'compartmentId',
        'availability_domain': :'availabilityDomain',
        'subnet_id': :'subnetId',
        'backup_subnet_id': :'backupSubnetId',
        'nsg_ids': :'nsgIds',
        'backup_network_nsg_ids': :'backupNetworkNsgIds',
        'last_update_history_entry_id': :'lastUpdateHistoryEntryId',
        'shape': :'shape',
        'listener_port': :'listenerPort',
        'lifecycle_state': :'lifecycleState',
        'node_count': :'nodeCount',
        'storage_size_in_gbs': :'storageSizeInGBs',
        'display_name': :'displayName',
        'time_created': :'timeCreated',
        'lifecycle_details': :'lifecycleDetails',
        'time_zone': :'timeZone',
        'hostname': :'hostname',
        'domain': :'domain',
        'cpu_core_count': :'cpuCoreCount',
        'cluster_name': :'clusterName',
        'data_storage_percentage': :'dataStoragePercentage',
        'is_local_backup_enabled': :'isLocalBackupEnabled',
        'cloud_exadata_infrastructure_id': :'cloudExadataInfrastructureId',
        'is_sparse_diskgroup_enabled': :'isSparseDiskgroupEnabled',
        'gi_version': :'giVersion',
        'system_version': :'systemVersion',
        'ssh_public_keys': :'sshPublicKeys',
        'license_model': :'licenseModel',
        'disk_redundancy': :'diskRedundancy',
        'scan_ip_ids': :'scanIpIds',
        'vip_ids': :'vipIds',
        'scan_dns_record_id': :'scanDnsRecordId',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'iorm_config_cache': :'OCI::Database::Models::ExadataIormConfig',
        'id': :'String',
        'compartment_id': :'String',
        'availability_domain': :'String',
        'subnet_id': :'String',
        'backup_subnet_id': :'String',
        'nsg_ids': :'Array<String>',
        'backup_network_nsg_ids': :'Array<String>',
        'last_update_history_entry_id': :'String',
        'shape': :'String',
        'listener_port': :'Integer',
        'lifecycle_state': :'String',
        'node_count': :'Integer',
        'storage_size_in_gbs': :'Integer',
        'display_name': :'String',
        'time_created': :'DateTime',
        'lifecycle_details': :'String',
        'time_zone': :'String',
        'hostname': :'String',
        'domain': :'String',
        'cpu_core_count': :'Integer',
        'cluster_name': :'String',
        'data_storage_percentage': :'Integer',
        'is_local_backup_enabled': :'BOOLEAN',
        'cloud_exadata_infrastructure_id': :'String',
        'is_sparse_diskgroup_enabled': :'BOOLEAN',
        'gi_version': :'String',
        'system_version': :'String',
        'ssh_public_keys': :'Array<String>',
        'license_model': :'String',
        'disk_redundancy': :'String',
        'scan_ip_ids': :'Array<String>',
        'vip_ids': :'Array<String>',
        'scan_dns_record_id': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [OCI::Database::Models::ExadataIormConfig] :iorm_config_cache The value to assign to the {#iorm_config_cache} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    # @option attributes [String] :subnet_id The value to assign to the {#subnet_id} property
    # @option attributes [String] :backup_subnet_id The value to assign to the {#backup_subnet_id} property
    # @option attributes [Array<String>] :nsg_ids The value to assign to the {#nsg_ids} property
    # @option attributes [Array<String>] :backup_network_nsg_ids The value to assign to the {#backup_network_nsg_ids} property
    # @option attributes [String] :last_update_history_entry_id The value to assign to the {#last_update_history_entry_id} property
    # @option attributes [String] :shape The value to assign to the {#shape} property
    # @option attributes [Integer] :listener_port The value to assign to the {#listener_port} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [Integer] :node_count The value to assign to the {#node_count} property
    # @option attributes [Integer] :storage_size_in_gbs The value to assign to the {#storage_size_in_gbs} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [String] :time_zone The value to assign to the {#time_zone} property
    # @option attributes [String] :hostname The value to assign to the {#hostname} property
    # @option attributes [String] :domain The value to assign to the {#domain} property
    # @option attributes [Integer] :cpu_core_count The value to assign to the {#cpu_core_count} property
    # @option attributes [String] :cluster_name The value to assign to the {#cluster_name} property
    # @option attributes [Integer] :data_storage_percentage The value to assign to the {#data_storage_percentage} property
    # @option attributes [BOOLEAN] :is_local_backup_enabled The value to assign to the {#is_local_backup_enabled} property
    # @option attributes [String] :cloud_exadata_infrastructure_id The value to assign to the {#cloud_exadata_infrastructure_id} property
    # @option attributes [BOOLEAN] :is_sparse_diskgroup_enabled The value to assign to the {#is_sparse_diskgroup_enabled} property
    # @option attributes [String] :gi_version The value to assign to the {#gi_version} property
    # @option attributes [String] :system_version The value to assign to the {#system_version} property
    # @option attributes [Array<String>] :ssh_public_keys The value to assign to the {#ssh_public_keys} property
    # @option attributes [String] :license_model The value to assign to the {#license_model} property
    # @option attributes [String] :disk_redundancy The value to assign to the {#disk_redundancy} property
    # @option attributes [Array<String>] :scan_ip_ids The value to assign to the {#scan_ip_ids} property
    # @option attributes [Array<String>] :vip_ids The value to assign to the {#vip_ids} property
    # @option attributes [String] :scan_dns_record_id The value to assign to the {#scan_dns_record_id} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.iorm_config_cache = attributes[:'iormConfigCache'] if attributes[:'iormConfigCache']

      raise 'You cannot provide both :iormConfigCache and :iorm_config_cache' if attributes.key?(:'iormConfigCache') && attributes.key?(:'iorm_config_cache')

      self.iorm_config_cache = attributes[:'iorm_config_cache'] if attributes[:'iorm_config_cache']

      self.id = attributes[:'id'] if attributes[:'id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']

      self.subnet_id = attributes[:'subnetId'] if attributes[:'subnetId']

      raise 'You cannot provide both :subnetId and :subnet_id' if attributes.key?(:'subnetId') && attributes.key?(:'subnet_id')

      self.subnet_id = attributes[:'subnet_id'] if attributes[:'subnet_id']

      self.backup_subnet_id = attributes[:'backupSubnetId'] if attributes[:'backupSubnetId']

      raise 'You cannot provide both :backupSubnetId and :backup_subnet_id' if attributes.key?(:'backupSubnetId') && attributes.key?(:'backup_subnet_id')

      self.backup_subnet_id = attributes[:'backup_subnet_id'] if attributes[:'backup_subnet_id']

      self.nsg_ids = attributes[:'nsgIds'] if attributes[:'nsgIds']

      raise 'You cannot provide both :nsgIds and :nsg_ids' if attributes.key?(:'nsgIds') && attributes.key?(:'nsg_ids')

      self.nsg_ids = attributes[:'nsg_ids'] if attributes[:'nsg_ids']

      self.backup_network_nsg_ids = attributes[:'backupNetworkNsgIds'] if attributes[:'backupNetworkNsgIds']

      raise 'You cannot provide both :backupNetworkNsgIds and :backup_network_nsg_ids' if attributes.key?(:'backupNetworkNsgIds') && attributes.key?(:'backup_network_nsg_ids')

      self.backup_network_nsg_ids = attributes[:'backup_network_nsg_ids'] if attributes[:'backup_network_nsg_ids']

      self.last_update_history_entry_id = attributes[:'lastUpdateHistoryEntryId'] if attributes[:'lastUpdateHistoryEntryId']

      raise 'You cannot provide both :lastUpdateHistoryEntryId and :last_update_history_entry_id' if attributes.key?(:'lastUpdateHistoryEntryId') && attributes.key?(:'last_update_history_entry_id')

      self.last_update_history_entry_id = attributes[:'last_update_history_entry_id'] if attributes[:'last_update_history_entry_id']

      self.shape = attributes[:'shape'] if attributes[:'shape']

      self.listener_port = attributes[:'listenerPort'] if attributes[:'listenerPort']

      raise 'You cannot provide both :listenerPort and :listener_port' if attributes.key?(:'listenerPort') && attributes.key?(:'listener_port')

      self.listener_port = attributes[:'listener_port'] if attributes[:'listener_port']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.node_count = attributes[:'nodeCount'] if attributes[:'nodeCount']

      raise 'You cannot provide both :nodeCount and :node_count' if attributes.key?(:'nodeCount') && attributes.key?(:'node_count')

      self.node_count = attributes[:'node_count'] if attributes[:'node_count']

      self.storage_size_in_gbs = attributes[:'storageSizeInGBs'] if attributes[:'storageSizeInGBs']

      raise 'You cannot provide both :storageSizeInGBs and :storage_size_in_gbs' if attributes.key?(:'storageSizeInGBs') && attributes.key?(:'storage_size_in_gbs')

      self.storage_size_in_gbs = attributes[:'storage_size_in_gbs'] if attributes[:'storage_size_in_gbs']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.time_zone = attributes[:'timeZone'] if attributes[:'timeZone']

      raise 'You cannot provide both :timeZone and :time_zone' if attributes.key?(:'timeZone') && attributes.key?(:'time_zone')

      self.time_zone = attributes[:'time_zone'] if attributes[:'time_zone']

      self.hostname = attributes[:'hostname'] if attributes[:'hostname']

      self.domain = attributes[:'domain'] if attributes[:'domain']

      self.cpu_core_count = attributes[:'cpuCoreCount'] if attributes[:'cpuCoreCount']

      raise 'You cannot provide both :cpuCoreCount and :cpu_core_count' if attributes.key?(:'cpuCoreCount') && attributes.key?(:'cpu_core_count')

      self.cpu_core_count = attributes[:'cpu_core_count'] if attributes[:'cpu_core_count']

      self.cluster_name = attributes[:'clusterName'] if attributes[:'clusterName']

      raise 'You cannot provide both :clusterName and :cluster_name' if attributes.key?(:'clusterName') && attributes.key?(:'cluster_name')

      self.cluster_name = attributes[:'cluster_name'] if attributes[:'cluster_name']

      self.data_storage_percentage = attributes[:'dataStoragePercentage'] if attributes[:'dataStoragePercentage']

      raise 'You cannot provide both :dataStoragePercentage and :data_storage_percentage' if attributes.key?(:'dataStoragePercentage') && attributes.key?(:'data_storage_percentage')

      self.data_storage_percentage = attributes[:'data_storage_percentage'] if attributes[:'data_storage_percentage']

      self.is_local_backup_enabled = attributes[:'isLocalBackupEnabled'] unless attributes[:'isLocalBackupEnabled'].nil?

      raise 'You cannot provide both :isLocalBackupEnabled and :is_local_backup_enabled' if attributes.key?(:'isLocalBackupEnabled') && attributes.key?(:'is_local_backup_enabled')

      self.is_local_backup_enabled = attributes[:'is_local_backup_enabled'] unless attributes[:'is_local_backup_enabled'].nil?

      self.cloud_exadata_infrastructure_id = attributes[:'cloudExadataInfrastructureId'] if attributes[:'cloudExadataInfrastructureId']

      raise 'You cannot provide both :cloudExadataInfrastructureId and :cloud_exadata_infrastructure_id' if attributes.key?(:'cloudExadataInfrastructureId') && attributes.key?(:'cloud_exadata_infrastructure_id')

      self.cloud_exadata_infrastructure_id = attributes[:'cloud_exadata_infrastructure_id'] if attributes[:'cloud_exadata_infrastructure_id']

      self.is_sparse_diskgroup_enabled = attributes[:'isSparseDiskgroupEnabled'] unless attributes[:'isSparseDiskgroupEnabled'].nil?

      raise 'You cannot provide both :isSparseDiskgroupEnabled and :is_sparse_diskgroup_enabled' if attributes.key?(:'isSparseDiskgroupEnabled') && attributes.key?(:'is_sparse_diskgroup_enabled')

      self.is_sparse_diskgroup_enabled = attributes[:'is_sparse_diskgroup_enabled'] unless attributes[:'is_sparse_diskgroup_enabled'].nil?

      self.gi_version = attributes[:'giVersion'] if attributes[:'giVersion']

      raise 'You cannot provide both :giVersion and :gi_version' if attributes.key?(:'giVersion') && attributes.key?(:'gi_version')

      self.gi_version = attributes[:'gi_version'] if attributes[:'gi_version']

      self.system_version = attributes[:'systemVersion'] if attributes[:'systemVersion']

      raise 'You cannot provide both :systemVersion and :system_version' if attributes.key?(:'systemVersion') && attributes.key?(:'system_version')

      self.system_version = attributes[:'system_version'] if attributes[:'system_version']

      self.ssh_public_keys = attributes[:'sshPublicKeys'] if attributes[:'sshPublicKeys']

      raise 'You cannot provide both :sshPublicKeys and :ssh_public_keys' if attributes.key?(:'sshPublicKeys') && attributes.key?(:'ssh_public_keys')

      self.ssh_public_keys = attributes[:'ssh_public_keys'] if attributes[:'ssh_public_keys']

      self.license_model = attributes[:'licenseModel'] if attributes[:'licenseModel']

      raise 'You cannot provide both :licenseModel and :license_model' if attributes.key?(:'licenseModel') && attributes.key?(:'license_model')

      self.license_model = attributes[:'license_model'] if attributes[:'license_model']

      self.disk_redundancy = attributes[:'diskRedundancy'] if attributes[:'diskRedundancy']

      raise 'You cannot provide both :diskRedundancy and :disk_redundancy' if attributes.key?(:'diskRedundancy') && attributes.key?(:'disk_redundancy')

      self.disk_redundancy = attributes[:'disk_redundancy'] if attributes[:'disk_redundancy']

      self.scan_ip_ids = attributes[:'scanIpIds'] if attributes[:'scanIpIds']

      raise 'You cannot provide both :scanIpIds and :scan_ip_ids' if attributes.key?(:'scanIpIds') && attributes.key?(:'scan_ip_ids')

      self.scan_ip_ids = attributes[:'scan_ip_ids'] if attributes[:'scan_ip_ids']

      self.vip_ids = attributes[:'vipIds'] if attributes[:'vipIds']

      raise 'You cannot provide both :vipIds and :vip_ids' if attributes.key?(:'vipIds') && attributes.key?(:'vip_ids')

      self.vip_ids = attributes[:'vip_ids'] if attributes[:'vip_ids']

      self.scan_dns_record_id = attributes[:'scanDnsRecordId'] if attributes[:'scanDnsRecordId']

      raise 'You cannot provide both :scanDnsRecordId and :scan_dns_record_id' if attributes.key?(:'scanDnsRecordId') && attributes.key?(:'scan_dns_record_id')

      self.scan_dns_record_id = attributes[:'scan_dns_record_id'] if attributes[:'scan_dns_record_id']

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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] license_model Object to be assigned
    def license_model=(license_model)
      # rubocop:disable Style/ConditionalAssignment
      if license_model && !LICENSE_MODEL_ENUM.include?(license_model)
        OCI.logger.debug("Unknown value for 'license_model' [" + license_model + "]. Mapping to 'LICENSE_MODEL_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @license_model = LICENSE_MODEL_UNKNOWN_ENUM_VALUE
      else
        @license_model = license_model
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disk_redundancy Object to be assigned
    def disk_redundancy=(disk_redundancy)
      # rubocop:disable Style/ConditionalAssignment
      if disk_redundancy && !DISK_REDUNDANCY_ENUM.include?(disk_redundancy)
        OCI.logger.debug("Unknown value for 'disk_redundancy' [" + disk_redundancy + "]. Mapping to 'DISK_REDUNDANCY_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @disk_redundancy = DISK_REDUNDANCY_UNKNOWN_ENUM_VALUE
      else
        @disk_redundancy = disk_redundancy
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        iorm_config_cache == other.iorm_config_cache &&
        id == other.id &&
        compartment_id == other.compartment_id &&
        availability_domain == other.availability_domain &&
        subnet_id == other.subnet_id &&
        backup_subnet_id == other.backup_subnet_id &&
        nsg_ids == other.nsg_ids &&
        backup_network_nsg_ids == other.backup_network_nsg_ids &&
        last_update_history_entry_id == other.last_update_history_entry_id &&
        shape == other.shape &&
        listener_port == other.listener_port &&
        lifecycle_state == other.lifecycle_state &&
        node_count == other.node_count &&
        storage_size_in_gbs == other.storage_size_in_gbs &&
        display_name == other.display_name &&
        time_created == other.time_created &&
        lifecycle_details == other.lifecycle_details &&
        time_zone == other.time_zone &&
        hostname == other.hostname &&
        domain == other.domain &&
        cpu_core_count == other.cpu_core_count &&
        cluster_name == other.cluster_name &&
        data_storage_percentage == other.data_storage_percentage &&
        is_local_backup_enabled == other.is_local_backup_enabled &&
        cloud_exadata_infrastructure_id == other.cloud_exadata_infrastructure_id &&
        is_sparse_diskgroup_enabled == other.is_sparse_diskgroup_enabled &&
        gi_version == other.gi_version &&
        system_version == other.system_version &&
        ssh_public_keys == other.ssh_public_keys &&
        license_model == other.license_model &&
        disk_redundancy == other.disk_redundancy &&
        scan_ip_ids == other.scan_ip_ids &&
        vip_ids == other.vip_ids &&
        scan_dns_record_id == other.scan_dns_record_id &&
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
      [iorm_config_cache, id, compartment_id, availability_domain, subnet_id, backup_subnet_id, nsg_ids, backup_network_nsg_ids, last_update_history_entry_id, shape, listener_port, lifecycle_state, node_count, storage_size_in_gbs, display_name, time_created, lifecycle_details, time_zone, hostname, domain, cpu_core_count, cluster_name, data_storage_percentage, is_local_backup_enabled, cloud_exadata_infrastructure_id, is_sparse_diskgroup_enabled, gi_version, system_version, ssh_public_keys, license_model, disk_redundancy, scan_ip_ids, vip_ids, scan_dns_record_id, freeform_tags, defined_tags].hash
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
