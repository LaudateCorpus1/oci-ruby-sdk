# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module DataLabelingServiceDataplane
    # Module containing models for requests made to, and responses received from,
    # OCI DataLabelingServiceDataplane services
    module Models
    end
  end
end

# Require models
require 'oci/data_labeling_service_dataplane/models/annotation'
require 'oci/data_labeling_service_dataplane/models/annotation_aggregation_dimensions'
require 'oci/data_labeling_service_dataplane/models/annotation_analytics_aggregation'
require 'oci/data_labeling_service_dataplane/models/annotation_analytics_aggregation_collection'
require 'oci/data_labeling_service_dataplane/models/annotation_collection'
require 'oci/data_labeling_service_dataplane/models/annotation_summary'
require 'oci/data_labeling_service_dataplane/models/bounding_polygon'
require 'oci/data_labeling_service_dataplane/models/create_annotation_details'
require 'oci/data_labeling_service_dataplane/models/create_object_storage_source_details'
require 'oci/data_labeling_service_dataplane/models/create_record_details'
require 'oci/data_labeling_service_dataplane/models/create_source_details'
require 'oci/data_labeling_service_dataplane/models/dataset'
require 'oci/data_labeling_service_dataplane/models/dataset_format_details'
require 'oci/data_labeling_service_dataplane/models/dataset_source_details'
require 'oci/data_labeling_service_dataplane/models/document_dataset_format_details'
require 'oci/data_labeling_service_dataplane/models/document_metadata'
require 'oci/data_labeling_service_dataplane/models/entity'
require 'oci/data_labeling_service_dataplane/models/generic_entity'
require 'oci/data_labeling_service_dataplane/models/image_dataset_format_details'
require 'oci/data_labeling_service_dataplane/models/image_metadata'
require 'oci/data_labeling_service_dataplane/models/image_object_selection_entity'
require 'oci/data_labeling_service_dataplane/models/initial_record_generation_configuration'
require 'oci/data_labeling_service_dataplane/models/label'
require 'oci/data_labeling_service_dataplane/models/label_name'
require 'oci/data_labeling_service_dataplane/models/label_set'
require 'oci/data_labeling_service_dataplane/models/normalized_vertex'
require 'oci/data_labeling_service_dataplane/models/object_storage_dataset_source_details'
require 'oci/data_labeling_service_dataplane/models/object_storage_source_details'
require 'oci/data_labeling_service_dataplane/models/record'
require 'oci/data_labeling_service_dataplane/models/record_aggregation_dimensions'
require 'oci/data_labeling_service_dataplane/models/record_analytics_aggregation'
require 'oci/data_labeling_service_dataplane/models/record_analytics_aggregation_collection'
require 'oci/data_labeling_service_dataplane/models/record_collection'
require 'oci/data_labeling_service_dataplane/models/record_metadata'
require 'oci/data_labeling_service_dataplane/models/record_summary'
require 'oci/data_labeling_service_dataplane/models/sort_orders'
require 'oci/data_labeling_service_dataplane/models/source_details'
require 'oci/data_labeling_service_dataplane/models/text_dataset_format_details'
require 'oci/data_labeling_service_dataplane/models/text_metadata'
require 'oci/data_labeling_service_dataplane/models/text_selection_entity'
require 'oci/data_labeling_service_dataplane/models/text_span'
require 'oci/data_labeling_service_dataplane/models/update_annotation_details'
require 'oci/data_labeling_service_dataplane/models/update_record_details'

# Require generated clients
require 'oci/data_labeling_service_dataplane/data_labeling_client'
require 'oci/data_labeling_service_dataplane/data_labeling_client_composite_operations'

# Require service utilities
require 'oci/data_labeling_service_dataplane/util'