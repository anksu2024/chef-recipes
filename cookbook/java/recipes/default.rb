#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Remove any existing java
include_recipe "java::uninstall_java"

# Download the Java ROM from the Chef Master
include_recipe "java::download_java"

# Install Java on the node
include_recipe "java::install_java"

# Delete the Java RPM after installation
include_recipe "java::delete_rpm"
