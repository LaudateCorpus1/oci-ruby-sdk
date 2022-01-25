# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module AiAnomalyDetection
    # Module containing models for requests made to, and responses received from,
    # OCI AiAnomalyDetection services
    module Models
    end
  end
end

# Require models
require 'oci/ai_anomaly_detection/models/action_type'
require 'oci/ai_anomaly_detection/models/ai_private_endpoint'
require 'oci/ai_anomaly_detection/models/ai_private_endpoint_collection'
require 'oci/ai_anomaly_detection/models/ai_private_endpoint_summary'
require 'oci/ai_anomaly_detection/models/anomaly'
require 'oci/ai_anomaly_detection/models/anomaly_detect_result'
require 'oci/ai_anomaly_detection/models/change_ai_private_endpoint_compartment_details'
require 'oci/ai_anomaly_detection/models/change_data_asset_compartment_details'
require 'oci/ai_anomaly_detection/models/change_model_compartment_details'
require 'oci/ai_anomaly_detection/models/change_project_compartment_details'
require 'oci/ai_anomaly_detection/models/create_ai_private_endpoint_details'
require 'oci/ai_anomaly_detection/models/create_data_asset_details'
require 'oci/ai_anomaly_detection/models/create_model_details'
require 'oci/ai_anomaly_detection/models/create_project_details'
require 'oci/ai_anomaly_detection/models/data_asset'
require 'oci/ai_anomaly_detection/models/data_asset_collection'
require 'oci/ai_anomaly_detection/models/data_asset_summary'
require 'oci/ai_anomaly_detection/models/data_item'
require 'oci/ai_anomaly_detection/models/data_source_details'
require 'oci/ai_anomaly_detection/models/data_source_details_atp'
require 'oci/ai_anomaly_detection/models/data_source_details_influx'
require 'oci/ai_anomaly_detection/models/data_source_details_object_storage'
require 'oci/ai_anomaly_detection/models/data_source_type'
require 'oci/ai_anomaly_detection/models/detect_anomalies_details'
require 'oci/ai_anomaly_detection/models/detection_result_item'
require 'oci/ai_anomaly_detection/models/embedded_detect_anomalies_request'
require 'oci/ai_anomaly_detection/models/influx_details'
require 'oci/ai_anomaly_detection/models/influx_details_v1v8'
require 'oci/ai_anomaly_detection/models/influx_details_v2v0'
require 'oci/ai_anomaly_detection/models/influx_version'
require 'oci/ai_anomaly_detection/models/inline_detect_anomalies_request'
require 'oci/ai_anomaly_detection/models/model'
require 'oci/ai_anomaly_detection/models/model_collection'
require 'oci/ai_anomaly_detection/models/model_summary'
require 'oci/ai_anomaly_detection/models/model_training_details'
require 'oci/ai_anomaly_detection/models/model_training_results'
require 'oci/ai_anomaly_detection/models/operation_status'
require 'oci/ai_anomaly_detection/models/operation_type'
require 'oci/ai_anomaly_detection/models/per_signal_details'
require 'oci/ai_anomaly_detection/models/project'
require 'oci/ai_anomaly_detection/models/project_collection'
require 'oci/ai_anomaly_detection/models/project_summary'
require 'oci/ai_anomaly_detection/models/row_reduction_details'
require 'oci/ai_anomaly_detection/models/sort_order'
require 'oci/ai_anomaly_detection/models/update_ai_private_endpoint_details'
require 'oci/ai_anomaly_detection/models/update_data_asset_details'
require 'oci/ai_anomaly_detection/models/update_model_details'
require 'oci/ai_anomaly_detection/models/update_project_details'
require 'oci/ai_anomaly_detection/models/work_request'
require 'oci/ai_anomaly_detection/models/work_request_error'
require 'oci/ai_anomaly_detection/models/work_request_error_collection'
require 'oci/ai_anomaly_detection/models/work_request_log_entry'
require 'oci/ai_anomaly_detection/models/work_request_log_entry_collection'
require 'oci/ai_anomaly_detection/models/work_request_resource'
require 'oci/ai_anomaly_detection/models/work_request_summary'
require 'oci/ai_anomaly_detection/models/work_request_summary_collection'

# Require generated clients
require 'oci/ai_anomaly_detection/anomaly_detection_client'
require 'oci/ai_anomaly_detection/anomaly_detection_client_composite_operations'

# Require service utilities
require 'oci/ai_anomaly_detection/util'
