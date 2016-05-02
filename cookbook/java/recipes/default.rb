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
# Cookbook Name:: java
# Recipe:: default
#

# Remove any existing java
include_recipe "java::uninstall_java"

# Download the Java ROM from the Chef Master
include_recipe "java::download_java"

# Install Java on the node
include_recipe "java::install_java"

# Delete the Java RPM after installation
include_recipe "java::delete_rpm"
