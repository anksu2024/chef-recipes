# Copyright 2016 Ankit Sarraf
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# Cookbook Name:: dse
# Recipe:: default
#

# Create Datastax repository
include_recipe "dse::create_repo"

# Install Datastax repository
include_recipe "dse::install_dse"

# Remove the Datastax repository
include_recipe "dse::delete_repo"

# Edit Cassandra.yaml file
include_recipe "dse::configure_yaml"

# Update the Cluster topology
include_recipe "dse::configure_topology"

# Enable Solr and Spark
include_recipe "dse::dse_solr_spark"

# Start DSE
include_recipe "dse::start_dse"
