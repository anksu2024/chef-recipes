# Copyright 2016 Ankit Sarraf
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Cookbook Name:: tomcat
# Recipe:: default
#

# Create Home directory for Downloading Installer
include_recipe "tomcat::create_tomcat_home"

# Download Tomcat Installer
include_recipe "tomcat::download_tomcat"

# Unpack the contents of Downloaded Installer
include_recipe "tomcat::unpack_tomcat"

# Delete the Donwloaded Installer file once extracted
include_recipe "tomcat::delete_installer"

# Create Soft Link for the Catalina Home
include_recipe "tomcat::create_soft_link"

# Set $CATALINA_HOME environment variable
include_recipe "tomcat::set_catalina_home"

# Start Catalina Server
include_recipe "tomcat::start_catalina"
