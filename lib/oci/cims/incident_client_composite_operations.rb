# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # This class provides a wrapper around {OCI::Cims::IncidentClient} and offers convenience methods
  # for operations that would otherwise need to be chained together. For example, instead of performing an action
  # on a resource (e.g. launching an instance, creating a load balancer) and then using a waiter to wait for the resource
  # to enter a given state, you can call a single method in this class to accomplish the same functionality
  class Cims::IncidentClientCompositeOperations
    # The {OCI::Cims::IncidentClient} used to communicate with the service_client
    #
    # @return [OCI::Cims::IncidentClient]
    attr_reader :service_client

    # Initializes a new IncidentClientCompositeOperations
    #
    # @param [OCI::Cims::IncidentClient] service_client The client used to communicate with the service.
    #   Defaults to a new service client created via {OCI::Cims::IncidentClient#initialize} with no arguments
    def initialize(service_client = OCI::Cims::IncidentClient.new)
      @service_client = service_client
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
