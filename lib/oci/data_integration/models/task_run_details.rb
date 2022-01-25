# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The task run object provides information on the execution of a task.
  class DataIntegration::Models::TaskRunDetails
    STATUS_ENUM = [
      STATUS_NOT_STARTED = 'NOT_STARTED'.freeze,
      STATUS_QUEUED = 'QUEUED'.freeze,
      STATUS_RUNNING = 'RUNNING'.freeze,
      STATUS_TERMINATING = 'TERMINATING'.freeze,
      STATUS_TERMINATED = 'TERMINATED'.freeze,
      STATUS_SUCCESS = 'SUCCESS'.freeze,
      STATUS_ERROR = 'ERROR'.freeze,
      STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TASK_TYPE_ENUM = [
      TASK_TYPE_INTEGRATION_TASK = 'INTEGRATION_TASK'.freeze,
      TASK_TYPE_DATA_LOADER_TASK = 'DATA_LOADER_TASK'.freeze,
      TASK_TYPE_PIPELINE_TASK = 'PIPELINE_TASK'.freeze,
      TASK_TYPE_SQL_TASK = 'SQL_TASK'.freeze,
      TASK_TYPE_OCI_DATAFLOW_TASK = 'OCI_DATAFLOW_TASK'.freeze,
      TASK_TYPE_REST_TASK = 'REST_TASK'.freeze,
      TASK_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    RE_RUN_TYPE_ENUM = [
      RE_RUN_TYPE_BEGINNING = 'BEGINNING'.freeze,
      RE_RUN_TYPE_FAILED = 'FAILED'.freeze,
      RE_RUN_TYPE_STEP = 'STEP'.freeze,
      RE_RUN_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The object key.
    # @return [String]
    attr_accessor :key

    # The object type.
    # @return [String]
    attr_accessor :model_type

    # The object's model version.
    # @return [String]
    attr_accessor :model_version

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # The version of the object that is used to track changes in the object instance.
    # @return [Integer]
    attr_accessor :object_version

    # status
    # @return [String]
    attr_reader :status

    # The task run start time.
    # @return [Integer]
    attr_accessor :start_time_millis

    # The task run end time.
    # @return [Integer]
    attr_accessor :end_time_millis

    # The date and time the task run was last updated.
    # @return [Integer]
    attr_accessor :last_updated

    # Number of records processed in task run.
    # @return [Integer]
    attr_accessor :records_written

    # Number of bytes processed in task run.
    # @return [Integer]
    attr_accessor :bytes_processed

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # The type of the task for the run.
    # @return [String]
    attr_reader :task_type

    # Value can only contain upper case letters, underscore, and numbers. It should begin with upper case letter or underscore. The value can be modified.
    # @return [String]
    attr_accessor :identifier

    # Reference Task Run Id to be used for re-run
    # @return [String]
    attr_accessor :ref_task_run_id

    # Supported re-run types
    # @return [String]
    attr_reader :re_run_type

    # Step Id for running from a certain step.
    # @return [String]
    attr_accessor :step_id

    # @return [OCI::DataIntegration::Models::ObjectMetadata]
    attr_accessor :metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'model_type': :'modelType',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'status': :'status',
        'start_time_millis': :'startTimeMillis',
        'end_time_millis': :'endTimeMillis',
        'last_updated': :'lastUpdated',
        'records_written': :'recordsWritten',
        'bytes_processed': :'bytesProcessed',
        'object_status': :'objectStatus',
        'task_type': :'taskType',
        'identifier': :'identifier',
        'ref_task_run_id': :'refTaskRunId',
        're_run_type': :'reRunType',
        'step_id': :'stepId',
        'metadata': :'metadata'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'model_type': :'String',
        'model_version': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'status': :'String',
        'start_time_millis': :'Integer',
        'end_time_millis': :'Integer',
        'last_updated': :'Integer',
        'records_written': :'Integer',
        'bytes_processed': :'Integer',
        'object_status': :'Integer',
        'task_type': :'String',
        'identifier': :'String',
        'ref_task_run_id': :'String',
        're_run_type': :'String',
        'step_id': :'String',
        'metadata': :'OCI::DataIntegration::Models::ObjectMetadata'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :model_type The value to assign to the {#model_type} property
    # @option attributes [String] :model_version The value to assign to the {#model_version} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Integer] :object_version The value to assign to the {#object_version} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [Integer] :start_time_millis The value to assign to the {#start_time_millis} property
    # @option attributes [Integer] :end_time_millis The value to assign to the {#end_time_millis} property
    # @option attributes [Integer] :last_updated The value to assign to the {#last_updated} property
    # @option attributes [Integer] :records_written The value to assign to the {#records_written} property
    # @option attributes [Integer] :bytes_processed The value to assign to the {#bytes_processed} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [String] :task_type The value to assign to the {#task_type} property
    # @option attributes [String] :identifier The value to assign to the {#identifier} property
    # @option attributes [String] :ref_task_run_id The value to assign to the {#ref_task_run_id} property
    # @option attributes [String] :re_run_type The value to assign to the {#re_run_type} property
    # @option attributes [String] :step_id The value to assign to the {#step_id} property
    # @option attributes [OCI::DataIntegration::Models::ObjectMetadata] :metadata The value to assign to the {#metadata} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_type = attributes[:'modelType'] if attributes[:'modelType']

      raise 'You cannot provide both :modelType and :model_type' if attributes.key?(:'modelType') && attributes.key?(:'model_type')

      self.model_type = attributes[:'model_type'] if attributes[:'model_type']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.object_version = attributes[:'objectVersion'] if attributes[:'objectVersion']

      raise 'You cannot provide both :objectVersion and :object_version' if attributes.key?(:'objectVersion') && attributes.key?(:'object_version')

      self.object_version = attributes[:'object_version'] if attributes[:'object_version']

      self.status = attributes[:'status'] if attributes[:'status']

      self.start_time_millis = attributes[:'startTimeMillis'] if attributes[:'startTimeMillis']

      raise 'You cannot provide both :startTimeMillis and :start_time_millis' if attributes.key?(:'startTimeMillis') && attributes.key?(:'start_time_millis')

      self.start_time_millis = attributes[:'start_time_millis'] if attributes[:'start_time_millis']

      self.end_time_millis = attributes[:'endTimeMillis'] if attributes[:'endTimeMillis']

      raise 'You cannot provide both :endTimeMillis and :end_time_millis' if attributes.key?(:'endTimeMillis') && attributes.key?(:'end_time_millis')

      self.end_time_millis = attributes[:'end_time_millis'] if attributes[:'end_time_millis']

      self.last_updated = attributes[:'lastUpdated'] if attributes[:'lastUpdated']

      raise 'You cannot provide both :lastUpdated and :last_updated' if attributes.key?(:'lastUpdated') && attributes.key?(:'last_updated')

      self.last_updated = attributes[:'last_updated'] if attributes[:'last_updated']

      self.records_written = attributes[:'recordsWritten'] if attributes[:'recordsWritten']

      raise 'You cannot provide both :recordsWritten and :records_written' if attributes.key?(:'recordsWritten') && attributes.key?(:'records_written')

      self.records_written = attributes[:'records_written'] if attributes[:'records_written']

      self.bytes_processed = attributes[:'bytesProcessed'] if attributes[:'bytesProcessed']

      raise 'You cannot provide both :bytesProcessed and :bytes_processed' if attributes.key?(:'bytesProcessed') && attributes.key?(:'bytes_processed')

      self.bytes_processed = attributes[:'bytes_processed'] if attributes[:'bytes_processed']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.task_type = attributes[:'taskType'] if attributes[:'taskType']

      raise 'You cannot provide both :taskType and :task_type' if attributes.key?(:'taskType') && attributes.key?(:'task_type')

      self.task_type = attributes[:'task_type'] if attributes[:'task_type']

      self.identifier = attributes[:'identifier'] if attributes[:'identifier']

      self.ref_task_run_id = attributes[:'refTaskRunId'] if attributes[:'refTaskRunId']

      raise 'You cannot provide both :refTaskRunId and :ref_task_run_id' if attributes.key?(:'refTaskRunId') && attributes.key?(:'ref_task_run_id')

      self.ref_task_run_id = attributes[:'ref_task_run_id'] if attributes[:'ref_task_run_id']

      self.re_run_type = attributes[:'reRunType'] if attributes[:'reRunType']

      raise 'You cannot provide both :reRunType and :re_run_type' if attributes.key?(:'reRunType') && attributes.key?(:'re_run_type')

      self.re_run_type = attributes[:'re_run_type'] if attributes[:'re_run_type']

      self.step_id = attributes[:'stepId'] if attributes[:'stepId']

      raise 'You cannot provide both :stepId and :step_id' if attributes.key?(:'stepId') && attributes.key?(:'step_id')

      self.step_id = attributes[:'step_id'] if attributes[:'step_id']

      self.metadata = attributes[:'metadata'] if attributes[:'metadata']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      # rubocop:disable Style/ConditionalAssignment
      if status && !STATUS_ENUM.include?(status)
        OCI.logger.debug("Unknown value for 'status' [" + status + "]. Mapping to 'STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @status = STATUS_UNKNOWN_ENUM_VALUE
      else
        @status = status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] task_type Object to be assigned
    def task_type=(task_type)
      # rubocop:disable Style/ConditionalAssignment
      if task_type && !TASK_TYPE_ENUM.include?(task_type)
        OCI.logger.debug("Unknown value for 'task_type' [" + task_type + "]. Mapping to 'TASK_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @task_type = TASK_TYPE_UNKNOWN_ENUM_VALUE
      else
        @task_type = task_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] re_run_type Object to be assigned
    def re_run_type=(re_run_type)
      # rubocop:disable Style/ConditionalAssignment
      if re_run_type && !RE_RUN_TYPE_ENUM.include?(re_run_type)
        OCI.logger.debug("Unknown value for 're_run_type' [" + re_run_type + "]. Mapping to 'RE_RUN_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @re_run_type = RE_RUN_TYPE_UNKNOWN_ENUM_VALUE
      else
        @re_run_type = re_run_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        model_type == other.model_type &&
        model_version == other.model_version &&
        parent_ref == other.parent_ref &&
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        status == other.status &&
        start_time_millis == other.start_time_millis &&
        end_time_millis == other.end_time_millis &&
        last_updated == other.last_updated &&
        records_written == other.records_written &&
        bytes_processed == other.bytes_processed &&
        object_status == other.object_status &&
        task_type == other.task_type &&
        identifier == other.identifier &&
        ref_task_run_id == other.ref_task_run_id &&
        re_run_type == other.re_run_type &&
        step_id == other.step_id &&
        metadata == other.metadata
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
      [key, model_type, model_version, parent_ref, name, description, object_version, status, start_time_millis, end_time_millis, last_updated, records_written, bytes_processed, object_status, task_type, identifier, ref_task_run_id, re_run_type, step_id, metadata].hash
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
