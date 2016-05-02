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
# Cookbook Name:: kafka-startup
# Recipe:: default
# This recipe automates the process of starting Kafka Services on Client node
#

# Start Zookeeper
include_recipe "kafka-startup::start-zookeeper"

# Start Kafka Server
include_recipe "kafka-startup::start-kafka-server"

# Create Kafka Topic if not exists
include_recipe "kafka-startup::create-kafka-topic"
