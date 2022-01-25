# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'uri'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # APIs for dynamically scaling Compute resources to meet application requirements. For more information about
  # autoscaling, see [Autoscaling](/Content/Compute/Tasks/autoscalinginstancepools.htm). For information about the
  # Compute service, see [Overview of the Compute Service](/Content/Compute/Concepts/computeoverview.htm).
  #
  # **Note:** Autoscaling is not available in US Government Cloud tenancies. For more information, see
  # [Oracle Cloud Infrastructure US Government Cloud](/Content/General/Concepts/govoverview.htm).
  class Autoscaling::AutoScalingClient
    # Client used to make HTTP requests.
    # @return [OCI::ApiClient]
    attr_reader :api_client

    # Fully qualified endpoint URL
    # @return [String]
    attr_reader :endpoint

    # The default retry configuration to apply to all operations in this service client. This can be overridden
    # on a per-operation basis. The default retry configuration value is `nil`, which means that an operation
    # will not perform any retries
    # @return [OCI::Retry::RetryConfig]
    attr_reader :retry_config

    # The region, which will usually correspond to a value in {OCI::Regions::REGION_ENUM}.
    # @return [String]
    attr_reader :region

    # rubocop:disable Metrics/AbcSize, Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity


    # Creates a new AutoScalingClient.
    # Notes:
    #   If a config is not specified, then the global OCI.config will be used.
    #
    #   This client is not thread-safe
    #
    #   Either a region or an endpoint must be specified.  If an endpoint is specified, it will be used instead of the
    #     region. A region may be specified in the config or via or the region parameter. If specified in both, then the
    #     region parameter will be used.
    # @param [Config] config A Config object.
    # @param [String] region A region used to determine the service endpoint. This will usually
    #   correspond to a value in {OCI::Regions::REGION_ENUM}, but may be an arbitrary string.
    # @param [String] endpoint The fully qualified endpoint URL
    # @param [OCI::BaseSigner] signer A signer implementation which can be used by this client. If this is not provided then
    #   a signer will be constructed via the provided config. One use case of this parameter is instance principals authentication,
    #   so that the instance principals signer can be provided to the client
    # @param [OCI::ApiClientProxySettings] proxy_settings If your environment requires you to use a proxy server for outgoing HTTP requests
    #   the details for the proxy can be provided in this parameter
    # @param [OCI::Retry::RetryConfig] retry_config The retry configuration for this service client. This represents the default retry configuration to
    #   apply across all operations. This can be overridden on a per-operation basis. The default retry configuration value is `nil`, which means that an operation
    #   will not perform any retries
    def initialize(config: nil, region: nil, endpoint: nil, signer: nil, proxy_settings: nil, retry_config: nil)
      # If the signer is an InstancePrincipalsSecurityTokenSigner or SecurityTokenSigner and no config was supplied (they are self-sufficient signers)
      # then create a dummy config to pass to the ApiClient constructor. If customers wish to create a client which uses instance principals
      # and has config (either populated programmatically or loaded from a file), they must construct that config themselves and then
      # pass it to this constructor.
      #
      # If there is no signer (or the signer is not an instance principals signer) and no config was supplied, this is not valid
      # so try and load the config from the default file.
      config = OCI::Config.validate_and_build_config_with_signer(config, signer)

      signer = OCI::Signer.config_file_auth_builder(config) if signer.nil?

      @api_client = OCI::ApiClient.new(config, signer, proxy_settings: proxy_settings)
      @retry_config = retry_config

      if endpoint
        @endpoint = endpoint + '/20181001'
      else
        region ||= config.region
        region ||= signer.region if signer.respond_to?(:region)
        self.region = region
      end
      logger.info "AutoScalingClient endpoint set to '#{@endpoint}'." if logger
    end
    # rubocop:enable Metrics/AbcSize, Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity

    # Set the region that will be used to determine the service endpoint.
    # This will usually correspond to a value in {OCI::Regions::REGION_ENUM},
    # but may be an arbitrary string.
    def region=(new_region)
      @region = new_region

      raise 'A region must be specified.' unless @region

      @endpoint = OCI::Regions.get_service_endpoint_for_template(@region, 'https://autoscaling.{region}.oci.{secondLevelDomain}') + '/20181001'
      logger.info "AutoScalingClient endpoint set to '#{@endpoint} from region #{@region}'." if logger
    end

    # @return [Logger] The logger for this client. May be nil.
    def logger
      @api_client.config.logger
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Moves an autoscaling configuration into a different compartment within the same tenancy. For information
    # about moving resources between compartments, see
    # [Moving Resources to a Different Compartment](https://docs.cloud.oracle.com/iaas/Content/Identity/Tasks/managingcompartments.htm#moveRes).
    #
    # When you move an autoscaling configuration to a different compartment, associated resources such as instance
    # pools are not moved.
    #
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [OCI::Autoscaling::Models::ChangeAutoScalingCompartmentDetails] change_compartment_details Request to change the compartment of given autoscaling configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :opc_request_id
    # @option opts [String] :if_match For optimistic concurrency control. In the PUT or DELETE call for a resource, set the `if-match`
    #   parameter to the value of the etag from a previous GET or POST response for that resource.  The resource
    #   will be updated or deleted only if the etag you provide matches the resource's current etag value.
    #
    # @option opts [String] :opc_retry_token A token that uniquely identifies a request so it can be retried in case of a timeout or
    #   server error without risk of executing that same action again. Retry tokens expire after 24
    #   hours, but can be invalidated before then due to conflicting operations (for example, if a resource
    #   has been deleted and purged from the system, then a retry of the original creation request
    #   may be rejected).
    #
    # @return [Response] A Response object with data of type nil
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/change_auto_scaling_configuration_compartment.rb.html) to see an example of how to use change_auto_scaling_configuration_compartment API.
    def change_auto_scaling_configuration_compartment(auto_scaling_configuration_id, change_compartment_details, opts = {})
      logger.debug 'Calling operation AutoScalingClient#change_auto_scaling_configuration_compartment.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling change_auto_scaling_configuration_compartment." if auto_scaling_configuration_id.nil?
      raise "Missing the required parameter 'change_compartment_details' when calling change_auto_scaling_configuration_compartment." if change_compartment_details.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}/actions/changeCompartment'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      header_params[:'if-match'] = opts[:if_match] if opts[:if_match]
      header_params[:'opc-retry-token'] = opts[:opc_retry_token] if opts[:opc_retry_token]
      # rubocop:enable Style/NegatedIf
      header_params[:'opc-retry-token'] ||= OCI::Retry.generate_opc_retry_token

      post_body = @api_client.object_to_http_body(change_compartment_details)

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#change_auto_scaling_configuration_compartment') do
        @api_client.call_api(
          :POST,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Creates an autoscaling configuration.
    # @param [OCI::Autoscaling::Models::CreateAutoScalingConfigurationDetails] create_auto_scaling_configuration_details Creation details for an autoscaling configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :opc_request_id
    # @option opts [String] :opc_retry_token A token that uniquely identifies a request so it can be retried in case of a timeout or
    #   server error without risk of executing that same action again. Retry tokens expire after 24
    #   hours, but can be invalidated before then due to conflicting operations (for example, if a resource
    #   has been deleted and purged from the system, then a retry of the original creation request
    #   may be rejected).
    #
    # @return [Response] A Response object with data of type {OCI::Autoscaling::Models::AutoScalingConfiguration AutoScalingConfiguration}
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/create_auto_scaling_configuration.rb.html) to see an example of how to use create_auto_scaling_configuration API.
    def create_auto_scaling_configuration(create_auto_scaling_configuration_details, opts = {})
      logger.debug 'Calling operation AutoScalingClient#create_auto_scaling_configuration.' if logger

      raise "Missing the required parameter 'create_auto_scaling_configuration_details' when calling create_auto_scaling_configuration." if create_auto_scaling_configuration_details.nil?

      path = '/autoScalingConfigurations'
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      header_params[:'opc-retry-token'] = opts[:opc_retry_token] if opts[:opc_retry_token]
      # rubocop:enable Style/NegatedIf
      header_params[:'opc-retry-token'] ||= OCI::Retry.generate_opc_retry_token

      post_body = @api_client.object_to_http_body(create_auto_scaling_configuration_details)

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#create_auto_scaling_configuration') do
        @api_client.call_api(
          :POST,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'OCI::Autoscaling::Models::AutoScalingConfiguration'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Creates an autoscaling policy for the specified autoscaling configuration.
    #
    # You can create the following types of autoscaling policies:
    #
    # - **Schedule-based:** Autoscaling events take place at the specific times that you schedule.
    # - **Threshold-based:** An autoscaling action is triggered when a performance metric meets or exceeds a threshold.
    #
    # An autoscaling configuration can either have multiple schedule-based autoscaling policies, or one
    # threshold-based autoscaling policy.
    #
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [OCI::Autoscaling::Models::CreateAutoScalingPolicyDetails] create_auto_scaling_policy_details Creation details for an autoscaling policy.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :opc_request_id
    # @option opts [String] :opc_retry_token A token that uniquely identifies a request so it can be retried in case of a timeout or
    #   server error without risk of executing that same action again. Retry tokens expire after 24
    #   hours, but can be invalidated before then due to conflicting operations (for example, if a resource
    #   has been deleted and purged from the system, then a retry of the original creation request
    #   may be rejected).
    #
    # @return [Response] A Response object with data of type {OCI::Autoscaling::Models::AutoScalingPolicy AutoScalingPolicy}
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/create_auto_scaling_policy.rb.html) to see an example of how to use create_auto_scaling_policy API.
    def create_auto_scaling_policy(auto_scaling_configuration_id, create_auto_scaling_policy_details, opts = {})
      logger.debug 'Calling operation AutoScalingClient#create_auto_scaling_policy.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling create_auto_scaling_policy." if auto_scaling_configuration_id.nil?
      raise "Missing the required parameter 'create_auto_scaling_policy_details' when calling create_auto_scaling_policy." if create_auto_scaling_policy_details.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}/policies'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      header_params[:'opc-retry-token'] = opts[:opc_retry_token] if opts[:opc_retry_token]
      # rubocop:enable Style/NegatedIf
      header_params[:'opc-retry-token'] ||= OCI::Retry.generate_opc_retry_token

      post_body = @api_client.object_to_http_body(create_auto_scaling_policy_details)

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#create_auto_scaling_policy') do
        @api_client.call_api(
          :POST,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'OCI::Autoscaling::Models::AutoScalingPolicy'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Deletes an autoscaling configuration.
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :if_match For optimistic concurrency control. In the PUT or DELETE call for a resource, set the `if-match`
    #   parameter to the value of the etag from a previous GET or POST response for that resource.  The resource
    #   will be updated or deleted only if the etag you provide matches the resource's current etag value.
    #
    # @option opts [String] :opc_request_id
    # @return [Response] A Response object with data of type nil
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/delete_auto_scaling_configuration.rb.html) to see an example of how to use delete_auto_scaling_configuration API.
    def delete_auto_scaling_configuration(auto_scaling_configuration_id, opts = {})
      logger.debug 'Calling operation AutoScalingClient#delete_auto_scaling_configuration.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling delete_auto_scaling_configuration." if auto_scaling_configuration_id.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'if-match'] = opts[:if_match] if opts[:if_match]
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      # rubocop:enable Style/NegatedIf

      post_body = nil

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#delete_auto_scaling_configuration') do
        @api_client.call_api(
          :DELETE,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Deletes an autoscaling policy for the specified autoscaling configuration.
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [String] auto_scaling_policy_id The ID of the autoscaling policy.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :if_match For optimistic concurrency control. In the PUT or DELETE call for a resource, set the `if-match`
    #   parameter to the value of the etag from a previous GET or POST response for that resource.  The resource
    #   will be updated or deleted only if the etag you provide matches the resource's current etag value.
    #
    # @option opts [String] :opc_request_id
    # @return [Response] A Response object with data of type nil
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/delete_auto_scaling_policy.rb.html) to see an example of how to use delete_auto_scaling_policy API.
    def delete_auto_scaling_policy(auto_scaling_configuration_id, auto_scaling_policy_id, opts = {})
      logger.debug 'Calling operation AutoScalingClient#delete_auto_scaling_policy.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling delete_auto_scaling_policy." if auto_scaling_configuration_id.nil?
      raise "Missing the required parameter 'auto_scaling_policy_id' when calling delete_auto_scaling_policy." if auto_scaling_policy_id.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)
      raise "Parameter value for 'auto_scaling_policy_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_policy_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}/policies/{autoScalingPolicyId}'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s).sub('{autoScalingPolicyId}', auto_scaling_policy_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'if-match'] = opts[:if_match] if opts[:if_match]
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      # rubocop:enable Style/NegatedIf

      post_body = nil

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#delete_auto_scaling_policy') do
        @api_client.call_api(
          :DELETE,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Gets information about the specified autoscaling configuration.
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :opc_request_id
    # @return [Response] A Response object with data of type {OCI::Autoscaling::Models::AutoScalingConfiguration AutoScalingConfiguration}
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/get_auto_scaling_configuration.rb.html) to see an example of how to use get_auto_scaling_configuration API.
    def get_auto_scaling_configuration(auto_scaling_configuration_id, opts = {})
      logger.debug 'Calling operation AutoScalingClient#get_auto_scaling_configuration.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling get_auto_scaling_configuration." if auto_scaling_configuration_id.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      # rubocop:enable Style/NegatedIf

      post_body = nil

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#get_auto_scaling_configuration') do
        @api_client.call_api(
          :GET,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'OCI::Autoscaling::Models::AutoScalingConfiguration'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Gets information about the specified autoscaling policy in the specified autoscaling configuration.
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [String] auto_scaling_policy_id The ID of the autoscaling policy.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :opc_request_id
    # @return [Response] A Response object with data of type {OCI::Autoscaling::Models::AutoScalingPolicy AutoScalingPolicy}
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/get_auto_scaling_policy.rb.html) to see an example of how to use get_auto_scaling_policy API.
    def get_auto_scaling_policy(auto_scaling_configuration_id, auto_scaling_policy_id, opts = {})
      logger.debug 'Calling operation AutoScalingClient#get_auto_scaling_policy.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling get_auto_scaling_policy." if auto_scaling_configuration_id.nil?
      raise "Missing the required parameter 'auto_scaling_policy_id' when calling get_auto_scaling_policy." if auto_scaling_policy_id.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)
      raise "Parameter value for 'auto_scaling_policy_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_policy_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}/policies/{autoScalingPolicyId}'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s).sub('{autoScalingPolicyId}', auto_scaling_policy_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      # rubocop:enable Style/NegatedIf

      post_body = nil

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#get_auto_scaling_policy') do
        @api_client.call_api(
          :GET,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'OCI::Autoscaling::Models::AutoScalingPolicy'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Lists autoscaling configurations in the specifed compartment.
    #
    # @param [String] compartment_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment containing the
    #   resource. Use tenancyId to search in
    #   the root compartment.
    #
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :display_name A filter to return only resources that match the given display name exactly.
    #    (default to null)
    # @option opts [String] :opc_request_id
    # @option opts [Integer] :limit For list pagination. The maximum number of items to return in a paginated \"List\" call. For important details
    #   about how pagination works, see [List Pagination](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/usingapi.htm#nine).
    #    (default to 15)
    # @option opts [String] :page For list pagination. The value of the `opc-next-page` response header from the previous \"List\" call. For important
    #   details about how pagination works, see [List Pagination](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/usingapi.htm#nine).
    #    (default to null)
    # @option opts [String] :sort_by The field to sort by. You can provide one sort order (`sortOrder`). Default order for
    #   TIMECREATED is descending. Default order for DISPLAYNAME is ascending. The DISPLAYNAME
    #   sort order is case sensitive.
    #    (default to [DISPLAYNAME])
    #   Allowed values are: TIMECREATED, DISPLAYNAME
    # @option opts [String] :sort_order The sort order to use, either ascending (`ASC`) or descending (`DESC`). The DISPLAYNAME sort order
    #   is case sensitive.
    #    (default to [ASC])
    #   Allowed values are: ASC, DESC
    # @return [Response] A Response object with data of type Array<{OCI::Autoscaling::Models::AutoScalingConfigurationSummary AutoScalingConfigurationSummary}>
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/list_auto_scaling_configurations.rb.html) to see an example of how to use list_auto_scaling_configurations API.
    def list_auto_scaling_configurations(compartment_id, opts = {})
      logger.debug 'Calling operation AutoScalingClient#list_auto_scaling_configurations.' if logger

      raise "Missing the required parameter 'compartment_id' when calling list_auto_scaling_configurations." if compartment_id.nil?

      if opts[:sort_by] && !%w[TIMECREATED DISPLAYNAME].include?(opts[:sort_by])
        raise 'Invalid value for "sort_by", must be one of TIMECREATED, DISPLAYNAME.'
      end

      if opts[:sort_order] && !%w[ASC DESC].include?(opts[:sort_order])
        raise 'Invalid value for "sort_order", must be one of ASC, DESC.'
      end

      path = '/autoScalingConfigurations'
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}
      query_params[:compartmentId] = compartment_id
      query_params[:displayName] = opts[:display_name] if opts[:display_name]
      query_params[:limit] = opts[:limit] if opts[:limit]
      query_params[:page] = opts[:page] if opts[:page]
      query_params[:sortBy] = opts[:sort_by] if opts[:sort_by]
      query_params[:sortOrder] = opts[:sort_order] if opts[:sort_order]

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      # rubocop:enable Style/NegatedIf

      post_body = nil

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#list_auto_scaling_configurations') do
        @api_client.call_api(
          :GET,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'Array<OCI::Autoscaling::Models::AutoScalingConfigurationSummary>'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Lists the autoscaling policies in the specified autoscaling configuration.
    #
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :display_name A filter to return only resources that match the given display name exactly.
    #    (default to null)
    # @option opts [String] :opc_request_id
    # @option opts [Integer] :limit For list pagination. The maximum number of items to return in a paginated \"List\" call. For important details
    #   about how pagination works, see [List Pagination](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/usingapi.htm#nine).
    #    (default to 15)
    # @option opts [String] :page For list pagination. The value of the `opc-next-page` response header from the previous \"List\" call. For important
    #   details about how pagination works, see [List Pagination](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/usingapi.htm#nine).
    #    (default to null)
    # @option opts [String] :sort_by The field to sort by. You can provide one sort order (`sortOrder`). Default order for
    #   TIMECREATED is descending. Default order for DISPLAYNAME is ascending. The DISPLAYNAME
    #   sort order is case sensitive.
    #    (default to [DISPLAYNAME])
    #   Allowed values are: TIMECREATED, DISPLAYNAME
    # @option opts [String] :sort_order The sort order to use, either ascending (`ASC`) or descending (`DESC`). The DISPLAYNAME sort order
    #   is case sensitive.
    #    (default to [ASC])
    #   Allowed values are: ASC, DESC
    # @return [Response] A Response object with data of type Array<{OCI::Autoscaling::Models::AutoScalingPolicySummary AutoScalingPolicySummary}>
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/list_auto_scaling_policies.rb.html) to see an example of how to use list_auto_scaling_policies API.
    def list_auto_scaling_policies(auto_scaling_configuration_id, opts = {})
      logger.debug 'Calling operation AutoScalingClient#list_auto_scaling_policies.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling list_auto_scaling_policies." if auto_scaling_configuration_id.nil?

      if opts[:sort_by] && !%w[TIMECREATED DISPLAYNAME].include?(opts[:sort_by])
        raise 'Invalid value for "sort_by", must be one of TIMECREATED, DISPLAYNAME.'
      end

      if opts[:sort_order] && !%w[ASC DESC].include?(opts[:sort_order])
        raise 'Invalid value for "sort_order", must be one of ASC, DESC.'
      end
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}/policies'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}
      query_params[:displayName] = opts[:display_name] if opts[:display_name]
      query_params[:limit] = opts[:limit] if opts[:limit]
      query_params[:page] = opts[:page] if opts[:page]
      query_params[:sortBy] = opts[:sort_by] if opts[:sort_by]
      query_params[:sortOrder] = opts[:sort_order] if opts[:sort_order]

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      # rubocop:enable Style/NegatedIf

      post_body = nil

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#list_auto_scaling_policies') do
        @api_client.call_api(
          :GET,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'Array<OCI::Autoscaling::Models::AutoScalingPolicySummary>'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Updates certain fields on the specified autoscaling configuration, such as the name, the cooldown period,
    # and whether the autoscaling configuration is enabled.
    #
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [OCI::Autoscaling::Models::UpdateAutoScalingConfigurationDetails] update_auto_scaling_configuration_details Update details for an autoscaling configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :if_match For optimistic concurrency control. In the PUT or DELETE call for a resource, set the `if-match`
    #   parameter to the value of the etag from a previous GET or POST response for that resource.  The resource
    #   will be updated or deleted only if the etag you provide matches the resource's current etag value.
    #
    # @option opts [String] :opc_request_id
    # @option opts [String] :opc_retry_token A token that uniquely identifies a request so it can be retried in case of a timeout or
    #   server error without risk of executing that same action again. Retry tokens expire after 24
    #   hours, but can be invalidated before then due to conflicting operations (for example, if a resource
    #   has been deleted and purged from the system, then a retry of the original creation request
    #   may be rejected).
    #
    # @return [Response] A Response object with data of type {OCI::Autoscaling::Models::AutoScalingConfiguration AutoScalingConfiguration}
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/update_auto_scaling_configuration.rb.html) to see an example of how to use update_auto_scaling_configuration API.
    def update_auto_scaling_configuration(auto_scaling_configuration_id, update_auto_scaling_configuration_details, opts = {})
      logger.debug 'Calling operation AutoScalingClient#update_auto_scaling_configuration.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling update_auto_scaling_configuration." if auto_scaling_configuration_id.nil?
      raise "Missing the required parameter 'update_auto_scaling_configuration_details' when calling update_auto_scaling_configuration." if update_auto_scaling_configuration_details.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'if-match'] = opts[:if_match] if opts[:if_match]
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      header_params[:'opc-retry-token'] = opts[:opc_retry_token] if opts[:opc_retry_token]
      # rubocop:enable Style/NegatedIf
      header_params[:'opc-retry-token'] ||= OCI::Retry.generate_opc_retry_token

      post_body = @api_client.object_to_http_body(update_auto_scaling_configuration_details)

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#update_auto_scaling_configuration') do
        @api_client.call_api(
          :PUT,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'OCI::Autoscaling::Models::AutoScalingConfiguration'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines


    # Updates an autoscaling policy in the specified autoscaling configuration.
    # @param [String] auto_scaling_configuration_id The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the autoscaling configuration.
    # @param [String] auto_scaling_policy_id The ID of the autoscaling policy.
    # @param [OCI::Autoscaling::Models::UpdateAutoScalingPolicyDetails] update_auto_scaling_policy_details Update details for an autoscaling policy.
    # @param [Hash] opts the optional parameters
    # @option opts [OCI::Retry::RetryConfig] :retry_config The retry configuration to apply to this operation. If no key is provided then the service-level
    #   retry configuration defined by {#retry_config} will be used. If an explicit `nil` value is provided then the operation will not retry
    # @option opts [String] :if_match For optimistic concurrency control. In the PUT or DELETE call for a resource, set the `if-match`
    #   parameter to the value of the etag from a previous GET or POST response for that resource.  The resource
    #   will be updated or deleted only if the etag you provide matches the resource's current etag value.
    #
    # @option opts [String] :opc_request_id
    # @option opts [String] :opc_retry_token A token that uniquely identifies a request so it can be retried in case of a timeout or
    #   server error without risk of executing that same action again. Retry tokens expire after 24
    #   hours, but can be invalidated before then due to conflicting operations (for example, if a resource
    #   has been deleted and purged from the system, then a retry of the original creation request
    #   may be rejected).
    #
    # @return [Response] A Response object with data of type {OCI::Autoscaling::Models::AutoScalingPolicy AutoScalingPolicy}
    # @note Click [here](https://docs.cloud.oracle.com/en-us/iaas/tools/ruby-sdk-examples/latest/autoscaling/update_auto_scaling_policy.rb.html) to see an example of how to use update_auto_scaling_policy API.
    def update_auto_scaling_policy(auto_scaling_configuration_id, auto_scaling_policy_id, update_auto_scaling_policy_details, opts = {})
      logger.debug 'Calling operation AutoScalingClient#update_auto_scaling_policy.' if logger

      raise "Missing the required parameter 'auto_scaling_configuration_id' when calling update_auto_scaling_policy." if auto_scaling_configuration_id.nil?
      raise "Missing the required parameter 'auto_scaling_policy_id' when calling update_auto_scaling_policy." if auto_scaling_policy_id.nil?
      raise "Missing the required parameter 'update_auto_scaling_policy_details' when calling update_auto_scaling_policy." if update_auto_scaling_policy_details.nil?
      raise "Parameter value for 'auto_scaling_configuration_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_configuration_id)
      raise "Parameter value for 'auto_scaling_policy_id' must not be blank" if OCI::Internal::Util.blank_string?(auto_scaling_policy_id)

      path = '/autoScalingConfigurations/{autoScalingConfigurationId}/policies/{autoScalingPolicyId}'.sub('{autoScalingConfigurationId}', auto_scaling_configuration_id.to_s).sub('{autoScalingPolicyId}', auto_scaling_policy_id.to_s)
      operation_signing_strategy = :standard

      # rubocop:disable Style/NegatedIf
      # Query Params
      query_params = {}

      # Header Params
      header_params = {}
      header_params[:accept] = 'application/json'
      header_params[:'content-type'] = 'application/json'
      header_params[:'if-match'] = opts[:if_match] if opts[:if_match]
      header_params[:'opc-request-id'] = opts[:opc_request_id] if opts[:opc_request_id]
      header_params[:'opc-retry-token'] = opts[:opc_retry_token] if opts[:opc_retry_token]
      # rubocop:enable Style/NegatedIf
      header_params[:'opc-retry-token'] ||= OCI::Retry.generate_opc_retry_token

      post_body = @api_client.object_to_http_body(update_auto_scaling_policy_details)

      # rubocop:disable Metrics/BlockLength
      OCI::Retry.make_retrying_call(applicable_retry_config(opts), call_name: 'AutoScalingClient#update_auto_scaling_policy') do
        @api_client.call_api(
          :PUT,
          path,
          endpoint,
          header_params: header_params,
          query_params: query_params,
          operation_signing_strategy: operation_signing_strategy,
          body: post_body,
          return_type: 'OCI::Autoscaling::Models::AutoScalingPolicy'
        )
      end
      # rubocop:enable Metrics/BlockLength
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Style/IfUnlessModifier, Metrics/ParameterLists
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines

    private

    def applicable_retry_config(opts = {})
      return @retry_config unless opts.key?(:retry_config)

      opts[:retry_config]
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
