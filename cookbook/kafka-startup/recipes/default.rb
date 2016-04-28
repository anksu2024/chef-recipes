#
# Cookbook Name:: kafka-startup
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# This recipe automates the process of starting Kafka Services on Client node

# Start Zookeeper
include_recipe "kafka-startup::start-zookeeper"

# Start Kafka Server
include_recipe "kafka-startup::start-kafka-server"

# Create Kafka Topic if not exists
include_recipe "kafka-startup::create-kafka-topic"
