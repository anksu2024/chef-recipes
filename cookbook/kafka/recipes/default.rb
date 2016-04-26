#
# Cookbook Name:: kafka
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Create Kafka Home
include_recipe "kafka::create_kafka_home"

# Download Kafka Installer to client
include_recipe "kafka::download_kafka_installer"

# Install Kafka
include_recipe "kafka::install_kafka"

# Remove the tgz file for kafka once extraction complete
include_recipe "kafka::remove_kafka_installer"

# Set Kafka Home
include_recipe "kafka::set_kafka_home"
