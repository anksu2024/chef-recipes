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
# Cookbook Name:: fileremove
# Recipe:: default
#

# Providing the linux remove command after execute resource
execute "rm /root/dummy_file.txt" do
	# Do this only when some condition (here, Some file exits) is true
	only_if do
		File.exist?("/root/dummy_file.txt")
	end
end
