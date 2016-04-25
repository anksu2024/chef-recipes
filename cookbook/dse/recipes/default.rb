#
# Cookbook Name:: dse
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
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
