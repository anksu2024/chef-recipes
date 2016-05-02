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
# Cookbook Name:: kafka
# Recipe:: default
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
