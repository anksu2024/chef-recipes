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

# Create the home directory for tomcat
include_recipe "tomcat::create_tomcat_home"

# Download tomcat from the online resource
include_recipe "tomcat::download_tomcat"

# Unpack the downloaded tar file
include_recipe "tomcat::unpack_tomcat"

